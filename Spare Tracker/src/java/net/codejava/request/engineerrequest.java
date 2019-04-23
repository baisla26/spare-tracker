package net.codejava.request;



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


@WebServlet("/engineerrequest")
public class engineerrequest extends HttpServlet {

   	private String dbURL = "jdbc:mysql://localhost:3306/sparetrack";
	private String dbUser = "root";
	private String dbPass = "baisla";
        
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     String d=request.getParameter("cmp"); 
     String b=request.getParameter("rn");
     String c=request.getParameter("rs");
     String e=request.getParameter("clt");
     String f=request.getParameter("sn");
     String h=request.getParameter("mcd");
     String i=request.getParameter("ru");
     String j=request.getParameter("nssre");
     String k=request.getParameter("bas");        
     String l=request.getParameter("sid");        
     String m=request.getParameter("evo");
     String n=request.getParameter("hwf");
     String o=request.getParameter("ctg");              
     String p=request.getParameter("der");
     String q=request.getParameter("rma");   
     String s=request.getParameter("ria");
     String t=request.getParameter("slno");
     String z=request.getParameter("flt");
		
		
	
                Connection conn = null;
		String message = null;
		
		try {
			
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

			
			String sql = "INSERT INTO `engin`(`NSS`,`Requester`,`Reason`,`Cluster`,`Sitename`,`Matcode`,`Faultyreplcaed`,`NSSfaulty`,`BasicData`,`siteid`,`Evoloc`,`HWfaulttaken`,`ctgno`,`detailedreason`,`rmamso`,`remarks`,`serialno`,`faultykept`) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1,d);
			statement.setString(2,b);
                        statement.setString(3,c);
			statement.setString(4,e);
                        statement.setString(5,f);		
                        statement.setString(6,h);
			statement.setString(7,i);
                        statement.setString(8,j);
			statement.setString(9,k);
                        statement.setString(10,l);
			statement.setString(11,m);
                        statement.setString(12,n);
			statement.setString(13,o);
                        statement.setString(14,p);
			statement.setString(15,q);                   
			statement.setString(16,s);
                        statement.setString(17,t);
			statement.setString(18,z);
                        
			

			// sends the statement to the database server
			int row = statement.executeUpdate();
			if (row > 0) {
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
	
