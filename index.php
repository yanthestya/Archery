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
	
	// create Template Engine Object
	$smarty = new Smarty;
	
	// menu info
	if(!isset($_GET['menu_id']))
	{
		die("Invalid Menu ID");
	}
	$strSQL = "select description, list_view, add_table from menus where id = ".$_GET['menu_id'];
	$rs = $db->Execute($strSQL) or die("Can not get Menu Info<br>");
	$menu_description = $rs->fields[0];
	$menu_list_view = $rs->fields[1];
	$menu_add_table = $rs->fields[2];
	
	if(!isset($_GET['action']))
	{
		die("Action not defined!");
	}
	// determine action, no action means invalid command
	switch(strtolower($_GET['action']))
	{
		case "list" :
			// disable command
			if(isset($_GET['disable']))
			{
				$disabled_commands = explode(",", $_GET['disable']);
				foreach($disabled_commands as $command)
				{
					if($command == "add")
					{
						$disable_add = 1;
					}
					else if($command == "edit")
					{
						$disable_edit = 1;
					}
					else if($command == "delete")
					{
						$disable_delete = 1;
					}
				}
			}
			
			// header
			$strSQL = "desc ".$menu_list_view;
			$rs = $db->Execute($strSQL) or die("Can not get Header Data");
			$header = array();
			$td = array();
			$cols_type = array();
			while(!$rs->EOF)
			{
				if(strstr($rs->fields[1], "double"))
				{
					array_push($td, "align=\"right\"");
					array_push($cols_type, "double");
				}
				else if(strstr($rs->fields[1], "bigint"))
				{
					array_push($td, "align=\"right\"");
					array_push($cols_type, "bigint");
				}
				else if(strstr($rs->fields[1], "enum"))
				{
					array_push($td, "align=\"center\"");
					array_push($cols_type, "enum");
				}
				else
				{
					array_push($td, "align=\"left\"");
					array_push($cols_type, "text");
				}
			
				array_push($header, getLang($rs->fields[0], $generic_conf_lang));
				$rs->MoveNext();
			}
			$header = implode(",", $header);
			$header = $header.",".getLang("action", $generic_conf_lang);
			
			// data
			$strSQL = "select * from ".$menu_list_view;
			$rs = $db->Execute($strSQL) or die("Can not get List Data");
			$data = array();
			$col = count($rs->fields)/2;
			while(!$rs->EOF)
			{
				for($i=0 ; $i<$col ; $i++)
				{
					if($cols_type[$i] == "enum")
					{
						array_push($data, getLang($rs->fields[$i], $generic_conf_lang));
					}
					else if($cols_type[$i] == "double")
					{
						array_push($data, number_format($rs->fields[$i], 2, '.', ','));
					}
					else
					{
						array_push($data, $rs->fields[$i]);
					}
				}
				
				$action_string = "";
				if(!isset($disable_edit) && !isset($disable_delete))
				{
					$action_string = "<a href=\"".$_SERVER['PHP_SELF']."?menu_id=".$_GET['menu_id']."&action=edit&data_id=".$rs->fields[0]."\">Edit</a> <a href=\"".$_SERVER['PHP_SELF']."?menu_id=".$_GET['menu_id']."&action=delete&data_id=".$rs->fields[0]."\">Delete</a>";
				}
				else if(isset($disable_edit) && isset($disable_delete))
				{
					$action_string = "&nbsp;";
				}
				else if(isset($disable_edit) && !isset($disable_delete))
				{
					$action_string = "<a href=\"".$_SERVER['PHP_SELF']."?menu_id=".$_GET['menu_id']."&action=delete&data_id=".$rs->fields[0]."\">Delete</a>";
				}
				else if(!isset($disable_edit) && isset($disable_delete))
				{
					$action_string = "<a href=\"".$_SERVER['PHP_SELF']."?menu_id=".$_GET['menu_id']."&action=edit&data_id=".$rs->fields[0]."\">Edit</a>";
				}
				
				array_push($data, $action_string);
				
				$rs->MoveNext();
			}
			
			// load data
			$smarty->assign("title", getLang($menu_description, $generic_conf_lang));
			if(!isset($disable_add))
			{
				$smarty->assign("add_command", "<a href=\"".$_SERVER['PHP_SELF']."?menu_id=".$_GET['menu_id']."&action=add\">".getLang("add", $generic_conf_lang)."</a>");
			}
			$smarty->assign("header", $header);
			$smarty->assign("td", $td); 
			$smarty->assign("data", $data);
			$smarty->display("list.tpl");
			break;
		case "list_approve" :
			// disable command
			$disable_add = 1;
			$disable_delete = 1;
			
			// header
			$strSQL = "desc ".$menu_list_view;
			$rs = $db->Execute($strSQL) or die("Can not get Header Data");
			$header = array();
			$td = array();
			$cols_type = array();
			while(!$rs->EOF)
			{
				if(strstr($rs->fields[1], "double"))
				{
					array_push($td, "align=\"right\"");
					array_push($cols_type, "double");
				}
				else if(strstr($rs->fields[1], "bigint"))
				{
					array_push($td, "align=\"right\"");
					array_push($cols_type, "bigint");
				}
				else if(strstr($rs->fields[1], "enum"))
				{
					array_push($td, "align=\"center\"");
					array_push($cols_type, "enum");
				}
				else
				{
					array_push($td, "align=\"left\"");
					array_push($cols_type, "text");
				}
			
				array_push($header, getLang($rs->fields[0], $generic_conf_lang));
				$rs->MoveNext();
			}
			$header = implode(",", $header);
			$header = $header.",".getLang("action", $generic_conf_lang);
			
			// data
			$strSQL = "select * from ".$menu_list_view;
			$rs = $db->Execute($strSQL) or die("Can not get List Data");
			$data = array();
			$col = count($rs->fields)/2;
			while(!$rs->EOF)
			{
				for($i=0 ; $i<$col ; $i++)
				{
					if($cols_type[$i] == "enum")
					{
						array_push($data, getLang($rs->fields[$i], $generic_conf_lang));
					}
					else if($cols_type[$i] == "double")
					{
						array_push($data, number_format($rs->fields[$i], 2, '.', ','));
					}
					else
					{
						array_push($data, $rs->fields[$i]);
					}
				}
				
				$action_string = "";
				if(!isset($disable_edit) && !isset($disable_delete))
				{
					$action_string = "<a href=\"".$_SERVER['PHP_SELF']."?menu_id=".$_GET['menu_id']."&action=edit&data_id=".$rs->fields[0]."\">Edit</a> <a href=\"".$_SERVER['PHP_SELF']."?menu_id=".$_GET['menu_id']."&action=delete&data_id=".$rs->fields[0]."\">Delete</a>";
				}
				else if(isset($disable_edit) && isset($disable_delete))
				{
					$action_string = "&nbsp;";
				}
				else if(isset($disable_edit) && !isset($disable_delete))
				{
					$action_string = "<a href=\"".$_SERVER['PHP_SELF']."?menu_id=".$_GET['menu_id']."&action=delete&data_id=".$rs->fields[0]."\">Delete</a>";
				}
				else if(!isset($disable_edit) && isset($disable_delete))
				{
					$action_string = "<a href=\"".$_SERVER['PHP_SELF']."?menu_id=".$_GET['menu_id']."&action=edit_approve&data_id=".$rs->fields[0]."\">Edit</a>";
				}
				
				array_push($data, $action_string);
				
				$rs->MoveNext();
			}
			
			// load data
			$smarty->assign("title", getLang($menu_description, $generic_conf_lang));
			if(!isset($disable_add))
			{
				$smarty->assign("add_command", "<a href=\"".$_SERVER['PHP_SELF']."?menu_id=".$_GET['menu_id']."&action=add\">".getLang("add", $generic_conf_lang)."</a>");
			}
			$smarty->assign("header", $header);
			$smarty->assign("td", $td);
			$smarty->assign("data", $data);
			$smarty->display("list.tpl");
			break;
		case "report" :
			// header
			$strSQL = "desc ".$menu_list_view;
			$rs = $db->Execute($strSQL) or die("Can not get Header Data");
			$header = array();
			while(!$rs->EOF)
			{
				array_push($header, getLang($rs->fields[0], $generic_conf_lang));
				$rs->MoveNext();
			}
			$header = implode(",", $header);
			
			// data
			$strSQL = "select * from ".$menu_list_view;
			$rs = $db->Execute($strSQL) or die("Can not get List Data");
			$data = array();
			$col = count($rs->fields)/2;
			while(!$rs->EOF)
			{
				for($i=0 ; $i<$col ; $i++)
				{
					array_push($data, $rs->fields[$i]);
				}
				
				$rs->MoveNext();
			}
			
			// load data
			$smarty->assign("title", getLang($menu_description, $generic_conf_lang));
			$smarty->assign("header", $header);
			$smarty->assign("data", $data);
			$smarty->display("report.tpl");
			break;
		case "add":
			// get columns list for 'add_table'
			$strSQL = "select column_name, column_type from columns where table_schema = '".$db_name."' and table_name = '".$menu_add_table."'";
			$rs = $db_schema->Execute($strSQL) or die("Can not get Column list!");
			
			// create exception list for 'add_table'
			$cols_exception = array();
			$strSQL = "select column_name from menus_exception_add where id_menus = ".$_GET['menu_id'];
			$rs_exception = $db->Execute($strSQL) or die("can not get exception column list");
			while(!$rs_exception->EOF)
			{
				array_push($cols_exception, $rs_exception->fields[0]);
				
				$rs_exception->MoveNext();
			}
			
			$cols = array();
			$cols_key = array("description", "type");
			while(!$rs->EOF)
			{
				// check for exception
				$is_exception = 0;
				foreach ($cols_exception as $exception)
				{
					if($rs->fields[0] == $exception)
					{
						$is_exception = 1;
						break;
					}
				}
				
				if(!$is_exception)
				{
					$cols_value = array(getLang(str_replace("_", " ",$rs->fields[0]), $generic_conf_lang));
					
					// get coloumns type
					$strSQL = "select REFERENCED_TABLE_NAME from KEY_COLUMN_USAGE where TABLE_SCHEMA = '".$db_name."' and TABLE_NAME = '".$menu_add_table."' and COLUMN_NAME = '".$rs->fields[0]."'";
					$rs_col_type = $db_schema->Execute($strSQL) or die ("Can not get Column type");
					
					if(is_null($rs_col_type->fields[0])) 
					{
						if(strstr($rs->fields[1], "enum"))
						{
							$values = strstr($rs->fields[1], "(");
							$values = substr($values, 1);
							$values = strrev($values);
							$values = substr($values, 1);
							$values = strrev($values);
							$values = explode(",", $values);
							
							$cols_type = "<select name=\"".$rs->fields[0]."\">";
							foreach($values as $value)
							{
								$value_select = substr($value, 1);
								$value_select = strrev($value_select);
								$value_select = substr($value_select, 1);
								$value_select = strrev($value_select);
							
								$cols_type = $cols_type."<option value=\"".$value_select."\">".getLang($value_select, $generic_conf_lang)."</option>";
							}
							$cols_type = $cols_type."</select>";
						}
						else if(strstr($rs->fields[1], "date"))
						{
							$cols_type = "<input type=\"text\" name=\"".$rs->fields[0]."\" id=\"".$rs->fields[0]."\" datepicker=\"true\" datepicker_format=\"YYYY-MM-DD\">";
						}
						else if(strstr($rs->fields[1], "text"))
						{
							$cols_type = "<textarea name=\"".$rs->fields[0]."\" rows=\"5\" cols=\"55\"></textarea>";
						}
						else
						{
							$cols_type = "<input type=\"text\" name=\"".$rs->fields[0]."\">";
						}
					}
					else
					{
						$cols_type = "<input type=\"text\" name=\"".$rs->fields[0]."\"><input type=\"button\" name=\"btnLoV[]\" value=\"".getLang("list of values", $generic_conf_lang)."\" onClick=\"window.open('lov.php?table_name=".$rs_col_type->fields[0]."&col_name=".$rs->fields[0]."', '_blank', 'location=no,resizable=yes,scrollbars=yes,toolbar=no,status=no');\">";
					}
					
					array_push($cols_value, $cols_type);
					
					array_push($cols, array_combine($cols_key, $cols_value));
				}
			
				$rs->MoveNext();
			}
			
			$smarty->assign("title", getLang($menu_description, $generic_conf_lang));
			$smarty->assign("add", getLang("add", $generic_conf_lang));
			$smarty->assign("menu_id", $_GET['menu_id']);
			$smarty->assign("cols", $cols);
			$smarty->assign("proceed", getLang("proceed", $generic_conf_lang));
			$smarty->display("add_simple.tpl"); 
			break;
		case "add_action":
			// prepare the sql statement
			$strSQL = "insert into ".$menu_add_table." (";
			foreach ($_POST as $key=>$value)
			{
				$strSQL = $strSQL.$key.", ";
			}
			$strSQL = substr($strSQL, 0, strlen($strSQL)-2).")";
			$strSQL = $strSQL." values (";
			foreach ($_POST as $value)
			{
				$strSQL = $strSQL."'".$value."', ";
			}
			$strSQL = substr($strSQL, 0, strlen($strSQL)-2).")";
			$db->Execute($strSQL) or die("can not do insert!");
			
			header("location: ?menu_id=".$_GET['menu_id']."&action=list");
			break;
		case "delete":
			// prepare sql statement
			$strSQL = "delete from ".$menu_add_table." where id = '".$_GET['data_id']."'";
			$db->Execute($strSQL) or die("can not do delete!");
		
			header("location: ?menu_id=".$_GET['menu_id']."&action=list");
			break;
		case "edit":
			$strSQL = "select edit_type from menus where id = ".$_GET['menu_id'];
			$rsEditType = $db->Execute($strSQL) or die("can not determine edit type");
			if($rsEditType->fields[0] == "smpl")
			{
				// simple edit type
				// get columns list for 'add_table'
				$strSQL = "select column_name, column_type from columns where table_schema = '".$db_name."' and table_name = '".$menu_add_table."'";
				$rs = $db_schema->Execute($strSQL) or die("Can not get Column list!");
				
				// create exception list for 'add_table'
				$cols_exception = array();
				$strSQL = "select column_name from menus_exception_edit where id_menus = ".$_GET['menu_id'];
				$rs_exception = $db->Execute($strSQL) or die("can not get exception column list");
				while(!$rs_exception->EOF)
				{
					array_push($cols_exception, $rs_exception->fields[0]);
					
					$rs_exception->MoveNext();
				}
				
				$cols = array();
				$cols_key = array("description", "type");
				while(!$rs->EOF)
				{
					// check for exception
					$is_exception = 0;
					foreach ($cols_exception as $exception)
					{
						if($rs->fields[0] == $exception)
						{
							$is_exception = 1;
							break;
						}
					}
					
					if(!$is_exception)
					{
						// get value
						$strSQL = "select ".$rs->fields[0]." from ".$menu_add_table." where id = '".$_GET['data_id']."'";
						$rs_value = $db->Execute($strSQL) or die("can not get value for editing");

						$cols_value = array(getLang(str_replace("_", " ",$rs->fields[0]), $generic_conf_lang));
						
						// get coloumns type
						$strSQL = "select REFERENCED_TABLE_NAME from KEY_COLUMN_USAGE where TABLE_SCHEMA = '".$db_name."' and TABLE_NAME = '".$menu_add_table."' and COLUMN_NAME = '".$rs->fields[0]."'";
						$rs_col_type = $db_schema->Execute($strSQL) or die ("Can not get Column type");
						
						if(is_null($rs_col_type->fields[0])) 
						{
							if($rs->fields[0] == "id")
							{
								$cols_type = "<input type=\"text\" name=\"".$rs->fields[0]."\" value=\"".$rs_value->fields[0]."\" disabled>";
							}
							else
							{
								if(strstr($rs->fields[1], "enum"))
								{
									$values = strstr($rs->fields[1], "(");
									$values = substr($values, 1);
									$values = strrev($values);
									$values = substr($values, 1);
									$values = strrev($values);
									$values = explode(",", $values);
									
									$cols_type = "<select name=\"".$rs->fields[0]."\">";
									foreach($values as $value)
									{
										$value_select = substr($value, 1);
										$value_select = strrev($value_select);
										$value_select = substr($value_select, 1);
										$value_select = strrev($value_select);
									
										if($rs_value->fields[0] == $value_select)
										{
											$cols_type = $cols_type."<option value=\"".$value_select."\" selected>".getLang($value_select, $generic_conf_lang)."</option>";
										}
										else
										{
											$cols_type = $cols_type."<option value=\"".$value_select."\">".getLang($value_select, $generic_conf_lang)."</option>";
										}
									}
									$cols_type = $cols_type."</select>";
								}
								else if(strstr($rs->fields[1], "date"))
								{
									$cols_type = "<input type=\"text\" value=\"".$rs_value->fields[0]."\" name=\"".$rs->fields[0]."\" id=\"".$rs->fields[0]."\" datepicker=\"true\" datepicker_format=\"YYYY-MM-DD\">";
								}
								else if(strstr($rs->fields[1], "text"))
								{
									$cols_type = "<textarea name=\"".$rs->fields[0]."\" rows=\"5\" cols=\"55\">".$rs_value->fields[0]."</textarea>";
								}
								else
								{
									$cols_type = "<input type=\"text\" name=\"".$rs->fields[0]."\" value=\"".$rs_value->fields[0]."\">";
								}
							}
						}
						else
						{
							$cols_type = "<input type=\"text\" name=\"".$rs->fields[0]."\" value=\"".$rs_value->fields[0]."\"><input type=\"button\" name=\"btnLoV[]\" value=\"".getLang("list of values", $generic_conf_lang)."\" onClick=\"window.open('lov.php?table_name=".$rs_col_type->fields[0]."&col_name=".$rs->fields[0]."', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');\">";
						}
						
						array_push($cols_value, $cols_type);
						
						array_push($cols, array_combine($cols_key, $cols_value));
					}
				
					$rs->MoveNext();
				}
				
				$smarty->assign("title", getLang($menu_description, $generic_conf_lang));
				$smarty->assign("edit", getLang("edit", $generic_conf_lang));
				$smarty->assign("menu_id", $_GET['menu_id']);
				$smarty->assign("cols", $cols);
				$smarty->assign("proceed", getLang("proceed", $generic_conf_lang));
				$smarty->assign("data_id", $_GET['data_id']);
				$smarty->display("edit_simple.tpl"); 
			}
			else if($rsEditType->fields[0] == "madt")
			{
				// master - detail edit type
				// get columns list for 'add_table'
				$strSQL = "select column_name, column_type from columns where table_schema = '".$db_name."' and table_name = '".$menu_add_table."'";
				$rs = $db_schema->Execute($strSQL) or die("Can not get Column list!");
				
				$cols = array();
				$cols_key = array("field", "value");
				while(!$rs->EOF)
				{
					$tmp_cols = array();
					array_push($tmp_cols, getLang(str_replace("_", " ", $rs->fields[0]), $generic_conf_lang));
					
					$strSQL = "select ".$rs->fields[0]." from ".$menu_add_table." where id = ".$_GET['data_id'];
					$rs_data = $db->Execute($strSQL) or die("can not get header value");
					array_push($tmp_cols, $rs_data->fields[0]);
					
					$tmp_cols = array_combine($cols_key, $tmp_cols);
					
					array_push($cols, $tmp_cols);
					$rs->MoveNext();
				}
				
				$menu_detail_view = strrev($menu_add_table); 
				$menu_detail_view = strrev(substr($menu_detail_view, strpos($menu_detail_view, "_")))."detail_view";
				// header
				$strSQL = "desc ".$menu_detail_view;
				$rs = $db->Execute($strSQL) or die("Can not get Header Data");
				$header = array();
				$td = array();
				while(!$rs->EOF)
				{
					if(strstr($rs->fields[1], "double"))
					{
						array_push($td, "align=\"right\"");
						//array_push($cols_type, "double");
					}
					else if(strstr($rs->fields[1], "bigint"))
					{
						array_push($td, "align=\"right\"");
						//array_push($cols_type, "bigint");
					}
					else if(strstr($rs->fields[1], "enum"))
					{
						array_push($td, "align=\"center\"");
						//array_push($cols_type, "enum");
					}
					else
					{
						array_push($td, "align=\"left\"");
						//array_push($cols_type, "text");
					}
				
					array_push($header, getLang($rs->fields[0], $generic_conf_lang));
					$rs->MoveNext();
				}
				$header = implode(",", $header);
				$header = $header.",".getLang("action", $generic_conf_lang);
				
				// data
				$strSQL	= "select description from menus where id = ".$_GET['menu_id'];
				$rsMenuDesc = $db->Execute($strSQL) or die("Can not get menu description");
				
				$strSQL = "select * from ".$menu_detail_view." where `id ".$rsMenuDesc->fields[0]." header` = ".$_GET['data_id'];
				$rs = $db->Execute($strSQL) or die("Can not get Detail List Data");
				$data = array();
				$col = count($rs->fields)/2;
				while(!$rs->EOF)
				{
					for($i=0 ; $i<$col ; $i++)
					{
						array_push($data, $rs->fields[$i]);
					}
					
					array_push($data, "<a href=\"".$_SERVER['PHP_SELF']."?menu_id=".$_GET['menu_id']."&action=delete_detail&header_id=".$_GET['data_id']."&data_id=".$rs->fields[0]."\">Delete</a>");
					
					$rs->MoveNext();
				}
				
				$smarty->assign("title", getLang($menu_description, $generic_conf_lang));
				$smarty->assign("cols", $cols);
				$smarty->assign("add_line", getLang("add line", $generic_conf_lang));
				$smarty->assign("menu_id", $_GET['menu_id']);
				$smarty->assign("data_id", $_GET['data_id']);
				$smarty->assign("header", $header);
				$smarty->assign("data", $data);
				$smarty->assign("td", $td);
				$smarty->display("edit_master-detail.tpl");
			}
			break;
		case "edit_approve":
			$strSQL = "select edit_type from menus where id = ".$_GET['menu_id'];
			$rsEditType = $db->Execute($strSQL) or die("can not determine edit type");
			if($rsEditType->fields[0] == "smpl")
			{
				// simple edit type
				// get columns list for 'add_table'
				$strSQL = "select column_name, column_type from columns where table_schema = '".$db_name."' and table_name = '".$menu_add_table."'";
				$rs = $db_schema->Execute($strSQL) or die("Can not get Column list!");
				
				// create exception list for 'add_table'
				$cols_exception = array();
				$strSQL = "select column_name from menus_exception_edit where id_menus = ".$_GET['menu_id'];
				$rs_exception = $db->Execute($strSQL) or die("can not get exception column list");
				while(!$rs_exception->EOF)
				{
					array_push($cols_exception, $rs_exception->fields[0]);
					
					$rs_exception->MoveNext();
				}
				
				$cols = array();
				$cols_key = array("description", "type");
				while(!$rs->EOF)
				{
					// check for exception
					$is_exception = 0;
					foreach ($cols_exception as $exception)
					{
						if($rs->fields[0] == $exception)
						{
							$is_exception = 1;
							break;
						}
					}
					
					if(!$is_exception)
					{
						// get value
						$strSQL = "select ".$rs->fields[0]." from ".$menu_add_table." where id = '".$_GET['data_id']."'";
						$rs_value = $db->Execute($strSQL) or die("can not get value for editing");

						$cols_value = array(getLang(str_replace("_", " ",$rs->fields[0]), $generic_conf_lang));
						
						// get coloumns type
						$strSQL = "select REFERENCED_TABLE_NAME from KEY_COLUMN_USAGE where TABLE_SCHEMA = '".$db_name."' and TABLE_NAME = '".$menu_add_table."' and COLUMN_NAME = '".$rs->fields[0]."'";
						$rs_col_type = $db_schema->Execute($strSQL) or die ("Can not get Column type");
						
						if(is_null($rs_col_type->fields[0])) 
						{
							if($rs->fields[0] == "id")
							{
								$cols_type = "<input type=\"text\" name=\"".$rs->fields[0]."\" value=\"".$rs_value->fields[0]."\" disabled>";
							}
							else
							{
								if(strstr($rs->fields[1], "enum"))
								{
									$values = strstr($rs->fields[1], "(");
									$values = substr($values, 1);
									$values = strrev($values);
									$values = substr($values, 1);
									$values = strrev($values);
									$values = explode(",", $values);
									
									$cols_type = "<select name=\"".$rs->fields[0]."\">";
									foreach($values as $value)
									{
										$value_select = substr($value, 1);
										$value_select = strrev($value_select);
										$value_select = substr($value_select, 1);
										$value_select = strrev($value_select);
									
										if($rs_value->fields[0] == $value_select)
										{
											$cols_type = $cols_type."<option value=\"".$value_select."\" selected>".getLang($value_select, $generic_conf_lang)."</option>";
										}
										else
										{
											$cols_type = $cols_type."<option value=\"".$value_select."\">".getLang($value_select, $generic_conf_lang)."</option>";
										}
									}
									$cols_type = $cols_type."</select>";
								}
								else if(strstr($rs->fields[1], "date"))
								{
									$cols_type = "<input type=\"text\" value=\"".$rs_value->fields[0]."\" name=\"".$rs->fields[0]."\" id=\"".$rs->fields[0]."\" datepicker=\"true\" datepicker_format=\"YYYY-MM-DD\">";
								}
								else if(strstr($rs->fields[1], "text"))
								{
									$cols_type = "<textarea name=\"".$rs->fields[0]."\" rows=\"5\" cols=\"55\">".$rs_value->fields[0]."</textarea>";
								}
								else
								{
									$cols_type = "<input type=\"text\" name=\"".$rs->fields[0]."\" value=\"".$rs_value->fields[0]."\">";
								}
							}
						}
						else
						{
							$cols_type = "<input type=\"text\" name=\"".$rs->fields[0]."\" value=\"".$rs_value->fields[0]."\"><input type=\"button\" name=\"btnLoV[]\" value=\"".getLang("list of values", $generic_conf_lang)."\" onClick=\"window.open('lov.php?table_name=".$rs_col_type->fields[0]."&col_name=".$rs->fields[0]."', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');\">";
						}
						
						array_push($cols_value, $cols_type);
						
						array_push($cols, array_combine($cols_key, $cols_value));
					}
				
					$rs->MoveNext();
				}
				
				$smarty->assign("title", getLang($menu_description, $generic_conf_lang));
				$smarty->assign("edit", getLang("edit", $generic_conf_lang));
				$smarty->assign("menu_id", $_GET['menu_id']);
				$smarty->assign("cols", $cols);
				$smarty->assign("proceed", getLang("proceed", $generic_conf_lang));
				$smarty->assign("data_id", $_GET['data_id']);
				$smarty->display("edit_simple_approve.tpl"); 
			}
			break;
		case "add_detail":
			$menu_detail_table = strrev($menu_add_table); 
			$menu_detail_table = strrev(substr($menu_detail_table, strpos($menu_detail_table, "_")))."detail";
			
			// get columns list for 'add_detail_table'
			$strSQL = "select column_name, column_type from columns where table_schema = '".$db_name."' and table_name = '".$menu_detail_table."'";
			$rs = $db_schema->Execute($strSQL) or die("Can not get Column list!");
			
			$cols = array();
			$cols_key = array("description", "type");
			while(!$rs->EOF)
			{
				$cols_value = array(getLang(str_replace("_", " ",$rs->fields[0]), $generic_conf_lang));
				
				// get coloumns type
				$strSQL = "select REFERENCED_TABLE_NAME from KEY_COLUMN_USAGE where TABLE_SCHEMA = '".$db_name."' and TABLE_NAME = '".$menu_detail_table."' and COLUMN_NAME = '".$rs->fields[0]."'";
				$rs_col_type = $db_schema->Execute($strSQL) or die ("Can not get Column type");

				if($rs->fields[0] != "id")
				{
					if($rs->fields[0] == "id_".$menu_add_table)
					{
						$cols_type = "<input type=\"text\" name=\"".$rs->fields[0]."\" value=\"".$_GET['data_id']."\" disabled><input type=\"button\" name=\"btnLoV[]\" value=\"".getLang("list of values", $generic_conf_lang)."\" onClick=\"window.open('lov.php?table_name=".$rs_col_type->fields[0]."&col_name=".$rs->fields[0]."', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');\" disabled>";
					}
					else
					{
						if(is_null($rs_col_type->fields[0])) 
						{
							if(strstr($rs->fields[1], "enum"))
							{
								$values = strstr($rs->fields[1], "(");
								$values = substr($values, 1);
								$values = strrev($values);
								$values = substr($values, 1);
								$values = strrev($values);
								$values = explode(",", $values);
								
								$cols_type = "<select name=\"".$rs->fields[0]."\">";
								foreach($values as $value)
								{
									$value_select = substr($value, 1);
									$value_select = strrev($value_select);
									$value_select = substr($value_select, 1);
									$value_select = strrev($value_select);
								
									$cols_type = $cols_type."<option value=\"".$value_select."\">".getLang($value_select, $generic_conf_lang)."</option>";
								}
								$cols_type = $cols_type."</select>";
							}
							else
							{
								$cols_type = "<input type=\"text\" name=\"".$rs->fields[0]."\">";
							}
						}
						else
						{
							$cols_type = "<input type=\"text\" name=\"".$rs->fields[0]."\"><input type=\"button\" name=\"btnLoV[]\" value=\"".getLang("list of values", $generic_conf_lang)."\" onClick=\"window.open('lov.php?table_name=".$rs_col_type->fields[0]."&col_name=".$rs->fields[0]."', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');\">";
						}
					}
					
					array_push($cols_value, $cols_type);
					
					array_push($cols, array_combine($cols_key, $cols_value));
				}
			
				$rs->MoveNext();
			}
			
			$smarty->assign("title", getLang($menu_description, $generic_conf_lang)." ".getLang("line", $generic_conf_lang));
			$smarty->assign("add", getLang("add", $generic_conf_lang));
			$smarty->assign("menu_id", $_GET['menu_id']);
			$smarty->assign("data_id", $_GET['data_id']);
			$smarty->assign("header_column", "id_".$menu_add_table);
			$smarty->assign("cols", $cols);
			$smarty->assign("proceed", getLang("proceed", $generic_conf_lang));
			$smarty->display("add_master-detail.tpl"); 
			
			break;
		case "add_detail_action":
			$menu_detail_table = strrev($menu_add_table); 
			$menu_detail_table = strrev(substr($menu_detail_table, strpos($menu_detail_table, "_")))."detail";
			
			// prepare sql
			$strSQL = "insert into ".$menu_detail_table." (";
			foreach ($_POST as $key=>$value)
			{
				$strSQL = $strSQL.$key.", ";
			}
			$strSQL = substr($strSQL, 0, strlen($strSQL)-2).")";
			$strSQL = $strSQL." values (";
			foreach ($_POST as $value)
			{
				$strSQL = $strSQL."'".$value."', ";
			}
			$strSQL = substr($strSQL, 0, strlen($strSQL)-2).")";
			$db->Execute($strSQL) or die("can not do insert detail!");
			
			header("location: ?menu_id=".$_GET['menu_id']."&action=edit&data_id=".$_GET['data_id']);
			
			break;
		case "delete_detail":
			$menu_detail_table = strrev($menu_add_table); 
			$menu_detail_table = strrev(substr($menu_detail_table, strpos($menu_detail_table, "_")))."detail";
			
			$strSQL = "delete from ".$menu_detail_table." where id = ".$_GET['data_id'];
			$db->Execute($strSQL) or die("can not do delete in detail table");
			header("location: ?menu_id=".$_GET['menu_id']."&action=edit&data_id=".$_GET['header_id']);
			break;
		case "edit_action":
			$array_data = $_POST;
			$data_id = array_pop($array_data);
			
			// build SQL
			$strSQL = "update ".$menu_add_table." set ";
			foreach($array_data as $key=>$value)
			{
				$strSQL = $strSQL.$key." = '".$value."', ";
			}
			$strSQL = substr($strSQL, 0, strlen($strSQL)-2);
			$strSQL = $strSQL." where id = '".$data_id."'";
			$db->Execute($strSQL) or die("can not do update!");
			
			header("location: ?menu_id=".$_GET['menu_id']."&action=list");
			break;
		case "edit_approve_action":
			$array_data = $_POST;
			$data_id = array_pop($array_data);
			
			// build SQL
			$strSQL = "update ".$menu_add_table." set ";
			foreach($array_data as $key=>$value)
			{
				$strSQL = $strSQL.$key." = '".$value."', ";
			}
			$strSQL = substr($strSQL, 0, strlen($strSQL)-2);
			$strSQL = $strSQL." where id = '".$data_id."'";
			$db->Execute($strSQL) or die("can not do update!");
			
			header("location: ?menu_id=".$_GET['menu_id']."&action=list_approve");
			break;
		default:
			die("No action detected!");
			break;
	}
?>
