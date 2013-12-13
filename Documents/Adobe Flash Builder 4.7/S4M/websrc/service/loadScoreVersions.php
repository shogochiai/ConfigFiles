<?php 

include '../conf/config.php';

$link = sqlConnect();

$score_id = $_POST["score_id"];

$sql = "SELECT id, rev, last_updated_user_id, created, version_comment, score_image_id, fuji_class_category_version_id FROM score_versions WHERE score_uid = ". sql($score_id) ." ORDER BY rev DESC";
$result = mysql_query($sql);

if(!$result){
	die(mysql_error());
}

header('Content-type: text/xml; charset="utf-8"');
$xmllist = "<?xml version='1.0' encoding='utf-8' ?><root>";

while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
	$xmllist .= sprintf("<revision id='%s' rev='%s' last_updated_user_id='%s' created='%s' comment='%s' score_image_id='%s' fuji_class_category_version_id='%s'>",
							 $row["id"], $row["rev"], $row["last_updated_user_id"], $row["created"], $row["version_comment"], $row["score_image_id"], $row["fuji_class_category_version_id"]);
	$xmllist .= "</revision>";

}
$xmllist .= "</root>";

print($xmllist);

sqlClose($link);

?>