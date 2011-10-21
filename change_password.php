<?php
	// require configuration file
	require_once("config.inc.php");
	
	// functions
	require_once($function_path."language.php");
	
	// include libraries path 
	include($adodb_path."adodb.inc.php");
	include($smarty_path."Smarty.class.php");
	//include($fpdf_path.'fpdf.php');
	
	// session
	session_start();
	if(!isset($_SESSION['authenticated']))
	{
		header("location: login.php");
	}
	
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
	
	if(!isset($_SESSION['username']))
	{
		header("location: logout.php");
	}
	
	if(isset($_POST['proceed']))
	{
		// check current password
		$strSQL = "select count(*) from webuser where id = '".$_SESSION['username']."' and password = md5('".$_POST['current_password']."')";
		$rs1 = $db->Execute($strSQL) or die("can not check current password");
		if($rs1->fields[0] != 1)
		{
			echo getLang("error", $generic_conf_lang).": ".getLang("invalid current password", $generic_conf_lang);
			exit;
		}
		
		// confirm new password
		if($_POST['new_password'] != $_POST['new_password_confirmation'])
		{
			echo getLang("error", $generic_conf_lang).": ".getLang("new password not confirmed", $generic_conf_lang);
			exit;
		}
		
		// change password
		$strSQL = "update webuser set password = md5('".$_POST['new_password']."') where id = '".$_SESSION['username']."'";
		$db->Execute($strSQL) or die("can not update password!");
		echo getLang("password has been updated", $generic_conf_lang);
		exit;
	}
	
	// create Template Engine Object
	$smarty = new Smarty;
	
	$smarty->assign('title', getLang("change password", $generic_conf_lang));
	$smarty->assign('current_password', getLang("current password", $generic_conf_lang));
	$smarty->assign('new_password', getLang("new password", $generic_conf_lang));
	$smarty->assign('new_password_confirmation', getLang("new password confirmation", $generic_conf_lang));
	$smarty->assign('proceed', getLang("proceed", $generic_conf_lang));
	$smarty->display('change_password.tpl');
?>