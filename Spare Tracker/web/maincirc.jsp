<!DOCTYPE html>
<html lang="en">
    
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="main">

        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="images/df.jpg" alt="">
                    <div class="signup-img-content">
               
                    </div>
                </div>
                <div class="signup-form">
                    <form action="" method="POST" class="register-form" id="register-form">
                        <div class="form-row">
                            <div class="form-group">
                                <div class="form-input">
                                    <label for="Sent to VF for Approval" class="required">Sent to VF for Approval Date</label>
                                    <input type="date" name="svfa" id="Sent to VF for Approval" />
                                </div>
                                <div class="form-input">
                                    <label for="Approval date" class="required">Approval date</label>
                                    <input type="date" name="ad" id="Approval date" />
                                </div>
                                <div class="form-input">
                                    <label for="Pick up Document received" class="required">Pick up Document received</label>
                                    <input type="date" name="pudre" id="Pick up Document received" />
                                </div>
                                <div class="form-input">
                                    <label for="Pick up given to Transport agency" class="required">Pick up given to Transport agency</label>
                                    <input type="date" name="pug" id="Pick up given to Transport agency" />
                                </div>
                                <div class="form-input">
                                    <label for="Pick Up ref No.(Site to WH )" class="required">Pick Up ref No.(Site to WH )</label>
                                    <input type="text" name="purn" id="Pick Up ref No" />
                                </div>
                                  <div class="form-input">
                                    <label for="Delivered at WH" class="required">Delivered at WH</label>
                                    <input type="date" name="dlwh" id="Delivered at WH" />
                                </div>
                                  <div class="form-input">
                                    <label for="GRN Done Date" class="required">GRN Done Date</label>
                                    <input type="date" name="grnd" id="GRN Done Date"/>
                                </div>
                                  <div class="form-input">
                                    <label for="GRN No" class="required">GRN No</label>
                                    <input type="text" name="gno" id="GRN No" />
                                </div>
                             
                               
                            </div>
                            <div class="form-group">
                                <div class="form-select">                                    
                                  <div class="form-input">
                                    <label for="Pick Up" class="required">Pick Up ref No.(WH to HWS)</label>
                                    <input type="text" name="pur" id="Pick Up"/>
                                </div>
                                </div>
                                  <div class="form-select">                                    
                                  <div class="form-input">
                                    <label for="Sent to HWS" class="required">Sent to HWS</label>
                                    <input type="date" name="sthw" id="Sent to HWS" />
                                </div>
                                </div>
                                <div class="form-input">
                                    <label for="Received at HWS  with status" class="required">Received at HWS  with status</label>
                                    <input type="date" name="rahw" id="Received at HWS  with status" />
                                </div>
                                <div class="form-input">
                                    <label for="Dispatched from HWS with status" class="required">Dispatched from HWS with status RNP/OK/</label>
                                    <input type="date" name="dihw" id="Dispatched from HWS with status" />
                                </div>
                                <div class="form-input">
                                    <label for="Delivered at Circle WH" class="required">Delivered at Circle WH</label>
                                    <input type="date" name="dcw" id="Delivered at Circle WH" />
                                </div>
                                   <div class="form-input">
                                    <label for="GRN receieved date" class="required">GRN receieved date</label>
                                    <input type="date" name="grn" id="GRN receieved date" />
                                </div>
                                    <div class="form-input">
                                    <label for="Pick Up Request for HWS" class="required">Pick Up Request for HWS to Transport agency</label>
                                    <input type="date" name="piu" id="Pick Up Request for HWS" />
                                </div>
                            </div>
                        </div>
                   
                       
                         <div class="form-submit">
                            <input type="submit" value="Submit" class="submit" id="submit" name="submit" />
                            <input type="submit" value="Reset" class="submit" id="reset" name="reset" />
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>

    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/nouislider/nouislider.min.js"></script>
    <script src="vendor/wnumb/wNumb.js"></script>
    <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
<%   String Host = "jdbc:mysql://localhost:3306/sparetrack";
        Connection connection = null;
        Statement statement = null;
        ResultSet rs = null;
        PreparedStatement ps=null;    
        String b=request.getParameter("svfa");
        String c=request.getParameter("ad");
        String d=request.getParameter("pudre");
        String e=request.getParameter("pug");
         String f=request.getParameter("purn");
        String g=request.getParameter("dlwh");
        String h=request.getParameter("grnd");
         String i=request.getParameter("gno");
        String j=request.getParameter("pur");        
        String k=request.getParameter("sthw");        
        String l=request.getParameter("rahw");
        String m=request.getParameter("dihw");
         String n=request.getParameter("dcw");        
        String o=request.getParameter("grn");
         String p=request.getParameter("piu");
    
Class.forName("com.mysql.jdbc.Driver").newInstance();
if(b!=null && c!=null && d!=null && e!=null && f!=null && g!=null && h!=null && i!=null && j!=null && k!=null && l!=null && m!=null && n!=null && o!=null && p!=null){
    try{
        connection=DriverManager.getConnection(Host,"root","baisla");
        String query="INSERT INTO `sptrack`(`COL41`,`COL42`,`COL43`,`COL44`,`COL45`,`COL48`,`COL49`,`COL50`,`COL51`,`COL52`,`COL53`,`COL54`,`COL55`,`COL56`,`COL57`) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        ps=connection.prepareStatement(query);
        ps.setString(1,b);
        ps.setString(2,c);
        ps.setString(3,d);
        ps.setString(4,e);
          ps.setString(5,f);
        ps.setString(6,g);
        ps.setString(7,h);
        ps.setString(8,i);
          ps.setString(9,j);
        
        ps.setString(10,k);
        ps.setString(11,l);
        ps.setString(12,m);
          ps.setString(13,n);
        ps.setString(14,o);
        ps.setString(15,p);
       
          
       
     
        
        ps.executeUpdate();
        response.sendRedirect("main.jsp");
    }catch(Exception ex){
        out.println("Your Connection: "+ex);
    }finally{
        ps.close();
        connection.close();
    }
}
%>