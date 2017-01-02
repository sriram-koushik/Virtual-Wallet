<?php
$link = mysql_connect('localhost', 'psgteche_e360','cbe1234**');
if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}
  mysql_select_db('psgteche_e360'); 
?>