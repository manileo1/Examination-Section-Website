<%-- 
    Document   : 1a.jsp
    Created on : 14 Oct, 2017, 4:08:20 PM
    Author     : iiitbasar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            td{
                color:#e6ffee;
                 padding-left:35px;
                 paddin-bottom:35px;
                
            }
            p{
                color:#e6f2ff;
            }
            
            th{
                
                padding-left:15px;
                padding-right:15px;
                padding-top:2px;
                padding-bottom:2px;
               
            }
            
           
            
            #want{
                
                color: #ccccff;
                background-color:#595959;
              
            }
            
            #new{
                margin-left:150px;
             
            }
            
            h1{
                
                color:white;
                background-color:red;
                margin-right:400px;
            }
            
            #val{
                color:white;
            }
            
            
        </style>
    </head>
<body>
    

<div id="new">
    
        <%@page import = "java.sql.*"%>
        
    <%
        
        Cookie cks[]=request.getCookies();
        
        String test= cks[1].getValue();
        String user= cks[0].getValue();
       %>
       
       
       <h1 align="center">
       
       <%
        out.print("Results- "+test);
        %>
        </h1>
       
       <%
        
        if(user.equals("none")){
                
               request.getRequestDispatcher("loginn.jsp").forward(request, response);
            }
        
        try{
             Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam_section", "root", "");
            
            PreparedStatement ps= con.prepareStatement("select * from details where username=?");
            
            ps.setString(1,user);
            
            ResultSet rs= ps.executeQuery();
            
            
            
            while(rs.next()){
               
%>  


<table>
    
    <tr>
        <td>
            <p>Name:</p>
        </td>
        <th id="val">
            <%
                out.print(rs.getString("name"));
               %>
        </th>
   
        <td>
            <p>Id:</p>
        </td>
        <th id="val">
            <%
                out.print(rs.getString("id"));
                
                
                
            }
         
        }
        catch(Exception e1){
            
            out.print(e1);
        }
               %>
        </th>
    </tr>
</table>
<table  cellspacing="25" style="background-color:#737373;">
    
    <tr>
        <th id="want"><p>Subject Code</p></th>
        <th id="want"><p>Subject Name</p></th>
        <th id="want"><p>Marks</p></th>
    </tr>
        <%
        
        
        try{
             Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+user, "root", "");
            
            PreparedStatement ps= con.prepareStatement("select * from "+test);
            
            
            ResultSet ds= ps.executeQuery();
            
            
            while(ds.next()){
  
%>


    
    <tr>
        <td>
             <%
                out.print(ds.getString("code"));
               %>
        
        </td>
         <td>
                <%
                out.print(ds.getString("name"));
                      %>
        
        </td>
         <td>
                <%
                out.print(ds.getString("marks"));
                      %>
        
        </td>
     
    </tr>
       
                
           <%     
            }
        }
        catch(SQLException e1){
            
                
             request.getRequestDispatcher("result.jsp").forward(request, response);
        }
               %>
      
</table>
        


</div>
</body>

</html>
