<?php
include('dbconnect.php');
$usern=$_POST["username"];
$prenum=(int)$_POST["num"];
$query1="select * from prepaid where cardno=$prenum";
$result=mysql_query($query1);
$num=mysql_numrows($result);
if($num==1)
{

$query="INSERT INTO prepaid(owner,availability) values('".$usern."',"sold") where cardno=$prenum ";
mysql_query($query);
$query1="SELECT * FROM prepaid where cardno=$prenum";
$result=mysql_query($query1);
$val=mysql_result($result,0,'cash');
$query2="UPDATE user SET balance=balance+$val where username='".$usern."'";
mysql_query($query2);
$r = $doc->createElement( "prepaid" ); 
  $doc->appendChild( $r ); 
  $b = $doc->createElement( "prepaidsub" ); 
   $name = $doc->createElement( "usern" ); 
  $name->appendChild( 
  $doc->createTextNode( $usern ) 
  ); 
  $b->appendChild( $name ); 
  $stat = $doc->createElement( "status" ); 
  $stat->appendChild( 
  $doc->createTextNode( $val ) 
  ); 
  $b->appendChild( $stat ); 
  $r->appendChild( $b ); 
  echo $doc->saveXML(); 
  $doc->save("checkrecharge.xml") ;
 
 }
 
 else
{
$r = $doc->createElement( "prepaid" ); 
  $doc->appendChild( $r ); 
  $b = $doc->createElement( "prepaidsub" ); 
   $name = $doc->createElement( "usern" ); 
  $name->appendChild( 
  $doc->createTextNode( $usern ) 
  ); 
  $b->appendChild( $name ); 
  $stat = $doc->createElement( "status" ); 
  $stat->appendChild( 
  $doc->createTextNode( "no" ) 
  ); 
  $b->appendChild( $stat ); 
  $r->appendChild( $b ); 
  echo $doc->saveXML(); 
  $doc->save("checkrecharge.xml") ;
 

 }
?>
 