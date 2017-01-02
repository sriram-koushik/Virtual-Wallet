<?php
include('dbconnect.php');
$usern=$_POST["username"];
$vendorid=$_POST["vendorid"];
$value=$_POST["value"];
$query1="select * from user where username=$usern";
$result=mysql_query($query1);
$doc = new DOMDocument(); 
$doc->formatOutput = true; 
$query4="SELECT * FROM vendor where shopname=$vendorid";
$result4=mysql_query($query4);
$val=mysql_result($result,0,'balance');
if($val>=$value)
{
$queryy="UPDATE user set balance=balance+$value where username=$usen ";
mysql_query($queryy);
$queryx="UPDATE vendor set cashsofar=cashsofar+$value where shopname=$vendorid ";
mysql_query($queryx);

$r = $doc->createElement( "trans" ); 
  $doc->appendChild( $r ); 
  $b = $doc->createElement( "transsub" ); 
   $name = $doc->createElement( "usern" ); 
  $name->appendChild( 
  $doc->createTextNode("yes") 
  ); 
  $b->appendChild( $name ); 
  $stat = $doc->createElement( "status" ); 
  $stat->appendChild( 
  $doc->createTextNode( $val ) 
  ); 
  $b->appendChild( $stat ); 
  $r->appendChild( $b ); 
  echo $doc->saveXML(); 
  $doc->save("checktrans.xml") ;
 
 }
 
 else
{
$r = $doc->createElement( "trans" ); 
  $doc->appendChild( $r ); 
  $b = $doc->createElement( "transsub" ); 
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
  $doc->save("checktrans.xml") ;
 

 }
?>
 