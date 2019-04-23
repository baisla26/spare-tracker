<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
    <%! String userdbName;
String userdbPsw;
String dbUsertype;
String dblocation;
%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/nokia_master";
String user = "root";
String dbpsw = "baisla";

String sql = "select * from datab where name=? and password=? and usertype=? and location=?";

String name = request.getParameter("username");
String password = request.getParameter("password");
String usertype = request.getParameter("usertype");
String location = request.getParameter("location");
System.out.println(name + ", " + password + ", " + usertype + "," + location);
if(name != null && !name.equals("") && password != null && !password.equals("") && !usertype.equals("select") && !location.equals("select"))
{
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, password);
ps.setString(3, usertype);
ps.setString(4, location);
rs = ps.executeQuery();
if(rs.next())
{ 
userdbName = rs.getString("name");
userdbPsw = rs.getString("password");
dbUsertype = rs.getString("usertype");
dblocation = rs.getString("location");
if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Cluster Lead")&& dblocation.equals("Amravati"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype); 
session.setAttribute("location", dblocation);
response.sendRedirect("welcome.jsp"); 
} 

else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Cluster Lead")&& dblocation.equals("Aurangabad"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Cluster Lead")&& dblocation.equals("Chandrapur"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Cluster Lead")&& dblocation.equals("Chiplun"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Cluster Lead")&& dblocation.equals("Goa"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Circle Lead")&& dblocation.equals("Maharashtra"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("welcome.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Cluster Lead")&& dblocation.equals("Jalgaon"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Cluster Lead")&& dblocation.equals("Nagpur"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Cluster Lead")&& dblocation.equals("Nanded"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Cluster Lead")&& dblocation.equals("Nashik"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Cluster Lead")&& dblocation.equals("Pune 1"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}

else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Cluster Lead") && dblocation.equals("Pune 2"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype); 
session.setAttribute("location", dblocation);
response.sendRedirect("eng.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Cluster Lead") && dblocation.equals("Pune 3"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype); 
session.setAttribute("location", dblocation);
response.sendRedirect("rec.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Cluster Lead") && dblocation.equals("Solapur"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype); 
session.setAttribute("location", dblocation);
response.sendRedirect("rec.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Cluster Lead") && dblocation.equals("Vasai"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype); 
session.setAttribute("location", dblocation);
response.sendRedirect("rec.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Engineer")&& dblocation.equals("Amravati"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype); 
session.setAttribute("location", dblocation);
response.sendRedirect("welcome.jsp"); 
} 

else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Engineer")&& dblocation.equals("Aurangabad"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Engineer")&& dblocation.equals("Chandrapur"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Engineer")&& dblocation.equals("Chiplun"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Engineer")&& dblocation.equals("Goa"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("Enggoa.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Engineer")&& dblocation.equals("Kolhapur"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Engineer")&& dblocation.equals("Jalgaon"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Engineer")&& dblocation.equals("Nagpur"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Engineer")&& dblocation.equals("Nanded"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Engineer")&& dblocation.equals("Nashik"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Engineer")&& dblocation.equals("Pune 1"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("Engpune.jsp"); 
}

else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Engineer") && dblocation.equals("Pune 2"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype); 
session.setAttribute("location", dblocation);
response.sendRedirect("eng.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Engineer") && dblocation.equals("Pune 3"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype); 
session.setAttribute("location", dblocation);
response.sendRedirect("rec.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Engineer") && dblocation.equals("Solapur"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype); 
session.setAttribute("location", dblocation);
response.sendRedirect("rec.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Engineer") && dblocation.equals("Vasai"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype); 
session.setAttribute("location", dblocation);
response.sendRedirect("rec.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Receiver")&& dblocation.equals("Amravati"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype); 
session.setAttribute("location", dblocation);
response.sendRedirect("welcome.jsp"); 
} 

else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Receiver")&& dblocation.equals("Aurangabad"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Receiver")&& dblocation.equals("Chandrapur"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Receiver")&& dblocation.equals("Chiplun"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Receiver")&& dblocation.equals("Goa"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Receiver")&& dblocation.equals("Kolhapur"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Receiver")&& dblocation.equals("Jalgaon"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Receiver")&& dblocation.equals("Nagpur"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Receiver")&& dblocation.equals("Nanded"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Receiver")&& dblocation.equals("Nashik"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Receiver")&& dblocation.equals("Pune 1"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype);
session.setAttribute("location", dblocation);
response.sendRedirect("user.jsp"); 
}

else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Receiver") && dblocation.equals("Pune 2"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype); 
session.setAttribute("location", dblocation);
response.sendRedirect("eng.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Receiver") && dblocation.equals("Pune 3"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype); 
session.setAttribute("location", dblocation);
response.sendRedirect("rec.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Receiver") && dblocation.equals("Solapur"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype); 
session.setAttribute("location", dblocation);
response.sendRedirect("rec.jsp"); 
}
else if(name.equals(userdbName) && password.equals(userdbPsw) && dbUsertype.equals("Receiver") && dblocation.equals("Vasai"))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype); 
session.setAttribute("location", dblocation);
response.sendRedirect("rec.jsp"); 
}
}
else
response.sendRedirect("error.jsp");
rs.close();
ps.close(); 
}
catch(SQLException sqe)
{
out.println(sqe);
} 
}
else
{
%>
<center><p style="color:red">Error In Login</p></center>
<% 
getServletContext().getRequestDispatcher("/index.jsp").include(request, response);
}
%>
</body>
</html>

