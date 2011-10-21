<?php
	// require configuration file
	require_once("config.inc.php");
	
	// functions
	require_once($function_path."language.php");
	
	// include libraries path 
	include($adodb_path."adodb.inc.php");
	include($smarty_path."Smarty.class.php");
	
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
	
	// check permission
	$strSQL = "select id_webuser_group from webuser where id = '".$_SESSION['username']."'";
	$rs_web_group = $db->Execute($strSQL) or die("can not get webgroup");
	$strSQL = "select permission from security_matrix where id_webuser_group = '".$rs_web_group->fields[0]."' and id_menus = 4";
	$rs_permission = $db->Execute($strSQL) or die("can not get permission");
	if($rs_permission->EOF)
	{
		header("location: logout.php");
	}
	else
	{
		if($rs_permission->fields[0] == 'N')
		{
			header("location: logout.php");
		}
	}
	
	if(isset($_POST['proceed']))
	{
		// confirm new password
		if($_POST['new_password'] != $_POST['new_password_confirmation'])
		{
			echo getLang("error", $generic_conf_lang).": ".getLang("new password not confirmed", $generic_conf_lang);
			exit;
		}
		
		// change password
		$strSQL = "update webuser set password = md5('".$_POST['new_password']."') where id = '".$_POST['id_webuser']."'";
		$db->Execute($strSQL) or die("can not update password!");
		echo getLang("password has been updated", $generic_conf_lang);
		exit;
	}
	
	// create Template Engine Object
	$smarty = new Smarty;
	
	$smarty->assign('title', getLang("manage password", $generic_conf_lang));
	$smarty->assign('id_webuser', getLang("id webuser", $generic_conf_lang));
	$smarty->assign('list_of_values', getLang("list of values", $generic_conf_lang));
	$smarty->assign('new_password', getLang("new password", $generic_conf_lang));
	$smarty->assign('new_password_confirmation', getLang("new password confirmation", $generic_conf_lang));
	$smarty->assign('proceed', getLang("proceed", $generic_conf_lang));
	$smarty->display('manage_password.tpl');
?>