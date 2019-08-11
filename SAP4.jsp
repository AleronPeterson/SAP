<%-- 
    Document   : SAP4
    Created on : 2 Mar, 2019, 11:40:46 PM
    Author     : abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    
       
        <title>SAP-register</title>
        <style>
            body{
                margin: 0;
                padding: 0;
              background: url(https://wallpapercave.com/wp/vdlsjM9.jpg);
              background-size: cover;  
              background-position: bottom;
              font-family: sans-serif;
            }
          
        
            .register {
             width: 350px;
             padding: 10px;
             position: absolute;
             top: 50%;
             left: 50%;
             transform: translate(-50%,-50%);
             background: rgba(0,0,0,.8);
                 
             text-align: center;
             border-radius: 50px;
             border: 5px solid #006666;
           }
           .avatar{
               width: 70px;
               background: #006666;
                 position: absolute;
                 top: -10%;
               left: 41%;
               border-radius: 50px;
                 
                
           }
           h1{
               color: white;
               text-transform: uppercase;
               font-weight: 500;
                          }
                          
           .register input[type="text"],.register input[type="password"],.register input[type="password"]{
               border: 0;
               background: none;
               margin: 20px auto;
               text-align: center;
               border: 2px solid #006666;
               padding: 14px 10px;
               width: 200px;
               outline: none;
               color: white;
               border-radius: 24px;
               transition: 0.25s;
           }
           .register input[type="text"]:hover,.register input[type="password"]:hover ,.register input[type="[password]"]:hover {
               width: 280px;
               border-color: #009933;
           }
           .register input[type="submit"]{
               border: 0;
               background: none;
               margin: 20px auto;
               text-align: center;
               border: 2px solid #006666;
               padding: 14px 40px;
               
               outline: none;
               color: white;
               border-radius: 24px;
               transition: 0.25s;
               cursor: pointer;
           }
           
           
           
           .register input[type="submit" ]:hover{
               background: #009900;
               
           }
           
        </style>
  
    </head>
    <body>
   <div class="register">
       <img src="https://www.juptr.io/images/default-user.png" class="avatar">
        <form action="SAP4" method="post">
            
     
               
                 <h1>register</h1>
                 
                    
                     <input type="text" name="uname" placeholder="uname" />
   
                  

                     <input type="password" name="psw"  placeholder="password"  />
    
                   
                                 <input type="password" name="re" placeholder="confirm password" />
        
            
                                 <input type="submit" value="register" class="login"/>
                 
           
            
        </form><form action="SAP.jsp" method="post">
           
                <input type="submit" value="sign in" />
           
        </form>
   </div>
    </body>
</html>
