<?php

$debug = true;

$protocol = "http";
$port = 8888;
$host = "localhost";
$dir = "/tobiume";
$service_dir = "/service";


$db_name = "tobiume_db";
$db_host = "localhost:8889";
$db_user = "root";
$db_pass = "root";

$baseUrl = $protocol . "://" . $host . ":" . $port . $dir;


//////////////////////////////////////////////////////////////

function debug($str)
{
	global $debug;
	if(!$debug) return;

	file_put_contents("/Users/yakolab/log.txt","[". date("Y/m/d (D) H:i:s", time()) ."] ". $str. "\n", FILE_APPEND);
}

function debug_var($vars)
{
	global $debug;
	if(!$debug) return;

	file_put_contents("/Users/yakolab/log.txt","[". date("Y/m/d (D) H:i:s", time()) ."] ". var_export($vars, true) . "\n", FILE_APPEND);
}

function sqlConnect()
{
	global $db_name;
	global $db_host;
	global $db_user;
	global $db_pass;

	$link = mysql_connect($db_host, $db_user, $db_pass);
	if(!$link){
		die(mysql_error());
	}

	$db_selected = mysql_select_db($db_name, $link);
	if (!$db_selected){
	    die(mysql_error());
	}

	mysql_set_charset('utf8');

	return $link;
}

function sql($val)
{
	return mysql_real_escape_string($val);
}

function sqlClose($link)
{
	mysql_close($link);
}

//////////////////////////////////////////////////////////////

?>