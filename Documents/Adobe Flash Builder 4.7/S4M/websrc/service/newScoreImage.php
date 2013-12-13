<?php 

include '../conf/config.php';

if(!$_POST["image"]){
	die("image not uploaded");
}

$link = sqlConnect();

$score_uid = $_POST["score_id"];
$image = base64_decode($_POST["image"]);
$filename = $_POST["name"];

$sql = sprintf("INSERT INTO score_images (score_uid, filename, image, created) VALUES (%s, '%s', '%s', now())",
				sql($score_uid), sql($filename), sql($image));
$result_flag = mysql_query($sql);

if(!$result_flag){
	die(mysql_error());
}

$last_id = mysql_insert_id();

print $last_id;

sqlClose($link);

?>