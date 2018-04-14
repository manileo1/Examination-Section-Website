<html>
    <head>
        <style>
            
            p{
                font-size:18px;
            }
            
            #an{
                color: #e6e6e6;
                font-size:20px;
            }
            
            body{
                text-align: center;
                background-color:#333333;
                color:white;
            }
            a{
                text-decoration: none;
                color:#b3ccff;
            }
</style>
    </head>
<body>
    
    <div>
         
        <H1>
            About Website
        </H1>
        
        <%
         Cookie cks[] =request.getCookies();
                    
                    
                    
                    String db=cks[0].getValue();
                    
                    if(db.equals("none")){
                          request.getRequestDispatcher("loginn.jsp").forward(request, response);
                    }
                    %>
        <p>  <br/>
            <br/>
            <br/>
            This Website is maintained by Examination Section. <br/>
            It provides access to all the students registered at Examination Section.
            <br/>
        
            Students will be profited by updates and information on exams <font id="an"> anytime, anywhere </font>.
      <br/>
      <br/>
      <br/>
      For Queries <a href="contact.jsp">Contact Us</a>
        </p>
    </div>


</body>

</html>