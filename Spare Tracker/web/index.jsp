<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Spare Project</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/nokia_master";
String user = "root";
String password = "baisla";

String sql = "select usertype from datab";

try {
Class.forName(driverName);
con = DriverManager.getConnection(url, user, password);
ps = con.prepareStatement(sql);
rs = ps.executeQuery(); 
%>
        <style>
              body{
                 background-image: url("images/sky.jpg");
                 background-size: cover;
                 background-attachment: fixed;
                 
             }
            
            
            .login-container{
    position: relative;
    width: 300px;
    margin: 80px auto;
    padding: 20px 40px 40px;
    text-align: center;
    background: #fff;
    border: 1px solid #ccc;
}

#output{
    position: absolute;
    width: 300px;
    top: -75px;
    left: 0;
    color: #fff;
}

#output.alert-success{
    background: rgb(25, 204, 25);
}

#output.alert-danger{
    background: rgb(228, 105, 105);
}

.flex-container {
    display: flex;
    justify-content: space-between;
}

.flex-item { 
}
.login-container::before,.login-container::after{
    content: "";
    position: absolute;
    width: 100%;height: 100%;
    top: 3.5px;left: 0;
    background: #fff;
    z-index: -1;
    -webkit-transform: rotateZ(4deg);
    -moz-transform: rotateZ(4deg);
    -ms-transform: rotateZ(4deg);
    border: 1px solid #ccc;

}

.login-container::after{
    top: 5px;
    z-index: -2;
    -webkit-transform: rotateZ(-2deg);
     -moz-transform: rotateZ(-2deg);
      -ms-transform: rotateZ(-2deg);

}

.avatar{
    width: 100px;height: 100px;
    margin: 10px auto 30px;
    border-radius: 100%;
    border: 2px solid #aaa;
    background-size: cover;
}

.form-box input{
    width: 100%;
    padding: 10px;
    text-align: center;
    height:40px;
    border: 1px solid #ccc;;
    background: #fafafa;
    transition:0.2s ease-in-out;

}

.form-box input:focus{
    outline: 0;
    background: #eee;
}

.form-box input[type="text"]{
    border-radius: 5px 5px 0 0;
    text-transform: lowercase;
}

.form-box input[type="password"]{
    border-radius: 0 0 5px 5px;
    border-top: 0;
}

.form-box button.login{
    margin-top:15px;
    padding: 10px 20px;
}
.navbar{
    background-color: 	navy;
}
.navbar-brand{
    font-weight: bold;
    font-size: 200%;
    color: #006666;
}

        </style>

        <nav class="navbar navbar-default  navbar-doublerow navbar-trans navbar-fixed-top">
            <div class="container">
       
        
                <div class="navbar-brand " href="index.jsp" style="color:whitesmoke">NOKIA</div>
       
        </nav>     
           

 <div class="container">
	<div class="login-container">
            <div id="output"></div>
            <div class="avatar"></div>
            <div class="form-box">
                

<form method="post" action="login.jsp">
    

<table border="1" align="center">
<tr>

    <input class="form-control" type="text" name="username" placeholder="EmployeeID" />
</tr>
<tr>

    <input class="form-control" type="password" name="password" placeholder="Password" />
</tr>
<tr>
   <select class="form-control" name="usertype">
<option value="select">select</option>
                   <option>Circle Lead</option>
                   <option>Cluster Lead</option>
                   <option>Engineer</option>
                   <option>Receiver</option>
                        </select>            
<select class="form-control" name="location">
                   <option value="select">select</option>
                   <option>Amravati</option>
                   <option>Aurangabad</option>
                   <option>Chandrapur</option>
                   <option>Chiplun</option>
                   <option>Goa</option>
                   <option>Kolhapur</option>
                   <option>Jalgaon</option>
                   <option>Nagpur</option>
                   <option>Maharashtra</option>
                   <option>Nashik</option>
                   <option>Pune 1</option>
                   <option>Pune 2</option>
                   <option>Pune 3</option>
                   <option>Solapur</option>
                   <option>Vasai</option>
                </select>
<% 
}

catch(SQLException sqe)
{
out.println("home"+sqe);
}
%>
          <button class="btn btn-info btn-block login" type="submit">Login</button>
                </form>                        
            </div>
        </div>
      </div>
    </body>
</html>
