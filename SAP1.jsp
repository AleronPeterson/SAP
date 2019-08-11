<%-- 
    Document   : SAP1
    Created on : 23 Feb, 2019, 6:24:24 PM
    Author     : abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    
      
        <title>SAP-insert data</title>
        <style>
            body{
                
                margin: 0px;
                padding: 0px;
                background: url("https://www.setaswall.com/wp-content/uploads/2018/02/Golf-Wallpaper-16-1280x960.jpg");
                background-size: cover;
               
                font-family: sans-serif;
            }
            .insert{
              width: 350px;
             padding: 10px;
             position: absolute;
             top: 50%;
             left: 55%;
         transform: translate(-50%,-50%);
             background: rgba(0,0,0,.5);
                 
             text-align: center;
             border-radius: 50px;
             border: 1px solid #ff0000;
            }
            h1{
                color: white;
                font-weight: 500;
        font-style: italic;
            }
            h4{
                color: white;
                margin-top: 75px;
            }
            .insert input[type="text"]{
                margin: 5px auto;
                border: 0;
              background: none;
              border-radius: 5px;
              border-bottom:  3px solid #ff0000;
                padding: 10px;
                width: 220px;
                text-align: center;
                color: white;
                outline: none;
                transition: 0.25s;
            }
            .insert textarea{
                background: none;
                color: white;
                outline: #ffff00;
                border: 3px solid #ff0000;
                text-align: left;
                border-radius: 5px;
                transition: 0.25s;
            }
            .insert textarea:hover{
               padding: 30px;
               border: 3px solid #ffff00;
               text-align: left;
            }
            .insert input[type="submit"]{
                margin: 5px;
                width: 220px;
                padding: 10px;
                background: #ff3333;
                cursor: pointer;
                transition: 0.10s;
            }
            .insert input[type="submit"]:hover{
                background: #ffff00;
            }
            .insert input[type="text"]:hover{
                width: 300px;
                border-color:  #ffff00;
            }
             .nav{
                width: 100%;
              
                background: rgba(0,0,0,.8);
            }
            ul{
               
                margin: 0px;;
                padding: 0px;
                 list-style: none;
                text-align: center;
            
            }
            ul li {
             height: 45px;
             width: 180px;
             line-height: 40px;
                background-color: #333333;
                opacity: .8;
               display: block;
                float: left;
                text-align: center;
               cursor: pointer;
              
              font-size: 20px;
            }
            ul li a{
                margin: 2px;
                color: white;
                text-decoration: none;
                    cursor: pointer;
                    display: block;
                    text-align: center;
                  
                      border-bottom: 2px solid #ff0000;
            }
            ul li:hover{
                background: #ff0000;
                    
            }
            ul li ul li{
               
               line-height: 40px;
                background: rgba(0,0,0,.8);
                display: block;
          position: relative;
              
            }
            ul li ul{
                display: none;
            }
            ul li:hover ul{
                display: block;
            }
            ul ul ul li {
                display: none;
            }
           
            ul ul ul {
              
               display: none;
             margin-left: 180px;
             top: 0px;
        position: absolute;
          
                 
            }
       
            ul ul li:hover ul li {
                display: block;
            }
           
            
        </style>
       </head>
    <body>
        <div class="nav">
        <ul>
            <li>
                <a href="welcome.jsp">HOME</a>
           
            </li>
            
            <li><a>SERVICES</a>
                <ul>
                
            <li><a href="SAP.jsp">SIGN OUT</a></li>
                    
                  <li><a>MOD-ITEMS-</a>
                  <ul>
                      <li><a href="SAP2.jsp">DELETE DATA</a></li>
                       <li><a href="SAP2.jsp">SEARCH DATA</a></li>
                       <li><a href="SAP6.jsp">UPDATE ITEM</a></li>
                  </ul>
                  </li>
                </ul>
            </li>
             <li><a href="SAP5"> DISPLAY</a></li>
       
        
           
        </ul>
        </div>
        <div class="insert">
   <form action="SAP1" method="post">
      
       <h1>INSERT DATA</h1>
       <p>  <input type="text" name="object" placeholder="object"/></p>
      
       <p><input type="text" name="brand" placeholder="brand"/></p>
     

       <p>       <input type="text" name="price" placeholder="price"/></p>
       
       <p><h4>Describe the product</h4> 
   
       <p><textarea name="description" rows="5" cols="29">
           </textarea></p>

<input type="submit" value="insert"/>

     
        </form>
        </div>
    </body>
</html>

