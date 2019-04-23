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
    <title>Spare Tracker</title>

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
                    <form method="POST" class="register-form" id="register-form">
                        <div class="form-row">
                            <div class="form-group">
                                <div class="form-input">
                                    <label for="Reason" class="required">Requester Name</label>
                                    <input type="text" name="rn" id="Requester_Name" />
                                </div>
                                <div class="form-input">
                                    <label for="Reason" class="required">Reason</label>
                                    <input type="text" name="rs" id="Reason" />
                                </div>
                                <div class="form-input">
                                    <label for="NSS" class="required">NSS Ref No</label>
                                    <input type="text" name="cmp" id="NSS" />
                                </div>
                                <div class="form-input">
                                    <label for="text" class="required">Cluster</label>
                                    <input type="text" name="clt" id="Cluster" />
                                </div>
                                <div class="form-input">
                                    <label for="Site_Name" class="required">Site Name</label>
                                    <input type="text" name="sn" id="Site_Name" />
                                </div>
                                  <div class="form-input">
                                    <label for="NSS_Ref" class="required">NSS Ref No-</label>
                                    <input type="text" name="nss" id="NSS_Ref" />
                                </div>
                                  <div class="form-input">
                                    <label for="Material_Code" class="required">NSS/Material Code</label>
                                    <input type="text" name="mcd" id="Material_Code" />
                                </div>
                                  <div class="form-input">
                                    <label for="Repalced_unit" class="required">Faulty/Repalced unit kept at location ID(EVO ID)</label>
                                    <input type="text" name="ru" id="Repalced_unit" />
                                </div>
                                 <div class="form-input">
                                    <label for="NSS_Ref_No_Faulty_Unit" class="required">NSS Ref No. Faulty Unit</label>
                                    <input type="text" name="nssre" id="NSS_Ref_No_Faulty_Unit" />
                                </div>
                                <div class="form-input">
                                    <label for="Basic" class="required">Basic Data Text/Long Description</label>
                                    <input type="text" name="bas" id="Basic" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-select">                                    
                                  <div class="form-input">
                                    <label for="Site_ID" class="required">Site ID</label>
                                    <input type="text" name="sid" id="Site_ID" />
                                </div>
                                </div>
                                  <div class="form-select">                                    
                                  <div class="form-input">
                                    <label for="EVO_Location" class="required">EVO Location</label>
                                    <input type="text" name="evo" id="EVOLocation" />
                                </div>
                                </div>
                                <div class="form-input">
                                    <label for="HW_fault" class="required">HW fault taken</label>
                                    <input type="text" name="hwf" id="HW_fault" />
                                </div>
                                <div class="form-input">
                                    <label for="CTG_No" class="required">CTG No</label>
                                    <input type="text" name="ctg" id="CTG_No" />
                                </div>
                                <div class="form-input">
                                    <label for="Detailed_Reason" class="required">Detailed Reason</label>
                                    <input type="text" name="der" id="Detailed_Reason" />
                                </div>
                                 <div class="form-input" class="required">
                                    <label for="RMA_MSO">RMA/MSO</label>
                                    <input type="text" name="rma" id="RMA_MSO" />
                                </div>
                                 <div class="form-input">
                                    <label for="Detailed_Reason" class="required">Detailed Reason</label>
                                    <input type="text" name="det" id="Detailed" />
                                </div>
                                 <div class="form-input">
                                    <label for="Remarks_if_any" class="required">Remarks if any</label>
                                    <input type="text" name="ria" id="Remarks_if_any" />
                                </div>
                                   <div class="form-input">
                                    <label for="Serial_No" class="required">Serial No</label>
                                    <input type="text" name="slno" id="Serial_No" />
                                </div>
                                   
                                 <div class="form-input">
                                    <label for="Fault" class="required">Faulty/repalced unit kept at location Name</label>
                                    <input type="text" name="flt" id="Fault" />
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

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/nouislider/nouislider.min.js"></script>
    <script src="vendor/wnumb/wNumb.js"></script>
    <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
<%    
     String b=request.getParameter("rn");
String c=request.getParameter("rs");
String d=request.getParameter("cmp");
String e=request.getParameter("clt");
String f=request.getParameter("sn");
String g=request.getParameter("nss");
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
        String r=request.getParameter("det");
        String s=request.getParameter("ria");
        String t=request.getParameter("slno");
         String u=request.getParameter("flt");
       String url="jdbc:mysql://localhost:3306/sparetrack";
Connection conn=null;
PreparedStatement ps=null;  
Class.forName("com.mysql.jdbc.Driver").newInstance();
if(b!=null && c!=null && d!=null && e!=null && f!=null && g!=null && h!=null && i!=null && j!=null && k!=null && l!=null && m!=null && n!=null && o!=null && p!=null && q!=null && r!=null && s!=null && t!=null && u!=null){
    try{
        conn=DriverManager.getConnection(url,"root","baisla");
        String query="INSERT INTO `sptrack`(`COL18`,`COL19`,`COL21`,`COL22`,`COL23`,`COL24`,`COL25`,`COL26`,`COL27`,`COL28`,`COL29`,`COL30`,`COL32`,`COL33`,`COL34`,`COL35`,`COL36`,`COL37`,`COL38`,`COL39`) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        ps=conn.prepareStatement(query);
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
        ps.setString(16,q);
          ps.setString(17,r);
            ps.setString(18,s);
          ps.setString(19,t);
          ps.setString(20,u);
          
       
     
        
        ps.executeUpdate();
        response.sendRedirect("main.jsp");
    }catch(Exception ex){
        out.println("Your Connection: "+ex);
    }finally{
        ps.close();
        conn.close();
    }
}
%>