<?php  
            session_start();
            $host = 'localhost:3306';  
            $class=$_POST["class"];
            $user = 'root';  
            $pass = '';  
            $dbname = 'exam_section';  
            $name=$_POST["name"];
            $uname=$_POST["uname"];

            $password = $_POST["password"];
            $id= $_POST["id"];
            $addrs=$_POST["addrs"];
            $dept=$_POST["dept"];
            $year=$_POST["year"];
            
                       $_SESSION["name"]=$uname;
                        
            $conn = mysqli_connect($host, $user, $pass,$dbname);  
            if(!$conn){  
              die('Could not connect: '.mysqli_connect_error());  
            }  
            echo 'Connected successfully<br/>';  

            $sql = "insert into details values('$name','$password','$uname','$id','$dept','$class','$addrs','$year')";  
            
            if(mysqli_query($conn, $sql)){  
                
            }else{  
            echo "Could not insert record: ". mysqli_error($conn);  
            }  


            mysqli_close($conn);  
            ?>
            <?php
           
                $host = 'localhost:3306';  
                $user = 'root';  
                $pass = '';  
                $conn = mysqli_connect($host, $user, $pass);  
                $db=$_SESSION["name"];
            

                if(! $conn )  
                {  
                  die('Could not connect: ' . mysqli_connect_error());  
                }  


                $sql = "create database `".$db."`";  
                if(mysqli_query( $conn,$sql)){  
                  echo "User Record Created";  
                }else{  
                echo "Sorry, database creation failed ".mysqli_error($conn);  
                }  
                mysqli_close($conn);  
               

            
            ?>  
              <?php
           
                $host = 'localhost:3306';  
                $user = 'root';  
                $pass = '';  
                
                $conn = mysqli_connect($host, $user, $pass,$db);  
                $db=$_SESSION["name"];
            

                if(! $conn )  
                {  
                  die('Could not connect: ' . mysqli_connect_error());  
                }  


                $sql = "create table fees (type char(20),amount int,date char(20),sub char(20))"; 
                if(mysqli_query( $conn,$sql)){ 
                }else{  
                echo "Sorry, fees table creation failed ".mysqli_error($conn);  
                }  
                mysqli_close($conn);  
               

            header("Location:next.php","true","301");
            
            ?>  
