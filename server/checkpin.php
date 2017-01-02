<?php
$status="true";
include('dbconnect.php');
$usern=$_POST["username"];
$pin1=$_POST["pin"];
$pin=(int)$pin1;
$query="SELECT * from user WHERE username='$usern' AND pin=$pin";
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
   $name = $doc->createElement( "usern" ); 
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
  $doc->save("checkstat.xml") ;
 
 //for getdetails php
 $query1="SELECT * from user WHERE username='$usern'";
 $result1=mysql_query($query1);
 $name=mysql_result($result1,0,'name');
 $balance=strval(mysql_result($result1,0,'balance'));

 $doc1 = new DOMDocument(); 
  $doc1->formatOutput = true; 
  $r1 = $doc1->createElement( "auth" ); 
  $doc1->appendChild( $r1 ); 
  $b1 = $doc1->createElement( "authsub" ); 
   $name1 = $doc1->createElement( "usern" ); 
  $name1->appendChild( 
  $doc1->createTextNode( $usern ) 
  ); 
  $b1->appendChild( $name1 ); 
  $fname1 = $doc1->createElement( "name" ); 
  $fname1->appendChild( 
  $doc1->createTextNode( $name ) 
  ); 
  $b1->appendChild( $fname1 ); 
  
  $stat1 = $doc1->createElement( "balance" ); 
  $stat1->appendChild( 
  $doc1->createTextNode( $balance ) 
  ); 
  $b1->appendChild( $stat1 ); 
  $r1->appendChild( $b1 ); 
  echo $doc1->saveXML(); 
  $doc1->save("getinfo.xml") ;
 }
else
{
$status="false";
echo $status;
$r = $doc->createElement( "auth" ); 
  $doc->appendChild( $r ); 
$b = $doc->createElement( "authsub" ); 
   $name = $doc->createElement( "usern" ); 
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
  $doc->save("checkstat.xml") ;
 }

?>

