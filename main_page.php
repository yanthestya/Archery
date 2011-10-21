<?php
	// require configuration file
	require_once("config.inc.php");
	
	// functions
	require_once($function_path."language.php");
	
	// include libraries path 
	include($adodb_path."adodb.inc.php");
	include($smarty_path."Smarty.class.php");
	
	// start out a session
	session_start();
	
	// create DB Object
	$db = ADONewConnection($db_type);
	$db_schema = ADONewConnection($db_type);
	if(!$db)
	{
		die("Invalid DB Type!");
	}

	if(!$db->Connect($db_host, $db_user, $db_password, $db_name))
	{
		die("Can not connect to DB!");
	}
	
	if(!$db_schema->NConnect("localhost", $db_user, $db_password, "information_schema"))
	{
		die("Can not connect to information_schema DB!");
	}
	
	// create Template Engine Object
	$smarty = new Smarty;
	
	$smarty->assign("welcome", getLang("welcome", $generic_conf_lang));
	$smarty->assign("welcome_note", "Please click on the appropriate menu in tree menu on the left.");
	$smarty->assign("copyright_note", "Developed by Leontinus Yanthestya (yanthestya@yahoo.com)");
	$smarty->display("main_page.tpl");
?>
