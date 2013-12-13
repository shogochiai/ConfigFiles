<?php 

include '../conf/config.php';

$link = sqlConnect();

$score_uid = $_POST["score_id"];

$sql = "SELECT rev FROM score_versions WHERE score_uid = ". sql($score_uid) ." ORDER BY rev DESC LIMIT 0,1";
$result = mysql_query($sql);

if(!$result){
	die(mysql_error());
}

$rev = mysql_fetch_array($result, MYSQL_ASSOC)["rev"];

print $rev? $rev : 0;

sqlClose($link);

?>