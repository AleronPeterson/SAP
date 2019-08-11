<%-- 
    Document   : SAP2
    Created on : 16 Feb, 2019, 12:14:13 AM
    Author     : abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SAP-delete or search</title>
        <style>
            body{
                margin: 0;
                padding: 0;
                background: url('https://c.wallhere.com/photos/ce/d0/1920x1212_px_digital_art_men_Selective_Coloring_Simple_Background_tennis_Tennis_Rackets-725011.jpg!d') no-repeat;
                background-size: cover;
               
                font-family: sans-serif;
                
            }
            .delete{
                width: 270px;
                padding: 10px;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                color: white;
                text-align: center;
            }
            h1{
                border-bottom: solid #00cc00;
                text-transform: uppercase;
            }
            .delete input[type="text"]{
                border: 0;
                background: none;
                text-align: center;
                width: 200px;
                padding: 10px;
                border-bottom: 1px solid wheat;
                border-radius: 5px;
                outline: none;
                color: white;
                transition: 0.25s;
            }
            .delete input[type="submit"]{
                border: 0;
                background: none;
                margin: 20px auto;
                color: wheat;
                width: 200px;
                padding: 5px;
                border: 2px solid #00cc00;
                cursor: pointer;
                transition: 0.25s;
            }
            .delete input[type="submit"]:hover{
                background: #00cc00;
            }
            ul{
                margin: 0xp;
                padding: 0px;
list-style: none;              
              
                text-align: center;
           text-decoration: none;
                
            }
            ul li {
               margin: 2px;
             color: white;
             width: 180px;
             line-height: 40px;
             border-bottom: 1px solid #00ff00;
                font-size: 20px; 
            cursor: pointer;
            float: left;
            }
            ul li ul li{
             
                background: rgba(0,0,0,.9);
            line-height: 40px;
           display: none;
           
            
            }
            
            ul li a{
                color: white;
                margin: 2px;
                display: block;
               text-decoration: none;
            }
            ul li a:hover{
                background: #00ff00;
            }
            ul li:hover ul li{
                display: block;
            }
 
         
            
        </style>
        
    </head>
    <body>
        <ul>
            <li><a href="welcome.jsp">HOME</a></li>
            <li><a>SERVICES</a>
                <ul>
                    <li><a href="SAP1.jsp" color="black">INSERT DATA</a></li>
                    <li><a href="SAP.jsp">SIGN OUT</a></li>
                    <li><a href="SAP6.jsp">UPDATE ITEM</a></li>
                </ul>
                  </li>
                  <li><a href="SAP5">DISPLAY</a></li>
                </ul>
        
        <div class="delete">
        <form  action="SAP2" method="post">
       
<h1>delete or search</h1>
     <input type="text" name="object" placeholder="type "the object to delete/>
<input type="submit" value="delete"/>

        
            
        </form><form action="SAP3" method="post">
            
            <input type="text" name="object" placeholder="type to search" />
            <input type="submit" value="search"/>
        </form>
        </div>
    </body>
</html>
