<?php
include('dbconnect.php');
$usern=$_POST["username"];
$name=$_POST["name"];
$pin1=$_POST["pin"];
$pin=(int)$pin1;
$name=$_POST["name"];
$phnum1=$_POST["phnum"];
$address=$_POST["address"];
$phonecode1=$_POST["phonecode"];
$phonecode=(int)$phonecode1;
$phnum=(int)$phnum1;
$email=$_POST["email"];
$query1="INSERT INTO user VALUES('".$usern."','".$name."','".$email."','".$address."',".$phnum.",".$phonecode.",".$pin.",0);";
mysql_query($query1);

?>
