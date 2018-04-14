<html>

<body>


<?php  
session_start();
 $db=$_SESSION["name"];
$host = 'localhost:3306';  
$user = 'root';  
$pass = '';    
$test=$_POST["test"];

$sub1=$_POST["sub1"];
$mark1=$_POST["mark1"];
$code1=$_POST["code1"];


$sub2=$_POST["sub2"];
$mark2=$_POST["mark2"];
$code2=$_POST["code2"];

$sub3=$_POST["sub3"];
$mark3=$_POST["mark3"];
$code3=$_POST["code3"];

$sub4=$_POST["sub4"];
$mark4=$_POST["mark4"];
$code4=$_POST["code4"];

$sub5=$_POST["sub5"];
$mark5=$_POST["mark5"];
$code5=$_POST["code5"];

$conn = mysqli_connect($host, $user, $pass, $db); 
if(! $conn )  
{  
  die('Could not connect: ' . mysqli_connect_error());  
}  

  

$sql = "create table `".$test."` (code char(20),name char(20),mark int)";
if(mysqli_query($conn, $sql)){ 
    echo "Exam Record created";  
}else{  
    echo "Could not create table: ". mysqli_error($conn);  
}    
mysqli_close($conn);  
?>  

<?php  
$host = 'localhost:3306';  
$user = 'root';  
$pass = '';  
  
$conn = mysqli_connect($host, $user, $pass,$db);  
if(!$conn){  
  die('Could not connect: '.mysqli_connect_error());  
}  
  
$sql = "insert into`".$test."` values ('$code1','$sub1','$mark1')";  
if(mysqli_query($conn, $sql)){  
 echo "";  
}else{  
echo "Could not insert record: ". mysqli_error($conn);  
}  
  
mysqli_close($conn);  
?>  



<?php  
$host = 'localhost:3306';  
$user = 'root';  
$pass = '';  
  
$conn = mysqli_connect($host, $user, $pass,$db);  
if(!$conn){  
  die('Could not connect: '.mysqli_connect_error());  
}  
echo 'Connected successfully<br/>';  
  
$sql = "insert into `".$test."` values ('$code2','$sub2','$mark2')";  
if(mysqli_query($conn, $sql)){  
 echo "";  
}else{  
echo "Could not insert record: ". mysqli_error($conn);  
}  
  
mysqli_close($conn);  
?>  
<?php  
$host = 'localhost:3306';  
$user = 'root';  
$pass = '';  
  
$conn = mysqli_connect($host, $user, $pass,$db);  
if(!$conn){  
  die('Could not connect: '.mysqli_connect_error());  
}  
echo 'Connected successfully<br/>';  
  $sql = "insert into `".$test."` values ('$code3','$sub3','$mark3')"; 
if(mysqli_query($conn, $sql)){ 
    echo "";   
}else{  
echo "Could not insert record: ". mysqli_error($conn);  
}  
  
mysqli_close($conn);  
?>  
<?php  
$host = 'localhost:3306';  
$user = 'root';  
$pass = '';  
  
$conn = mysqli_connect($host, $user, $pass,$db);  
if(!$conn){  
  die('Could not connect: '.mysqli_connect_error());  
}  
  $sql = "insert into `".$test."` values ('$code4','$sub4','$mark4')";  
if(mysqli_query($conn, $sql)){  
 echo "";  
}else{  
echo "Could not insert record: ". mysqli_error($conn);  
}  
  
mysqli_close($conn);  
?>  
<?php  
$host = 'localhost:3306';  
$user = 'root';  
$pass = '';  
  
$conn = mysqli_connect($host, $user, $pass,$db);  
if(!$conn){  
  die('Could not connect: '.mysqli_connect_error());  
}  
  $sql = "insert into `".$test."` values ('$code5','$sub5','$mark5')"; 
if(mysqli_query($conn, $sql)){  
echo "";  
}else{  
echo "Could not insert record: ". mysqli_error($conn);  
}  
 
mysqli_close($conn);  

            header("Location:next.php","true","301");
            ?>

</body>

</html>