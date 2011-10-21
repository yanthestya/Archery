<?php
	// require configuration file
	require_once("config.inc.php");
	
	// functions
	require_once($function_path."language.php");
	
	// include libraries path 
	include($adodb_path."adodb.inc.php");
	include($smarty_path."Smarty.class.php");
	
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
	
	// get header
	$strSQL = "select column_name from columns where table_schema = '".$db_name."' and table_name = '".$_GET['table_name']."'"; 
	$rs_header = $db_schema->Execute($strSQL) or die("Can not get Column list!");
	$arrayHeader = array();
	$arrayHeaderRaw = array();
	while(!$rs_header->EOF)
	{
		array_push($arrayHeader, getLang(str_replace("_", " ", $rs_header->fields[0]), $generic_conf_lang));
		array_push($arrayHeaderRaw, $rs_header->fields[0]);
		$rs_header->MoveNext();
	}
	$header_count = count($arrayHeaderRaw) + 1;
	
	// get main data
	$strSQL = "select `".$arrayHeaderRaw[0];
	for($i=1 ; $i<$header_count-1 ; $i++)
	{
		$strSQL = $strSQL."`, `".$arrayHeaderRaw[$i];
	}
	$strSQL = $strSQL."` from ".$_GET['table_name'];
	$rs_data = $db->Execute($strSQL) or die("can not get data");
	$arrayData = array();
	while(!$rs_data->EOF)
	{
		$arrayDataItem = array();
		
		for($i=0 ; $i<$header_count-1 ; $i++)
		{
			array_push($arrayDataItem, $rs_data->fields[$i]);
		}
		
		array_push($arrayData, $arrayDataItem);
		
		$rs_data->MoveNext();
	}
	
	$smarty->assign("title", getLang("list of values", $generic_conf_lang));
	$smarty->assign("parent_col", $_GET['col_name']);
	$smarty->assign("table_name", $_GET['table_name']);
	$smarty->assign("cancel", getLang("cancel", $generic_conf_lang));
	$smarty->assign("header_count", $header_count);
	$smarty->assign("action", getLang("action", $generic_conf_lang));
	$smarty->assign("headers", $arrayHeader);
	$smarty->assign("data", $arrayData);
	$smarty->display("lov.tpl");
?>