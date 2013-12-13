<?php 

include '../conf/config.php';

$link = sqlConnect();

$id = $_POST["id"];

$sql = "DELETE FROM scores WHERE id = ". sql($id);
$result_flag = mysql_query($sql);

if(!$result_flag){
	die(mysql_error());
}

sqlClose($link);

?>