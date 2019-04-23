<%-- 
    Document   : datainsertion
    Created on : Feb 14, 2019, 4:41:12 PM
    Author     : admin
--%>

<%@page import="java.util.Base64"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mysql.fabric.xmlrpc.base.Data"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Spare Project</title>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Spare Project</title>
             <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <style>
          .login-container{
    position: relative;
    width: 300px;
    margin: 80px auto;
    padding: 20px 40px 40px;
    text-align: center;
    background: #fff;
    border: 1px solid #ccc;
}

   body{
                 background-image: url("images/sky.jpg");
                 background-size: cover;
                 background-attachment: fixed;
                 
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

.box{
     width: 220px;
  padding: 10px;
  border: 5px solid gray;
  margin: 0;
}
* {
  box-sizing: border-box;
}

#myInput {
  
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 50%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}


.container{
    position: relative;
    top: 140px;
    left: 75px;
}

.clsScroll
{
              
         overflow: scroll;
}
.btn{
    position: relative;
    left:  850px;
}

    </style>
   
    <body>      
      <nav class="navbar navbar-fixed-top navbar-inverse">
 
  
        <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand"  style="color:whitesmoke" href="#">NOKIA</a>
    </div>
    
    <ul class="nav navbar-nav navbar-right">
      
      <li><a  style="color:whitesmoke" href="index.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div> 
</nav>
    <center>
        <br>
        <br>
        <br>
        <h2>Item List</h2>
</center>
        <h2>
         
     </h2>
  
             <div class="container">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                          <span class="glyphicon glyphicon-th-list">
                          </span> Item List <button id="btn" type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-download-alt"></span> Download
        </button>
                        </h4>
                    </div>
                    
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">  
                                    <div class="clsScroll">
                                <table id="customers" class="table table-bordered" >
                <tr> 
                        
                    <th>
                        NSS refrence code
                    </th>
                    <th>
                    Generate Request 
                    </th> 
                    <th>
                       Stock Base
                    </th>
                    <th>
                        HW Received Date
                    </th>
                    <th>
                        MRN No
                    </th>
                     <th>
                       Receiver Name 
                    </th>
                    <th>
                        Catogery
                    </th>
                    <th>
                        SAP Vendor ID
                    </th>
                    <th>
                       Product Family
                    </th>
                    
                    <th>
                       Basic Data Text/Long Description
                    </th>
                    <th>
                      UoM(M/EA) 
                    </th>
                    <th>
                      Part Code/Version
                    </th>
                     <th>
                       S/L No
                    </th>
                    <th>
                       Location ID
                    </th>
                    <th>
                     Cluster
                    </th>
                    <th>
                     HW/SISO
                    </th>
                    <th>
                     OK/Faulty
                    </th>
                    <th>
                     Material Used for
                    </th>
                    <th>
                    MMS Raised
                    </th>
                    <th>
                     Picked up from Cluster 
                    </th>
                     <th>
                     Images
                    </th>                   
                </tr>           
            <%
                String Host = "jdbc:mysql://localhost:3306/sparetrack";
                Connection connection = null;
                Statement statement = null;
                ResultSet rs1 = null;
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(Host, "root", "baisla");
                statement = connection.createStatement();
                String Data = "select * from clustin";
                rs1 = statement.executeQuery(Data);
                while (rs1.next()) {
                     Blob image = rs1.getBlob("Images");
    byte[ ] imgData = null ; 
    imgData = image.getBytes(1,(int)image.length());
 String imgDataBase64=new String(Base64.getEncoder().encode(imgData));
%>
        
<tr>              
                 <td>
                      <%=rs1.getString(8)%>
                    </td>
                     <td>
                      <a href='maineng.jsp?u=<%=rs1.getString(8)%>' class="glyphicon glyphicon-edit"></a>
                    </td>  
                     <td>
                      <%=rs1.getString(1)%>
                    </td>
                    <td>
                      <%=rs1.getString(2)%>
                    </td>
                    <td>
                      <%=rs1.getString(3)%>
                    </td>
                    <td>
                      <%=rs1.getString(4)%>
                    </td>
                    <td>
                      <%=rs1.getString(5)%>
                    </td>
                    <td>
                      <%=rs1.getString(6)%>
                    </td>
                    <td>
                      <%=rs1.getString(7)%>
                    </td>
                   
                    <td>
                      <%=rs1.getString(9)%>
                    </td>
                    <td>
                      <%=rs1.getString(10)%>
                    </td>
                    <td>
                      <%=rs1.getString(11)%>
                    </td>
                    <td>
                      <%=rs1.getString(12)%>
                    </td>
                    <td>
                      <%=rs1.getString(13)%>
                    </td>
                    <td>
                      <%=rs1.getString(14)%>
                    </td>
                     <td>
                      <%=rs1.getString(15)%>
                    </td>
                    <td>
                      <%=rs1.getString(16)%>
                    </td>
                    <td>
                      <%=rs1.getString(17)%>
                    </td>
                    <td>
                      <%=rs1.getString(18)%>
                    </td>
                    <td>
                      <%=rs1.getString(19)%>
                    </td>
                   <td>
                      <img src="data:image;base64,<%= imgDataBase64 %>" alt="images Here" width="130px" height="90px"/>
                    </td>
                </tr>

        <%
}
            %>
             </table>
        </div>
                                </div></div></div></div>
             
        </div>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdn.rawgit.com/rainabba/jquery-table2excel/1.1.0/dist/jquery.table2excel.min.js"></script>
        <script type="text/javascript">
            $('#btn').click(function(){
                $('.table').table2excel({
                    type:"xls",
                    
                    
                    filename: "tracker report"
                    
                });
                
            });
            
        </script>
          
     

        
    </body>
</html>
