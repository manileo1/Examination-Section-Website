<html>


<head>

<style>

body {
       background-image: url("new/fresh_grass_4-wallpaper-1920x1080(1).jpg");
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 13px 32px;
    border: none;
    cursor: pointer;
    width:30px;

}

p {
    font-family: "Monospace";
    font-size:20px;
    color: #f2f2f2;
    
}

/* Add a hover effect for buttons */
button:hover {
    opacity: 0.8;
}

input[type=text], input[type=password] {
    
    padding: 8px 8px;
    margin: 4px 0;
    display: inline-block;
    border: 1px solid #f2f2f2;
    box-sizing: border-box;
}

#main{
background: rgba(23,255,255,0.5);
padding-bottom:0px;

}

#in{
background: rgb(77, 255, 136,0.3);
padding-bottom:0px;
margin-left:200px;
margin-right:350px;
border: 4px solid #f1f1f1;
}

li{
    display:inline-block;
    padding-left:30px;
    
}

ul{
    list-style-type: none;
}

</style>



</head>



<body >
<div id="in">
            <ul >
                <li><h1 style="color:#e6ffee;"> &nbsp &nbsp&nbsp &nbsp&nbsp &nbsp Login </h1></li><li><img widht="30" height="35" src="new/147128-avatar-compilation.png"/></li>
                
            </ul>
    
    <div id="main">
        
            <form action="loginprocess.jsp" method="post">
            <br/><p align="center">Username: &nbsp &nbsp<input type="text" placeholder="Enter Username" name="name"></p>
            <p align="center">Password:&nbsp &nbsp <input type="password" placeholder="Enter Password" name="password"></p>
             <p align="center"> <button type="submit">Login</button></p><br/>
            </form>

</div>
    
    <%
         Cookie cks[] =request.getCookies();
         
        
              int i;
              
        
                 out.print("<p align='center'>Please Login</p>");
            
     for(i=0;i<cks.length;i++){
         
        cks[i].setMaxAge(0);
        
    response.addCookie(cks[i]);
        
    }

     String n="none";
     Cookie ck= new Cookie("name",n);
     response.addCookie(ck);
   
%>
</div>
</body>
</html>