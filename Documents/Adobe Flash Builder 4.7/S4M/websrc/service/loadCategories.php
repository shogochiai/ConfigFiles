<?php 

include '../conf/config.php';

$link = sqlConnect();

$sql = "SELECT id, ident_name FROM fuji_class_category ORDER BY id";
$result = mysql_query($sql);

if(!$result){
	die(mysql_error());
}

header('Content-type: text/xml; charset="utf-8"');
$xmllist = "<?xml version='1.0' encoding='utf-8' ?><root>";

while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
	$xmllist .= sprintf("<category id='%s' label='%s' category_id='%s'>", $row["id"], $row["ident_name"], $row["id"]);
	$res = mysql_query("SELECT id, rev, version_comment FROM fuji_class_category_version WHERE category_id = " . $row["id"] ." ORDER BY rev");
	if(!$res){
		die(mysql_error());
	}
	while ($row = mysql_fetch_array($res, MYSQL_ASSOC)) {
		$xmllist .= sprintf("<revision id='%s' label='%s' rev='%s' category_id='%s'/>", $row["id"],
						 "r".$row["rev"]." ".$row["version_comment"], $row["rev"], $row["id"]);
	}
	$xmllist .= "</category>";

}
$xmllist .= "</root>";

print($xmllist);

sqlClose($link);

?>