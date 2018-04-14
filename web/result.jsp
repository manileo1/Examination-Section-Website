<html>


<head>
  

<style>

li:hover{
background-color:#262626;
color:#2e004d;
}

h3{
    text-align:center;
}

li{
list-style-type:none;
font-size:20px;
}

td{
    cell-padding:30px;
}

#asd{
font-family: fantasy;
color:#e6ffff;
}

tr a:hover{
background-color: #404040;
}

a{
text-decoration:none;
color:white;
text-shadow: 1px 1px 2px black; 
display:block;
font-family:"monospace";
padding:5px;
}

#box{
float:left;
padding:0px 30px 0px 30px;
margin:5px 5px 5px 5px;
background-color:#333333;
}

#new{
float:left;
margin-right:0px;
margin-left:5px;
background-color:#333333;
}

</style>


<script>
     function go(url){
                document.cookie="username="+url;
            }
            
</script>
</head>
<body>


<div id="new">
    
   
                <h1 align="center" style="color:white;">Results</h1>

 <table cellpadding="25">

        <tr>
            <td> <h3 id="asd">E1</h3></td>
             <td> <h3 id="asd">E2</h3></td>
              <td> <h3 id="asd">E3</h3></td>
               <td> <h3 id="asd">E4</h3></td>
        </tr>
    <%
         Cookie cks[]=request.getCookies();
                
         String and=cks[0].getValue();
          if(and.equals("none")){
                
               request.getRequestDispatcher("loginn.jsp").forward(request, response);
            }
        
          %>

          <tr>
              <td>
                <a href="result_sys.jsp" onclick="go('assignment_1')" >Assignments</a>
            </td>
            <td>
                <a href="result_sys.jsp" onclick="go('2_assignment_1')" >Assignments</a>
            </td>
            <td>
                <a href="result_sys.jsp" onclick="go('3_assignment_1')" >Assignments</a>
            </td>
            <td>
                <a href="result_sys.jsp" onclick="go('4_assignment_1')" >Assignments</a>
            </td>
          </tr>

          <tr>
              <td>
<a href="result_sys.jsp" onclick="go('monthly_1')">Monthly Tests </a>
            </td>
            <td>
<a href="result_sys.jsp" onclick="go('2_monthly_1')">Monthly Tests </a>
            </td>
            <td>
<a href="result_sys.jsp" onclick="go('3_monthly_1')">Monthly Tests </a>
            </td>
            <td>
<a href="result_sys.jsp" onclick="go('4_monthly_1')">Monthly Tests </a>
            </td>
          </tr>
  
  <tr>
              <td>
<a href="result_sys.jsp" onclick="go('sem_1')">Semester</a>
            </td>
            <td>
<a href="result_sys.jsp" onclick="go('2_sem_1')">Semester</a>
            </td>
            <td>
<a href="result_sys.jsp" onclick="go('3_sem_1')">Semester</a>
            </td>
            <td>
<a href="result_sys.jsp" onclick="go('4_sem_1')">Semester</a>
            </td>
          </tr>
          
 </table>
</div>
</body>
</html>