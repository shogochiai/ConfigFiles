<?php 

include '../conf/config.php';

$link = sqlConnect();

$sql = "SELECT id, ident_name, last_updated_user_id, created, updated FROM scores ORDER BY id";
$result = mysql_query($sql);

if(!$result){
	die(mysql_error());
}

header('Content-type: text/xml; charset="utf-8"');
$xmllist = "<?xml version='1.0' encoding='utf-8' ?><root>";

while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
	$xmllist .= sprintf("<score id='%s' name='%s' last_updated_user_id='%s' created='%s' updated='%s'>",
							 $row["id"], $row["ident_name"], $row["last_updated_user_id"], $row["created"], $row["updated"]);
	$xmllist .= "</score>";

}
$xmllist .= "</root>";

print($xmllist);

sqlClose($link);

?>