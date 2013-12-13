<?php 

include '../conf/config.php';

$link = sqlConnect();

$image_id = $_REQUEST["image_id"]; // GET & POST

$sql = "SELECT image FROM score_images WHERE id = ".sql($image_id)." LIMIT 0,1";
$result = mysql_query($sql);

if(!$result){
	die(mysql_error());
}

header('Content-type: image/png; charset="utf-8"');
$xmllist = "<?xml version='1.0' encoding='utf-8' ?><root>";
$img = mysql_fetch_array($result, MYSQL_ASSOC)["image"];
print($img);

sqlClose($link);

?>