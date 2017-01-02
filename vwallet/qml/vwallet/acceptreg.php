<?php
include('dbconnect.php');
$usern=$_POST["username"];
/*$pin=$_GET["pin"];
$name=$_GET["name"];
$phnum=$_GET["phnum"];
$address=$_GET["address"];
$phonecode=$_GET["phonecode"];
$email=$_GET["email"];
*/
//$query1="INSERT INTO user VALUES('".$usern."','".$name."','".$email."','".$address."','".$phnum."','".$phonecode."','".$pin."',NULL);";
$query1="INSERT INTO user VALUES('koushik','dgfhjkl','fghjkl','asdfcvbgnm',98098,012,1233,0);";
//$query1="INSERT INTO user(username) VALUES('".$usern."');";
mysql_query($query1);

?>
