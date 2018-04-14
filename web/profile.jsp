
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>=Profile</title>
  
        <style>
            
            button {
                background-color: #e60000;
                color: white;
                padding: 13px 32px;
                border: none;
                cursor: pointer;
                width:100px;

            }
            p{
                color:#ffff99;
                margin-right:100px;
            }
            h1{
                color:white;
            }
            div{
                
                background-color: #262626;
                
                margin-right:220px;
                padding-bottom:20px;
                
                color:	 #ccccff;
;
            }
            
           
           </style>
    </head>
    <body>
        <%@page import = "java.sql.*"%>
        <div>
        
        <h1 align="center"> Profile</h1>
        
        <%
            try{
                
                Cookie cks[]=request.getCookies();
                
            String user= cks[0].getValue();
            if(user.equals("none")){
                
               request.getRequestDispatcher("loginn.jsp").forward(request, response);
            }
            else{
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam_section", "root", "");
            
            PreparedStatement ps= con.prepareStatement("select * from details where username=?");
            
            ps.setString(1,user);
            
            ResultSet rs= ps.executeQuery();
            
            
            while(rs.next()){
        
      %>
      <table align="center">
    <tr>
        <td> <p> Name: </p> </td>
             <td>
        <% 
                out.print(rs.getString("name"));
          %>
          </td>
    </tr>
      <tr>
       <td><p> Id: </p></td>
            <td>
          <% 
                out.print(rs.getString("id"));
          %>
          </td>
      </tr>
     
     
       
        <tr>
         <td><p> Dept: </p> </td>
              <td>
          <% 
                out.print(rs.getString("dept"));
          %>
          </td>
          </tr>
          <tr>
           <td><p> Address: </p> </td>
                <td>
          <% 
                out.print(rs.getString("address"));
            }
            }
            
            }
            
            catch ( Exception e1){
                    out.print(e1);
                    }
            
          %>
          </td>
          </tr>
      </table>
          
          <a href="loginn.jsp"><button>Logout</button></a>
        </div>
    </body>
</html>
