<?php
include('dbconnect.php');
$usern=$_POST["username"];
$pin=$_POST["pin"];
$name=$_POST["name"];
$phnum=$_POST["phnum"];
$address=$_POST["address"];
$phonecode=$_POST["phonecode"];
$email=$_POST["email"];
//$query1="INSERT INTO user VALUES('".$usern."','".$name."','".$email."','".$address."','".$phnum."','".$phonecode."','".$pin."',NULL);";
//$query1="INSERT INTO user VALUES('koushik','dgfhjkl','fghjkl','asdfcvbgnm',98098,012,1233,0);";
mysql_query($query1);

?>
