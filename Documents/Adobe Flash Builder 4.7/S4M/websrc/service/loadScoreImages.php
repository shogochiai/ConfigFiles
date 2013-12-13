<?php 

include '../conf/config.php';

$link = sqlConnect();

$score_uid = $_POST["score_uid"];

$sql = "SELECT id, filename FROM score_images WHERE score_uid = ".sql($score_uid)." ORDER BY id DESC";
$result = mysql_query($sql);

if(!$result){
	die(mysql_error());
}

header('Content-type: text/xml; charset="utf-8"');
$xmllist = "<?xml version='1.0' encoding='utf-8' ?><root>";

while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
	$xmllist .= sprintf("<score-image id='%s' name='%s' image_id='%s'>",
							 $row["id"], $row["filename"], $row["id"]);
	$xmllist .= "</score-image>";

}
$xmllist .= "</root>";

print($xmllist);

sqlClose($link);

?>