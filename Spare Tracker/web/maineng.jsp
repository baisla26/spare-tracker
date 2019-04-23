<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<!DOCTYPE html>
<html lang="en">
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mysql.fabric.xmlrpc.base.Data"%>
<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Spare Tracker</title>

  
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body><%
        String Host = "jdbc:mysql://localhost:3306/sparetrack";
        Connection connection = null;
        Statement statement = null;
        ResultSet rs1 = null;
        PreparedStatement ps=null;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        connection = DriverManager.getConnection(Host, "root", "baisla");
        %>
    
    <div class="main">

        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="images/df.jpg" alt="">
                    <div class="signup-img-content">
               
                    </div>
                </div>
                <div class="signup-form">
                    <form action="engineerrequest" method="POST" class="register-form" id="register-form">
                         <%
                     statement = connection.createStatement();
                    String u=request.getParameter("u");
                  int num=Integer.parseInt(u);
                    String Data = "select * from clustin where NSS='"+num+"'";
                    rs1 = statement.executeQuery(Data);
                    while (rs1.next()) {
                    %>   
                        <div class="form-row">
                            <div class="form-group">
                                <div class="form-input">
                                    <div class="form-input">
                                    <label for="NSS" class="required">NSS Ref No</label>
                                    <input type="text" name="cmp" id="NSS" value="<%=rs1.getString(8)%>" required readonly/>
                                </div>
                                    <label for="Reason" class="required">Requester Name</label>
                                    <input type="text" name="rn" id="Requester_Name" />
                                </div>
                                <div class="form-input">
                                    <label for="Reason" class="required">Reason</label>
                                    <input type="text" name="rs" id="Reason" />
                                </div>
                         
                                <div class="form-input">
                                    <label for="text" class="required">Cluster</label>
                                    <input type="text" name="clt" id="Cluster" required/>
                                </div>
                                <div class="form-input">
                                    <label for="Site_Name" class="required">Site Name</label>
                                    <input type="text" name="sn" id="Site_Name" required/>
                                </div>
                              
                                  <div class="form-input">
                                    <label for="Material_Code" class="required">Material Code</label>
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
                            <input type="submit" value="Create Request" class="submit" id="submit" name="submit" />
                            <input type="submit" value="Reset" class="submit" id="reset" name="reset" />
                        </div>
                                
        <%
}
            %>
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
