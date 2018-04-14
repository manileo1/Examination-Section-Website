<%-- 
    Document   : fees
    Created on : 24 Oct, 2017, 11:33:48 AM
    Author     : iiitbasar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            le{
                
                background-color:#e6ffff;
            }
            ne{
                outline:none;
            }
            
            button {
    background-color: #0000b3;
    color: white;
    padding: 8px 24px;
    border: none;
    cursor: pointer;
    width:30px;
    border-radius:0px 10px 0px 0px;

}



tr{
    background-color:#f5f5f5;
    width:100px;
    border-radius: 5px;
}


h1{color:white;}
        



.styled-select {
   height:29px;
   color:white;
   overflow: hidden;
   width: 140px;
}



.blue    { background-color: #3b8ec2; }

.blue select    { 
    color:white;
}


        </style>
    </head>
    <body>
        <div>
            <h1 >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fees</h1>
            
            <table cellspacing="25" cellpadding="55">
                <tr>
                <td>
                        <h3>Apply</h3>
                        <form>
                            <p>   Type: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select  class="styled-select blue semi-square" name="type" >
                                    <option value="">Select Type</option>
                                <option  value="regular">Regular</option>
                                <option  value="remedial">Remedial</option>
                                <option  value="improv.">Improvement</option>

                         </select><br/>

                        Subject: &nbsp;&nbsp;&nbsp;<select  class="styled-select blue semi-square" name="sub" >
                                 <option  >Select Subject</option>
                                <option  value="Compiler design">Compiler Design</option>
                                <option  value="Micro-controller">Mpmc</option>
                                <option  value="Operating System">Operating System</option>
                                <option  value="Web Technologies">Web Technologies</option>
                                <option  value="Artificial Intelligence">Artificial Intelligence</option>
                                

                         </select><br/>
                               

                         <button type="submit">Apply</button><br/>

                        </p>
                        </form>
                </td>
                 <%@page import = "java.sql.*"%>
                 <%@page import = "java.util.Date"%>
                  <%@page import = "java.text.DateFormat"%>
                  
                  <%@page import = "java.text.SimpleDateFormat"%>
                  
                  
                 <%
                     
                    Cookie cks[] =request.getCookies();
                    
                    
                    
                    String db=cks[0].getValue();
                    
                    if(db.equals("none")){
                          request.getRequestDispatcher("loginn.jsp").forward(request, response);
                    }
                    
                    String type= request.getParameter("type");
                    String subject= request.getParameter("sub");
                    int amount=250;
                    
                    Date dat = new Date();
                    DateFormat df = new SimpleDateFormat("dd/mm/yyyy");
                   
                    String dt = df.format(dat);
                    
                    
                        if(type!="" && type!=null){
                      
                          
                       try{
        
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db, "root", "");
            
            PreparedStatement ps= con.prepareStatement("insert into fees values (?,?,?,?) ");
            
            ps.setString(1,type);
            ps.setInt(2,amount);
             ps.setString(3,dt);
             ps.setString(4,subject);
            
            int s=ps.executeUpdate();
               
     }
     catch(Exception e1){
         out.print(e1);
     }
                 }
            
                    
                  
                    
               %> 
                <td>
                    <h3>Record</h3>
                    <%
                      
                       try{
        
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db, "root", "");
            
            PreparedStatement ds= con.prepareStatement("select *from fees ");
            
            ResultSet ss= ds.executeQuery();
            boolean status=ss.next();
            
            if(!status){
                out.print("no previous records");
            }
            else{
                        while(ss.next()){
                            
                            out.print(ss.getString("type")+" :  "+ss.getInt("amount")+"  :  "+ss.getString("sub")+"  :  "+ss.getString("date")+"<br/>");
                        }
            }
                                  
     }
     catch(Exception e1){
         out.print(e1);
     }
                    %>
                </td>
               
                </tr>
                
            
            </table>
        </div>
        
    </body>
</html>
