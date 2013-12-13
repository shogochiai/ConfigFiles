<?php 

include '../conf/config.php';

$link = sqlConnect();

// $category_id = $_POST["id"];
// $rev = $_POST["rev"];

$category_id = $_GET["id"];
$rev = $_GET["rev"];

header('Content-type: text/xml; charset="utf-8"');

$sql = "";
if($rev == -1){
	$res = mysql_query("SELECT count(id) FROM fuji_class_category_version WHERE category_id =" . sql($category_id));
	if(mysql_fetch_array($res, MYSQL_ASSOC)["count(id)"] == "0"){
		print "<?xml version='1.0' encoding='utf-8' ?><root/>";
		exit();
	}

	$sql = "SELECT xml FROM fuji_class_category_version WHERE category_id =" . sql($category_id) . " ORDER BY rev DESC LIMIT 0, 1";
}else{
	$sql = "SELECT xml FROM fuji_class_category_version WHERE category_id =" . sql($category_id) . " AND rev =" . sql($rev);
}



$result = mysql_query($sql);

if(!$result){
	die(mysql_error());
}

$row = mysql_fetch_array($result, MYSQL_ASSOC);

$xml = "<?xml version='1.0' encoding='utf-8' ?><root>"; 
$xml .= $row? base64_decode($row["xml"]) : "";
$xml .= "</root>";

print($xml);

sqlClose($link);

?>