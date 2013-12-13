<?php 

include '../conf/config.php';

$link = sqlConnect();

$version_id = $_POST["version_id"];

$sql = "SELECT xml FROM score_versions WHERE id = ". $version_id;
$result = mysql_query($sql);

if(!$result){
	die(mysql_error());
}

$xml = mysql_fetch_array($result, MYSQL_ASSOC)["xml"];

print $xml;

sqlClose($link);

?>