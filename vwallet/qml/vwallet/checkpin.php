<?php
$status="true";
include('dbconnect.php');
$usern=$_POST["username"];
$pin=(int)$_GET["pass"];
$query="SELECT password from user WHERE username='$usern' AND pin=$pin";
$result=mysql_query($query);
$num=mysql_numrows($result);
  $doc = new DOMDocument(); 
  $doc->formatOutput = true; 
  
if($num==1)
{	
echo $status;
$r = $doc->createElement( "auth" ); 
  $doc->appendChild( $r ); 
  $b = $doc->createElement( "authsub" ); 
   $name = $doc->createElement( "username" ); 
  $name->appendChild( 
  $doc->createTextNode( $usern ) 
  ); 
  $b->appendChild( $name ); 
  $stat = $doc->createElement( "status" ); 
  $stat->appendChild( 
  $doc->createTextNode( $status ) 
  ); 
  $b->appendChild( $stat ); 
  $r->appendChild( $b ); 
  echo $doc->saveXML(); 
  $doc->save("http:\\www.psgtecheclub.com\checkstat.xml") ;
 }
else
{
$status="false";
echo $status;
$r = $doc->createElement( "auth" ); 
  $doc->appendChild( $r ); 
$b = $doc->createElement( "authsub" ); 
   $name = $doc->createElement( "username" ); 
  $name->appendChild( 
  $doc->createTextNode( $usern ) 
  ); 
  $b->appendChild( $name ); 
  $stat = $doc->createElement( "status" ); 
  $stat->appendChild( 
  $doc->createTextNode( $status ) 
  ); 
  $b->appendChild( $stat ); 
  $r->appendChild( $b ); 
  echo $doc->saveXML(); 
  $doc->save("http:\\www.psgtecheclub.com\checkstat.xml") ;
 }

?>

