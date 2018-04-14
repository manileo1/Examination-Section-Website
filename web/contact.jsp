<%-- 
    Document   : contact
    Created on : 3 Nov, 2017, 8:45:12 PM
    Author     : iiitbasar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            li{
                list-style-type:none;
                display:inline;
                color: #e6e6e6;
            }
            p{
                margin-left:50px;
                font-family:monospace;
 
                font-size:18px;
                color:#f2f2f2;
            }
            div{
                margin-left:150px;
                color:#e6ffe6;
            }
            a{
                text-decoration: none;
                color:#e6ffff;
            }
            
            #show{
                
            }
            
            #fb{
                font-size:18px;
                color:#9999ff;
            }
            #mail{
                font-size:18px;
                color:#e62e00;
            }
            #no{
                color:white;
            }
            #tweet{
                color: #e6f9ff;
            }
            font{
                margin-left:30px;
            }
            #web{
                color:#ffffe6;
            }
            h1{
                margin-left:250px;
                color:#ffffe6;
            }
        </style>
    </head>
    <body><br/>
        <br/>
        <h1>Contact Us</h1><br/>
        <p >Incase of any Technical Issues or Login Issues Contact Us at <a>Examination Section</a>.</p>
            <p id="show" >&nbsp &nbsp &nbsp For more Queries contact us through 24/7 support:</p>
       
        <div>
          
            <ul>
                <li> facebook: &nbsp<font id="fb"> @fbrguktexamsection </font></li><br/> <br/>
                <li>phone: &nbsp &nbsp &nbsp<font id="no">900953472 &nbsp 800894672</font></li><br/><br/>
                <li> mail: &nbsp &nbsp &nbsp &nbsp<font id="mail">rgukt.ac@exm.com</font></li><br/><br/>
                
                <li>twitter: &nbsp &nbsp<font id="tweet" >@twitter/rguktexam</font></li><br/><br/>
                <li>website: &nbsp &nbsp<font id="web" >www.rguktexam.com</font></li><br/><br/>
            </ul>
        </div>
        
    </body>
</html>
