<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
    top: 170px;
    left: 75px;
}

.clsScroll
{
              
         overflow: scroll;
}
.btn{
    position: relative;
    left:  800px;
}

h1{ margin: 0; }


#contactForm { 
  display: none;

  border: 6px solid salmon; 
  padding: 2em;
  width: 400px;
  text-align: center;
  background: #fff;
  position: fixed;
  top:50%;
  left:50%;
  transform: translate(-50%,-50%);
  -webkit-transform: translate(-50%,-50%)
  
}

input, textarea { 
  margin: .8em auto;
  font-family: inherit; 
  text-transform: inherit; 
  font-size: inherit;
  
  display: block; 
  width: 280px; 
  padding: .4em;
}
textarea { height: 80px; resize: none; }

.formBtn { 
  width: 140px;
  display: inline-block;
  
  background: teal;
  color: #fff;
  font-weight: 100;
  font-size: 1.2em;
  border: none;
  height: 30px;
}
</style>
    </head>
    <body><%
        String Host = "jdbc:mysql://localhost:3306/sparetrack";
        Connection connection = null;
        Statement statement = null;
        PreparedStatement ps=null;
         PreparedStatement ps2=null;
          PreparedStatement ps3=null;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        connection = DriverManager.getConnection(Host, "root", "baisla");
        %>
             <nav role="navigation">
  <div id="menuToggle">
 
    <input type="checkbox" />
    
   
    <span></span>
    <span></span>
    <span></span>
    
  
    <ul id="menu">
      <a href="welcome.jsp"><li>Home</li></a>
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
                            </span>Pending For Approval<button id="btn" type="button" class="btn btn-default btn-sm">
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
                    NSS Ref No 
                    </th> 
                    <th>
                    Approve 
                    </th>    
                     <th>
                    Reject 
                    </th>
                    <th>
                    Requester Name 
                    </th>
                    <th>
                    Reason
                    </th>                   
                    <th>
                    Cluster
                    </th>
                    <th>
                    Site Name
                    </th>
                    <th>
                    Material Code
                    </th>
                    <th>
                    Faulty/Repalced unit kept at location ID(EVO ID)
                    </th>
                    <th>
                    NSS Ref No. Faulty Unit
                    </th>                    
                    <th>
                    Basic Data Text/Long Description
                    </th>
                    <th>
                     Site ID
                    </th>
                    
                    <th>
                     EVO Location
                    </th>
                    <th>
                     HW fault taken
                    </th>                     
                    <th>
                      CTG No
                    </th>
                    
                    <th>
                     Detailed Reason
                    </th>
                     <th>
                     RMA/MSO
                    </th>
                    <th>
                     Remarks if any
                    </th>
                    <th>
                    Serial No
                    </th>
                    <th>
                     Faulty/repalced unit kept at location Name
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


String sql="SELECT * FROM `engin`";
PreparedStatement stat=con.prepareStatement(sql);
ResultSet rs1=stat.executeQuery();
statement = connection.createStatement();
while(rs1.next()){
%>
        
<tr>
                    
                    <td>
                      <%=rs1.getString(1)%>
                    </td>
                    <td>
                            <a href='appr.jsp?u=<%=rs1.getString(1)%>' class="glyphicon glyphicon-edit"></a>
                    </td> 
                    <td>
                     
                        <a id="contact" class="glyphicon glyphicon-edit"></a>
                        <div id="contactForm">
                        <form action="#">
                        <input type="text" name="cmp" id="NSS" value='<%=rs1.getString(1)%>' required readonly />
                        <textarea type="text" name="rfr" id="NSS" placeholder="Reason For Rejection" required></textarea>
                         <input class="formBtn" type="submit" />
                        </form>
                        </div>
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
                    filename: "Pending Requests"
                    
                });
                
            });
            $(function() {
  
  // contact form animations
  $('#contact').click(function() {
    $('#contactForm').fadeToggle();
  });
  $(document).mouseup(function (e) {
    var container = $("#contactForm");

    if (!container.is(e.target) 
        && container.has(e.target).length === 0)
    {
        container.fadeOut();
    }
  });
  
});
        </script>

</body>
</html>
<%   String a=request.getParameter("cmp"); 
     String b=request.getParameter("rfr"); 
       
Connection conn=null;
 
Class.forName("com.mysql.jdbc.Driver").newInstance();
if(a!=null && b!=null){
    try{
        conn=DriverManager.getConnection(url,"root","baisla");
        String query="INSERT INTO `rejected`(`NSS`,`Reason`) values(?,?)";
       
        ps=conn.prepareStatement(query);
         
        ps.setString(1,a);
        ps.setString(2,b);
    ps.executeUpdate();
   
        response.sendRedirect("engapp.jsp");
    }catch(Exception ex){
        out.println("Your Connection: "+ex);
    }finally{
        ps.close();
        conn.close();
    }
}
%>
