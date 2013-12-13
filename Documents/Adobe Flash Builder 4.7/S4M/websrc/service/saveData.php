<?php 

include '../conf/config.php';

debug("test");

$link = sqlConnect();

$score_uid = $_POST["score_uid"];
$rev = $_POST["score_version"];
$category_version_id = $_POST["category_version_id"];
$image_id = $_POST["image_id"];
$comment = $_POST["comment"];
$xml = $_POST["xml"];

$songname = $_POST["songname"];
$songname_kana = $_POST["songname_kana"];
$subtitle1 = $_POST["subtitle1"];
$subtitle1_kana = $_POST["subtitle1_kana"];
$subtitle2 = $_POST["subtitle2"];
$subtitle2_kana = $_POST["subtitle2_kana"];
$source = $_POST["source"];
$publish_place = $_POST["publish_place"];
$publisher = $_POST["publisher"];
$holder = $_POST["holder"];
$publish_year = $_POST["publish_year"];
$premiere_year = $_POST["premiere_year"];
$book_type = $_POST["book_type"];
$pages_and_lines = $_POST["pages_and_lines"];
$remarks = $_POST["remarks"];
$freecolumn = $_POST["freecolumn"];

debug("vars");

// FIXME Version Comment & User Name
$sql = sprintf("INSERT INTO score_versions (rev, score_uid, fuji_class_category_version_id, score_image_id, created, version_comment, xml, songname, subtitle1, subtitle2, songname_kana, subtitle1_kana, subtitle2_kana, source, publish_place, holder, publisher, publish_year, premiere_year, book_type, pages_and_lines, remarks, freecolumn) VALUES (%s, %s, %s, %s, now(), '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s')", 
				sql($rev), sql($score_uid), ($category_version_id)? sql($category_version_id) : 'NULL', sql($image_id), sql($comment), $xml, sql($songname), sql($subtitle1), sql($subtitle2), sql($songname_kana), sql($subtitle1_kana), sql($subtitle2_kana), sql($source), sql($publish_place), sql($holder), sql($publisher), sql($publish_year), sql($premiere_year), sql($book_type), sql($pages_and_lines), sql($remarks), sql($freecolumn));
$result_flag = mysql_query($sql);

if(!$result_flag){
	die(mysql_error());
}

$sql = "SELECT rev FROM score_versions WHERE score_uid = ". sql($score_uid) ." ORDER BY rev DESC LIMIT 0,1";
$result = mysql_query($sql);

if(!$result){
	die(mysql_error());
}

$rev = mysql_fetch_array($result, MYSQL_ASSOC)["rev"];

print $rev;

sqlClose($link);

?>