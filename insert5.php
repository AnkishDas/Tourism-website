<?php

$servername = "localhost:3306";
//$servername = "127.0.0.1:3306"; 
$username = "root";
$password = "";
$dbname= "project";
$con = new mysqli($servername, $username, $password, $dbname);
if(!$con)
die("unable to connect database");

if($_SERVER["REQUEST_METHOD"] == "POST") {

//$uname = $_post['username'];
//$passwrd = $_post['password'];
//$gender = $_post['gender'];
//$email = $_post['email'];
//$phonecode = $_post['phonecode'];
//$phone = $_post['phone'];


//$uname = mysqli_real_escape_string($con,$_post['username']);
//$passwrd = mysqli_real_escape_string($con,$_post['password']);
//$gender = mysqli_real_escape_string($con,$_post['gender"']);
//$email = mysqli_real_escape_string($con,$_post['email']);
//$phonecode = mysqli_real_escape_string($con,$_post['pfonecode']);
//$phone = mysqli_real_escape_string($con,$_post['phone']);

$uname =$_POST["username"];
$passwrd = $_POST["password"];
$gender = $_POST["gender"];
$email =$_POST["email"];
$phonecode = $_POST["phonecode"];
$phone = $_POST["phone"];
$destination = $_POST["destination"];
$member = $_POST["member"];
$qry="insert into registration_two(username,password,gender,email,phonecode,phone,destination,member)values('$uname','$passwrd','$gender','$email','$phonecode','$phone','$destination','$member')";
//echo("$qry");
if ($con->query($qry) === TRUE)
{
  echo "New record created successfully";
}
 else 
 {
  echo "Error: " . $qry . "<br>" . $con->error;
}
}
?>
<br/>
<a href="registration2.html">New Entry</a>
