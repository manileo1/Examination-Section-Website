<html>


<head>

<script>

    function go(){


        var s= document.myform.password.value;

        if(s.length<8){
            alert("Password lenght should be 8");
            return false;
        }
        else{
            return true;
        }
    }




</script>
<style>

body {
       background:black;
}
.button {
    background-color: #4CAF50;
    color: white;
    padding: 13px 32px;
    border: none;
    cursor: pointer;
    width:120px;
    margin-left:120px;

}

p {
    font-family: "Monospace";
    font-size:20px;
    color: #f2f2f2;
    margin-left:50px;
    
}

/* Add a hover effect for buttons */
button:hover {
    opacity: 0.8;
}

input[type=text], input[type=password] {
    
    padding: 5px 5px;
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
margin-right:50px;
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
            
                <h1 style="color:#e6ffee;"> &nbsp &nbsp&nbsp &nbsp&nbsp &nbsp Enter Examination Results Data</h1>
          
            <form action="more.php" method="post">
                <div id="main">
                    <p>Select Exam :<select  class="styled-select blue semi-square" name="test">
                        <option value="sem_1">sem_1</option>
                        <option value="monthly_1">monthly_1</option>

                        <option value="assignment_1">assignment_1</option>
                        <option value="2_sem_1">2_sem_1</option>
                        <option value="2_monthly_1">2_monthly_1</option>

                        <option value="2_assignment_1">2_assignment_1</option>
                        <option value="3_sem_1">3_sem_1</option>
                        <option value="3_monthly_1">3_monthly_1</option>

                        <option value="3_assignment_1">3_assignment_1</option>
                        <option value="4_sem_1">4_sem_1</option>
                        <option value="4_monthly_1">4_monthly_1</option>

                        <option value="4_assignment_1">4_assignment_1</option>
                        </select></p><br/>
                 <p>Subject:<input type="text" placeholder="Enter suject" name="sub1">&nbsp&nbsp&nbspMarks:<input type="number" placeholder="Enter marks" name="mark1">&nbsp&nbsp&nbsp Code:<input type="text" placeholder="Enter code" name="code1"></p></br>
                 <p>Subject:<input type="text" placeholder="Enter suject" name="sub2">&nbsp&nbsp&nbspMarks:<input type="number" placeholder="Enter marks" name="mark2">&nbsp&nbsp&nbsp Code:<input type="text" placeholder="Enter code" name="code2"></p><br/>
                 <p>Subject:<input type="text" placeholder="Enter suject" name="sub3">&nbsp&nbsp&nbspMarks:<input type="number" placeholder="Enter marks" name="mark3">&nbsp&nbsp&nbsp Code:<input type="text" placeholder="Enter code"  name="code3"></p><br/>
                 <p>Subject:<input type="text" placeholder="Enter suject" name="sub4">&nbsp&nbsp&nbspMarks:<input type="number" placeholder="Enter marks" name="mark4">&nbsp&nbsp&nbsp Code:<input type="text" placeholder="Enter code" name="code4"></p><br/>
                 <p>Subject:<input type="text" placeholder="Enter suject" name="sub5">&nbsp&nbsp&nbspMarks:<input type="number" placeholder="Enter marks" name="mark5">&nbsp&nbsp&nbsp Code:<input type="text" placeholder="Enter code" name="code5"></p><br/>

                 <p><input class="button" type="submit" value="Submit"></p>
               </div>
            </form>
    
    
</div>
</body>
</html>