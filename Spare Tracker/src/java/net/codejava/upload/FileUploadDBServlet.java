package net.codejava.upload;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)	// upload file's size up to 16MB
public class FileUploadDBServlet extends HttpServlet {
	
	// database connection settings
	private String dbURL = "jdbc:mysql://localhost:3306/sparetrack";
	private String dbUser = "root";
	private String dbPass = "baisla";
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// gets values of text fields
		String b = request.getParameter("sb");
		String c = request.getParameter("hw");
                String d = request.getParameter("mrn");
		String e = request.getParameter("rn");
                String f = request.getParameter("cat");
		String g = request.getParameter("sap");
                String h = request.getParameter("pf");
		String i = request.getParameter("nmc");
                String j = request.getParameter("bd");
		String k = request.getParameter("uom");
                String l = request.getParameter("pc");
		String m = request.getParameter("sln");
                String n = request.getParameter("lid");
		String o = request.getParameter("cl");
                String p = request.getParameter("si");
		String q = request.getParameter("ok");
                String r = request.getParameter("mu");
		String s = request.getParameter("mr");
                String t = request.getParameter("pi");
		String u = request.getParameter("photo");
                
                
		
		InputStream inputStream = null;
		
	
		Part filePart = request.getPart("photo");
		if (filePart != null) {
			// prints out some information for debugging
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());
			
			// obtains input stream of the upload file
			inputStream = filePart.getInputStream();
		}
		
		Connection conn = null;
		String message = null;
		
		try {
			// connects to the database
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

			// constructs SQL statement
			String sql = "INSERT INTO `clustin`(`Stock`,`HW`,`MRN`,`Receiver`,`Catogery`,`SAP`,`Product`,`NSS`,`Basic`,`UoM`,`Part`,`Serial`,`Location`,`Cluster`,`HWsiso`,`OKfaulty`,`Material`,`MMSRaised`,`Picked`,`Images`) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			String sql2 = "INSERT IGNORE INTO `sptrack`(`Stock`,`HW`,`MRN`,`Receiver`,`Catogery`,`SAP`,`Product`,`NSS`,`Basic`,`UoM`,`Part`,`Serial`,`Location`,`Cluster`,`HWsiso`,`OKfaulty`,`Material`,`MMSRaised`,`Picked`,`Images`)  SELECT * FROM `clustin`";
                        PreparedStatement statement = conn.prepareStatement(sql);
                        PreparedStatement ps2=conn.prepareStatement(sql2);
			statement.setString(1,b);
			statement.setString(2,c);
                        statement.setString(3,d);
			statement.setString(4,e);
                        statement.setString(5,f);
			statement.setString(6,g);
                        statement.setString(7,h);
			statement.setString(8,i);
                        statement.setString(9,j);
			statement.setString(10,k);
                        statement.setString(11,l);
			statement.setString(12,m);
                        statement.setString(13,n);
			statement.setString(14,o);
                        statement.setString(15,p);
			statement.setString(16,q);
                        statement.setString(17,r);
			statement.setString(18,s);
                        statement.setString(19,t);
			statement.setString(20,u);
                        
			
			if (inputStream != null) {
				
				statement.setBlob(20, inputStream);
			}

		
			int row = statement.executeUpdate();
                        int row2 = ps2.executeUpdate();
			if (row>0 && row2>0) {
				message = "Item Inserted";
			}
		} catch (SQLException ex) {
			message = "ERROR: " + ex.getMessage();
			ex.printStackTrace();
		} finally {
			if (conn != null) {
				// closes the database connection
				try {
					conn.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
			// sets the message in request scope
			request.setAttribute("Message", message);
			
			// forwards to the message page
			getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
		}
	}
}