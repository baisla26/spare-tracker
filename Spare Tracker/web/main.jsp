<%-- 
    Document   : datainsertion
    Created on : Feb 14, 2019, 4:41:12 PM
    Author     : admin
--%>

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

#customers th {
  background-color: #839682;
  color: white;
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
        <h2>Tracker Report</h2>
</center>
        <h2>
         
     </h2>
  
             <div class="container">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                          <span class="glyphicon glyphicon-th-list">
                          </span> Tracker Report <button id="btn" type="button" class="btn btn-default btn-sm">
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
                        ID
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
                        NSS/Material  Code
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
                    Requester Name 
                    </th>
                    <th>
                     Reason
                    </th>
                     <th>
                    Approver Name
                    </th>
                    <th>
                    NSS Ref No- (Uninstalled from Spare Location )
                    </th>
                    <th>
                    Cluster
                    </th>
                    <th>
                    Site Name
                    </th>
                    <th>
                    Site ID
                    </th>
                    <th>
                    EVO Location
                    </th>
                    <th>
                      Spare qty  Available in Cluster 
                    </th>
                    <th>
                     HW fault taken
                    </th>
                       <th>
                     CTG No
                    </th>
                    <th>
                    Reason
                    </th>
                    <th>
                     Detailed Reason
                    </th>
                    <th>
                     RMA/MSO (If Faulty)
                    </th>
                     <th>
                        Incident Report
                    </th>
                    <th>
                       Remarks if any
                    </th>
                    <th>
                      NSS Ref No
                    </th>
                    <th>
                     Serial No
                    </th>
                     <th>
                     NSS/ Material  Code
                    </th>
                    <th>
                     Basic Data Text /Long Description
                    </th>
                    <th>
                     Faulty / repalced unit kept at location ID ( EVO ID )
                    </th>
                    <th>
                     Faulty / repalced unit kept at location Name
                    </th>
                    <th>
                     NSS Ref No Faulty Unit
                    </th>
                    <th>
                    MMS Raised
                    </th>
                    <th>
                     Sent to VF for Approval
                    </th>
                       <th>
                      Approval date
                    </th>
                       <th>
                     Pick up Document received 
                    </th>
                    <th>
                     Pick up given to Transport agency
                    </th>
                    <th>
                     Pick Up ref No.
                    </th>
                    <th>
                     Picked up from Cluster 
                    </th>
                     <th>
                        Snaps to be uploaded
                    </th>
                    <th>
                     Delivered at WH
                    </th>
                    <th>
                    GRN Done Date
                    </th>
                    <th>
                     GRN No
                    </th>
                     <th>
                     GRN receieved date
                    </th>
                    <th>
                    Pick Up Request for HWS to Transport agency
                    </th>
                    <th>
                    Pick Up ref No.
                    </th>
                    <th>
                    Sent to HWS
                    </th>
                    <th>
                    Received at HWS  with status 
                    </th>
                    <th>
                    Dispatched from HWS with status RNP/OK/
                    </th>
                    <th>
                    Delivered at Circle WH 
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
                String Data = "select * from sptrack";
                rs1 = statement.executeQuery(Data);
                while (rs1.next()) {
                    
%>
        
<tr>
                    <td>
                      <%=rs1.getString("ID")%>
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
                      <%=rs1.getString(8)%>
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
                      <%=rs1.getString(20)%>
                    </td>
                    <td>
                      <%=rs1.getString(21)%>
                    </td>
                    <td>
                      <%=rs1.getString(22)%>
                    </td>
                    <td>
                      <%=rs1.getString(23)%>
                    </td>
                    <td>
                      <%=rs1.getString(24)%>
                    </td>
                    <td>
                      <%=rs1.getString(25)%>
                    </td>
                    <td>
                      <%=rs1.getString(26)%>
                    </td>
                    <td>
                      <%=rs1.getString(27)%>
                    </td>
                    <td>
                      <%=rs1.getString(28)%>
                    </td>
                    <td>
                      <%=rs1.getString(29)%>
                    </td>
                     <td>
                      <%=rs1.getString(30)%>
                    </td>
                    <td>
                      <%=rs1.getString(31)%>
                    </td>
                    <td>
                      <%=rs1.getString(32)%>
                    </td>
                    <td>
                      <%=rs1.getString(33)%>
                    </td>
                    <td>
                      <%=rs1.getString(34)%>
                    </td>
                    <td>
                      <%=rs1.getString(35)%>
                    </td>
                    <td>
                      <%=rs1.getString(36)%>
                    </td>
                    <td>
                      <%=rs1.getString(37)%>
                    </td>
                    <td>
                      <%=rs1.getString(38)%>
                    </td>
                    <td>
                      <%=rs1.getString(39)%>
                    </td>
                    <td>
                      <%=rs1.getString(40)%>
                    </td>
                    <td>
                      <%=rs1.getString(41)%>
                    </td>
                    <td>
                      <%=rs1.getString(42)%>
                    </td>
                    <td>
                      <%=rs1.getString(43)%>
                    </td>
                     <td>
                      <%=rs1.getString(44)%>
                    </td>
                    <td>
                      <%=rs1.getString(45)%>
                    </td>
                    <td>
                      <%=rs1.getString(46)%>
                    </td>
                    <td>
                      <%=rs1.getString(47)%>
                    </td>
                    <td>
                      <%=rs1.getString(48)%>
                    </td>
                    <td>
                      <%=rs1.getString(49)%>
                    </td>
                    <td>
                      <%=rs1.getString(50)%>
                    </td>
                    <td>
                      <%=rs1.getString(51)%>
                    </td>
                    <td>
                      <%=rs1.getString(52)%>
                    </td>
                    <td>
                      <%=rs1.getString(53)%>
                    </td>
                    <td>
                      <%=rs1.getString(54)%>
                    </td>
                    <td>
                      <%=rs1.getString(55)%>
                    </td>
                    <td>
                      <%=rs1.getString(56)%>
                    </td>
                    <td>
                      <%=rs1.getString(57)%>
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
