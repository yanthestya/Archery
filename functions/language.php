<?php
// functions to get words in the requested language
// parameter:
// $word  ---> word requested
// $lang  ---> word lang
function getLang($word, $lang)
{
	global $db;
	$strSQL = "SELECT $lang FROM language WHERE words = \"$word\"";
	$result = &$db->Execute($strSQL);
	return $result->fields[0];
}
?>