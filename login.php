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
	
	if(isset($_POST['action']))
	{
		// handle $_POST
		$strSQL = "select count(*) from webuser where id = '".$_POST['txt_login']."' and password = md5('".$_POST['txt_password']."')";
		$rs = $db->Execute($strSQL) or die("can not verify webuser");
		
		$ok = $rs->fields[0];
		
		if($ok)
		{
			$_SESSION['authenticated'] = 1;
			$_SESSION['username'] = $_POST['txt_login'];
			header("location: main.php");
		}
		else
		{
			header("location: index.php");
		}
		
		exit;
	}
	
	// destroy session
	session_destroy();
	
	$smarty->assign("application_title", getLang($generic_conf_application_title, $generic_conf_lang));
	$smarty->assign("login_box_header", getLang("login information", $generic_conf_lang));
	$smarty->assign("lbl_login", getLang("username", $generic_conf_lang));
	$smarty->assign("lbl_password", getLang("password", $generic_conf_lang));
	$smarty->assign("btn_login", getLang("login", $generic_conf_lang));
	$smarty->display("login.tpl");
?>