<html>
<head>
<title>Examination System</title>
 <link rel="stylesheet" href="proj.css" type="text/css"/>

 <script>
 var url;
 function main(){
 document.getElementById('first').src ="loginn.jsp" ;
 }
 
 function profile(url){
 document.getElementById('first').src = url;
 }
 
 
 function go(url){
                document.cookie="username="+url;
            }
      
 </script>
	

</head>
	<body onload="main()">
	
	
<ul>
  <li><a onclick="profile('updates.jsp')">Home</a></li>
  <li><a onclick="profile('contact.jsp')">Contact</a></li>
  <li class="dropdown">
    <a class="dropbtn">Results</a>
      <div class="dropdown-content"> 
          

            <div class="sp" ><a>E1</a>
                      <div class="new">
                          
                <a href="mid.jsp" onclick="go('assignment_1')" >Assignments</a>
                          <a href="mid.jsp" onclick="go('monthly_1')">Monthly Tests </a>
                          <a href="mid.jsp" onclick="go('sem_1')">Semester</a>
                      </div>
            </div>
          
          
            <div class="sp" ><a>E2</a>
                    <div class="new">
                        
                <a href="mid.jsp" onclick="go('2_assignment_1')" >Assignments</a>
                       <a href="mid.jsp" onclick="go('2_monthly_1')">Monthly Tests </a>
                        <a href="mid.jsp" onclick="go('2_sem_1')">Semester</a>
                    </div>
            </div>
          
          
            <div class="sp" ><a>E3</a>
                    <div class="new">
                     
                <a href="mid.jsp" onclick="go('3_assignment_1')" >Assignments</a>
                     <a href="mid.jsp" onclick="go('3_monthly_1')">Monthly Tests </a>
                       <a href="mid.jsp" onclick="go('3_sem_1')">Semester</a>
                    </div>
            </div>
      
          
            <div class="sp" ><a>E4</a>
                    <div class="new">
                       
                <a href="mid.jsp" onclick="go('4_assignment_1')" >Assignments</a>
                      <a href="mid.jsp" onclick="go('4_monthly_1')">Monthly Tests </a>
                        <a href="mid.jsp" onclick="go('4_sem_1')">Semester</a>
                    </div>
            </div>
          
          
    </div>
  </li>
    <li  style="float:right;" class="dropdown" >
            <img class="dropbtn" width="20" height="20" src="new/boy-512.png"/>
                <div class="dropdown-content">
                    <a onclick="profile('profile.jsp')">Profile</a>
                    <a   onclick="profile('loginn.jsp')">Logout</a>
                </div>
                
                      
           </li>
           
</ul>



<div class="wrap">
  
  <button style="position:absolute;top:10px;left:10px" onclick="profile('profile.jsp')" class="button">Profile</button>
  <button style="position:absolute;top:80px;left:10px" onclick="profile('new/req.pdf')" class="button">Schedules</button>
  <button style="position:absolute;top:150px;left:10px"  onclick="profile('result.jsp')" class="button">Results</button>
  <button style="position:absolute;top:220px;left:10px" onclick="profile('fees.jsp')" class="button">Fees</button>
  <button style="position:absolute;top:290px;left:10px" onclick="profile('about.jsp')" class="button">About</button>
   
</div>
            <div><iframe id="first" style="position:relative;top:50px;left:250px;width:80%;height:475px;border:0" name="iframe" > </iframe>
</div>
   
<div id="mySidenav" class="sidenav">
    <a onclick="profile('updates.jsp')" id="about"><img id="lii" src="new/ar.png" width="25" height="15"/>&nbspUpdates</a>
</div> 

</body>
</html>^