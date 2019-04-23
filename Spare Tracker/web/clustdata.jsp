<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<!DOCTYPE html>
<html lang="en">
  <%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">

    
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
                    <form action="uploadServlet" method="POST" enctype="multipart/form-data" class="register-form" id="register-form">
                        <div class="form-row">
                            <div class="form-group">
                                <div class="form-input">
                                    <label for="Stock_Base" class="required">Stock Base</label>
                                    <input type="text" name="sb" id="Stock_Base" required />
                                </div>
                                <div class="form-input">
                                    <label for="HW_Received_Date" class="required">HW Received Date</label>
                                    <input type="text" name="hw" id="HW_Received_Date"  />
                                </div>
                                <div class="form-input">
                                    <label for="MRN_No" class="required">MRN No</label>
                                    <input type="text" name="mrn" id="MRN_No" />
                                </div>
                                <div class="form-input">
                                    <label for="Receiver_Name" class="required">Receiver Name</label>
                                    <input type="text" name="rn" id="Receiver_Name" />
                                </div>
                                <div class="form-input">
                                      <label for="Category" class="required">Category</label>
                                    
                                    <input type="text" name="cat" id="Category"  /> 
                                    
                                </div>
                                  <div class="form-input">
                                    <label for="SAP_Vendor_ID" class="required">SAP Vendor ID</label>
                                    <input type="text" name="sap" id="SAP_Vendor_ID" required/>
                                </div>
                                  <div class="form-input">
                                    <label for="Product_Family" class="required">Product Family</label>
                                    <input type="text" name="pf" id="Product_Family" required/>
                                </div>
                                  <div class="form-input">
                                    <label for="NSS_Material_Code" class="required">NSS/Material Code</label>
                                    <input type="text" name="nmc" id="NSS_Material_Code" required/>
                                </div>
                                 <div class="form-input">
                                    <label for="Basic_Data" class="required">Basic Data Text/Long Description</label>
                                    <input type="text" name="bd" id="Basic_Data" required/>
                                </div>
                                    <div class="form-input">
                                    <label for="Picked" class="required">Picked up from Cluster </label>
                                    <input type="text" name="pi" id="Picked"/>
                                </div>
                               
                            </div>
                            <div class="form-group">
                                <div class="form-select">                                    
                                  <div class="form-input">
                                    <label for="Part_Code" class="required">Part Code/Version</label>
                                    <input type="text" name="pc" id="Part_Code"/>
                                </div>
                                </div>
                                  <div class="form-select">                                    
                                  <div class="form-input">
                                    <label for="Sl_No" class="required">S/L No</label>
                                    <input type="text" name="sln" id="Sl_No" required/>
                                </div>
                                </div>
                                <div class="form-input">
                                    <label for="Location_ID" class="required">Location ID</label>
                                    <input type="text" name="lid" id="Location_ID" required/>
                                </div>
                                <div class="form-input">
                                    <label for="Cluster" class="required">Cluster</label>
                                    <input type="text" name="cl" id="Cluster" required/>
                                </div>
                                <div class="form-input">
                                    <label for="HW" class="required">HW/SISO</label>
                                    <input type="text" name="si" id="HW" required/>
                                </div>
                                 <div class="form-input" class="required">
                                    <label for="OK">OK/Faulty</label>
                                    <input type="text" name="ok" id="OK" required/>
                                </div>
                                 <div class="form-input">
                                    <label for="Material_Used" class="required">Material Used for</label>
                                    <input type="text" name="mu" id="Material_Used" required/>
                                </div>
                                 <div class="form-input">
                                    <label for="MMS_Raised" class="required">MMS Raised</label>
                                    <input type="text" name="mr" id="MMS_Raised" required/>
                                </div>
                                 <div class="form-input">
                                    <label for="UoM" class="required">UoM(M/EA)</label>
                                    <input type="text" name="uom" id="UoM" required/>
                                </div>
                                   
                                    <label for="Snaps" class="required">Snaps to be uploaded</label>
                                    <input type="file" name="photo" id="Snaps" size="50" required/>
                                
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
