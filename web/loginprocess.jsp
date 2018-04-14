<html>


<head>
    <style>
        #qw{
            color:red;
            font-size:15px;
        }
        
    </style>

</head>

<body >
<div id="in">

<div id="main">
    
        <%@page import = "java.sql.*"%>
        
<%
      Cookie cks[] =request.getCookies();
    int i;
  
    
    String name= request.getParameter("name");
    String password= request.getParameter("password");
    
    boolean status;
    
    
     try{
        
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam_section", "root", "");
            
            PreparedStatement ps= con.prepareStatement("select * from details where username=? and password=?");
            
            ps.setString(1,name);
            ps.setString(2,password);
            
            
            ResultSet rs= ps.executeQuery();
            
            status=rs.next();
            
            if(status){
                
               
                
                cks[0].setValue(name);
                response.addCookie(cks[0]);
               request.getRequestDispatcher("updates.jsp").forward(request, response);
            }
            else{
                request.getRequestDispatcher("loginn.jsp").include(request, response);
                out.print("<p id='qw'>Username or Password incorrect !</p>");
            }
     }
     catch(Exception e1){
         out.print(e1);
     }
            
  %>

</div>
</div>
</body>
</html>