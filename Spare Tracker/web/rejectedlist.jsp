<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Spare Project</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
       bar-brand{
             font-weight: bold;
             font-size: 200%;
             color: #006666;
             }
             
             body{
                 background-image: url("images/sky.jpg");
                 background-size: cover;
                 background-attachment: fixed;
                 
             }
             a{
  text-decoration: none;
  color: #232323;
  
  transition: color 0.3s ease;
}

a:hover
{
  color: skyblue;
}

#menuToggle
{
  display: block;
  position: relative;
  top: 50px;
  left: 50px;
  
  z-index: 1;
  
  -webkit-user-select: none;
  user-select: none;
}

#menuToggle input
{
  display: block;
  width: 40px;
  height: 32px;
  position: absolute;
  top: -7px;
  left: -5px;
  
  cursor: pointer;
  
  opacity: 0; 
  z-index: 2;
  
  -webkit-touch-callout: none;
}


#menuToggle span
{
  display: block;
  width: 33px;
  height: 4px;
  margin-bottom: 5px;
  position: relative;
  
  background: black;
  border-radius: 3px;
  
  z-index: 1;
  
  transform-origin: 4px 0px;
  
  transition: transform 0.5s cubic-bezier(0.77,0.2,0.05,1.0),
              background 0.5s cubic-bezier(0.77,0.2,0.05,1.0),
              opacity 0.55s ease;
}

#menuToggle span:first-child
{
  transform-origin: 0% 0%;
}

#menuToggle span:nth-last-child(2)
{
  transform-origin: 0% 100%;
}

#menuToggle input:checked ~ span
{
  opacity: 1;
  transform: rotate(45deg) translate(-2px, -1px);
  background: #232323;
}

#menuToggle input:checked ~ span:nth-last-child(3)
{
  opacity: 0;
  transform: rotate(0deg) scale(0.2, 0.2);
}

#menuToggle input:checked ~ span:nth-last-child(2)
{
  transform: rotate(-45deg) translate(0, -1px);
}


#menu
{
  position: absolute;
  width: 300px;
  margin: -100px 0 0 -50px;
  padding: 50px;
  padding-top: 125px;
  
  background: #ededed;
  list-style-type: none;
  -webkit-font-smoothing: antialiased;
 
  
  transform-origin: 0% 0%;
  transform: translate(-100%, 0);
  
  transition: transform 0.5s cubic-bezier(0.77,0.2,0.05,1.0);
}

#menu li
{
  padding: 10px 0;
  font-size: 22px;
}


#menuToggle input:checked ~ ul
{
  transform: none;
  }
    .form-inline .form-group { margin-right:10px; }
.well-primary {
color: rgb(255, 255, 255);
background-color: rgb(66, 139, 202);
border-color: rgb(53, 126, 189);
}
.glyphicon { margin-right:5px; }

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
    </head>
    <body>
             <nav role="navigation">
  <div id="menuToggle">
 
    <input type="checkbox" />
    
   
    <span></span>
    <span></span>
    <span></span>
    
  
    <ul id="menu">
     
      <a href="#"><li>About</li></a>      
      <a href="index.jsp"><li>Logout</li></a>
      
    </ul>
  </div>
</nav>
<div class="container">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                          <span class="glyphicon glyphicon-th-list">
                            </span>Rejected Requests <button id="btn" type="button" class="btn btn-default btn-sm">
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
                    NSS Number 
                    </th>
                    <th>
                    Reason for Rejection 
                    </th>                   
                    <th>
                    Rejection Time 
                    </th>
                   </tr>
           
            <%
            Connection con= null;



String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/sparetrack";
String user = "root";
String dbpsw = "baisla";
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);


String sql="SELECT * FROM `rejected`";
PreparedStatement stat=con.prepareStatement(sql);
ResultSet rs1=stat.executeQuery();
while(rs1.next()){
%>
        
<tr>
                    <td>
                      <%=rs1.getString(1)%>
                    </td>                                                  
                    <td>
                      <%=rs1.getString(2)%>
                    </td>
                    <td>
                      <%=rs1.getString(3)%>
                    </td>
                    
              </tr>

        <%
}
            %>
             </table>
                            </div>
                        </div>
                    </div>
                        </div>
                </div>
            </div>
      <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdn.rawgit.com/rainabba/jquery-table2excel/1.1.0/dist/jquery.table2excel.min.js"></script>
        <script type="text/javascript">
            $('#btn').click(function(){
                $('.table').table2excel({
                    type:"xls",
                    filename: "Approved list"
                    
                });
                
            });
            
        </script>
          
    

</body>
</html>
