<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Spare Project</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
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
html, body{
  width: 100%;
  height: 200%;
  margin: 0;
  padding: 0;
  font-family: 'Open Sans', sans-serif;
 
}


a{
  text-decoration: none;
}

/* GRID */

.twelve { width: 100%; }
.eleven { width: 91.53%; }
.ten { width: 83.06%; }
.nine { width: 74.6%; }
.eight { width: 66.13%; }
.seven { width: 57.66%; }
.six { width: 49.2%; }
.five { width: 40.73%; }
.four { width: 32.26%; }
.three { width: 23.8%; }
.two { width: 15.33%; }
.one { width: 6.866%; }

/* COLUMNS */

.col {
    display: block;
    float:left;
    margin: 1% 0 1% 1.6%;
}

.col:first-of-type {
  margin-left: 0;
}

.container{
  width: 100%;
  max-width: 600px;
  margin: 0 auto;
  position: relative;
  text-align: center;
}

/* CLEARFIX */

.cf:before,
.cf:after {
    content: " ";
    display: table;
}

.cf:after {
    clear: both;
}

.cf {
    *zoom: 1;
}



.button{
  display: inline-block;
  padding: 20px 50px;
  margin: 20px 0;
  position: relative;
  color: #ecf0f1;
}



#button-1{
  border: 2px solid #34495e;
  color: #34495e;
  overflow: hidden;
  -webkit-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

#button-1:before{
  content: "";
  z-index: -1;
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: -100%;
  background-color: #34495e;
  -webkit-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

#button-1:hover{
  color: #ecf0f1;
}

#button-1:hover:before{
  left: 0;
}



#button-2{
  border: 2px solid #34495e;
  color: #34495e;
  overflow: hidden;
  -webkit-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

#button-2:before{
  content: "";
  z-index: -1;
  position: absolute;
  width: 100%;
  height: 100%;
  top: -100%;
  left: 0;
  background-color: #34495e;
  -webkit-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

#button-2:hover{
  color: #ecf0f1;
}

#button-2:hover:before{
  top: 0;
}

#button-3{
  border: 2px solid #34495e;
  color: #34495e;
  overflow: hidden;
  -webkit-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

#button-3:before, #button-3:after{
  content: "";
  z-index: -1;
  position: absolute;
  width: 50%;
  height: 100%;
  top: 0;
  left: -50%;
  background-color: #34495e;
  -webkit-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

#button-3:after{
  left: 100%;
}

#button-3:hover{
  color: #ecf0f1;
}

#button-3:hover:before{
  left: 0;
}

#button-3:hover:after{
  left: 50%;
}



#button-4{
  border: 2px solid #34495e;
  color: #34495e;
  overflow: hidden;
  -webkit-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

#button-4:before, #button-4:after{
  content: "";
  position: absolute;
  width: 100%;
  height: 0;
  left: 0;
  top: 50%;
  z-index: -1;
  background-color: #34495e;
  -webkit-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

#button-4:after{
  top: auto;
  bottom: 50%;
}

#button-4:hover{
  color: #ecf0f1;
}

#button-4:hover:before{
  height: 50%;
}

#button-4:hover:after{
  height: 50%;
}




#button-5{
  color: #34495e;
  overflow: hidden;
}

#button-5:before, #button-5:after{
  content: "";
  position: absolute;
  width: 100%;
  height: 3px;
  background-color: #34495e;
  top: 0;
  left: -100%;
  -webkit-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}
a
{
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
      <a href="#"><li>Home</li></a>
      <a href="#"><li>About</li></a>
      <a href="adduser.jsp"><li>Users</li></a>
      <a href="index.jsp"><li>Logout</li></a>      
    </ul>
  </div>
</nav>

     

<div class="container">
  <h1></h1>
     <h1></h1>
      <h1>Circle Navigation</h1>
       <h1></h1>
       
    <div class="row cf">
      <div class="six col">
        <a href="main.jsp" class="button" id="button-1">Tracker Report</a>
      </div>
      <div class="six col">
        <a href="clustdata.jsp" class="button" id="button-2">New Data</a>
      </div>
    </div>
    <div class="row cf">
      <div class="six col">
        <a href="circapp.jsp" class="button" id="button-3">Requests</a>
      </div>
        <div class="six col">
        <a href="mainapproval.jsp" class="button" id="button-3">Approved Requests</a>
      </div>
    </div>

</div>
 
        
    </body>
</html>
