<html>


<head>

<script>

    function go(){


        var s= document.myform.password.value;

        if(s.length<8){
            alert("Password length should be 8");
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
    margin-left:300px;
    
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
            
                <h1 style="color:#e6ffee;" align="center">Registration </h1>
                
    
   <form name="myform" action="ano.php" method="post" onsubmit="return go()">

<div id="main">



<p>Name:&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp<input type="text" name="name"></p>

<p>Username:&nbsp &nbsp<input type="text" name="uname"></p>

<p>Password:&nbsp &nbsp<input type="password" name="password"></p>

<p>Id :&nbsp &nbsp &nbsp&nbsp&nbsp <input type="text" name="id"></p>

<p>Year :&nbsp&nbsp &nbsp &nbsp<input type="text" name="year"></p>

<p>Department :<input type="text" name="dept"></p>

<p>Class:&nbsp&nbsp &nbsp &nbsp<input type="text" name="class"></p>

<p>Address :&nbsp &nbsp<input type="text" name="addrs"></p>

<p><input class="button" type="submit" value="Register"></p>

</div>
</form>
    
    
</div>
</body>
</html>