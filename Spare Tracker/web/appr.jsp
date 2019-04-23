
 
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
    top: 220px;
    left: 75px;
}
</style>
    </head>
    <body> <%
        String Host = "jdbc:mysql://localhost:3306/sparetrack";
        Connection connection = null;
        Statement statement = null;
        ResultSet rs1 = null;
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
    <div class="row">
        <div class="col-md-12">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-file">
                            </span>Add New User</a>
                        </h4>
                    </div>
                   <form method="POST" class="register-form" id="register-form">
                           <%
                     statement = connection.createStatement();
                    String u=request.getParameter("u");
                  int num=Integer.parseInt(u);
                    String Data = "select * from engin where NSS='"+num+"'";
                    rs1 = statement.executeQuery(Data);
                    while (rs1.next()) {
                    %>   
                        <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <div class="row">
                                
                  
                                <div class="col-md-12">
                                    <div> 
                                     <label for="NSS" class="required">NSS code</label>
                                        <input type="text" class="form-control" name="mc" placeholder="NSS Code" value='<%=rs1.getString(1)%>' required readonly />
                                    </div>       
                                    <br>
                                    <div class="form-group">
                                        <label for="CTG No" class="required">CTG No</label>
                                        <input type="text" class="form-control" name="ctg" placeholder="CTG No" value='<%=rs1.getString(10)%>' required readonly/>
                                    </div>
                              
                                    <div>
                                        <label for="Approver Name" class="required">Approver Name</label>
                                        <input type="text" class="form-control" name="an" placeholder="Approver Name" required />
                                    </div>
                                    <br>                             
                           <br>
                                  <%   
                    }
                    %>
                            <div class="row">
                              <div class="col-md-6">
                                  <div class="form-group">
                                            <button type="submit" class="btn btn-success btn-sm">
                                                <span class="glyphicon glyphicon-floppy-disk"></span>Save</button>
                                           
                                        </div>
                               </div>
                            </div>
                              </div>
                            </div>
                            </div>
                                </div>
                   </form>
                            </div>
                        </div>
                    </div>   
                </div>

    </body>
</html>
<%    
     String b=request.getParameter("ctg");
     String c=request.getParameter("mc");
     String d=request.getParameter("an");
     String url="jdbc:mysql://localhost:3306/sparetrack";
Connection conn=null;
  
Class.forName("com.mysql.jdbc.Driver").newInstance();
if(b!=null && c!=null && d!=null ){
    try{
        conn=DriverManager.getConnection(url,"root","baisla");
        String query="INSERT INTO `applist`(`CTG`,`NSS`,`ApproverName`) values(?,?,?)";
        String querys="INSERT INTO `circlereq` SELECT * FROM `engin` WHERE NSS ="+num+"";
        String queryp="DELETE FROM `engin` WHERE NSS ="+num+"";
        ps=conn.prepareStatement(query);
        ps2=conn.prepareStatement(querys);
        ps3=conn.prepareStatement(queryp);
        ps.setString(1,b);
        ps.setString(2,c);
        ps.setString(3,d);
        ps.executeUpdate();
        ps2.executeUpdate();
        ps3.executeUpdate();
        response.sendRedirect("engapp.jsp");
    }catch(Exception ex){
        out.println("Your Connection: "+ex);
    }finally{             
        ps.close();
        conn.close();
    }
}
%>