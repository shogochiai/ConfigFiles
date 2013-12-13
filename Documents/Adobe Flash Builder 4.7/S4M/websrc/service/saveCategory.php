<?php 

include '../conf/config.php';

$link = sqlConnect();

// $xml = $_GET["xml"];
// $categoryId = $_GET["category_id"];
$xml = $_POST["xml"];
$categoryId = $_POST["category_id"];

$res = mysql_query("SELECT max(rev) FROM fuji_class_category_version WHERE category_id = " . sql($categoryId));
$pastRev = mysql_fetch_array($res)["max(rev)"];

// FIXME Version Comment & User Name
$sql = sprintf("INSERT INTO fuji_class_category_version (rev, category_id, created, xml) VALUES (%s, %s, now(), '%s')", 
					 $pastRev+1, sql($categoryId), $xml);
$result_flag = mysql_query($sql);

if(!$result_flag){
	die(mysql_error());
}

header('Content-type: text/plain; charset=utf-8');
print (string)((int)$pastRev+1);

sqlClose($link);

?>