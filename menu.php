<?php
	// require configuration file
	require_once("config.inc.php");
	
	// functions
	require_once($function_path."language.php");
	
	// include libraries path 
	include($adodb_path."adodb.inc.php");
	include($smarty_path."Smarty.class.php");

	// session variables
	session_start();
	if(!$_SESSION["authenticated"])
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

function populateMenu($parent=0, $level="", $menu_name="menu")
{
	global $db, $generic_conf_lang;

	echo "var $menu_name$level;\n";
	echo "$menu_name$level = null;\n";
	echo "$menu_name$level = new MTMenu();\n";
	
	$strSQL = "select id_webuser_group from webuser where id = '".$_SESSION['username']."'";
	$rsGrp = $db->Execute($strSQL);
	if($rsGrp)
	{
		$id_webgroup = $rsGrp->fields[0];
	}
	else
	{
		die("rsGrp ".$db->ErrorMsg());
	}

	$strSQL = "select id, description, menu_override, menu_act from menus where parent = $parent order by menu_order+0";
	$result = $db->Execute($strSQL);
	if($result == false) die("can't get menu, ".$db->ErrorMsg());
	while( !$result->EOF )
	{
		$id = $result->fields[0];
		$menu = $result->fields[1];
		$is_override = $result->fields[2];
		$is_act = $result->fields[3];
		
		$strSQL = "select permission from security_matrix where id_webuser_group = '".$id_webgroup."' and id_menus = '".$id."'";
		$rsPerm = $db->Execute($strSQL);
		if($rsPerm)
		{
			if($rsPerm->fields[0] == "Y")
			{
				if ($is_act == "Y")
				{
					// add menu with no sub menu
					// check wether user override settings or not
					if($is_override == "Y")
					{
						$strSQL = "select path from menus_override where id_menus = ".$id;
						$rs_path = $db->Execute($strSQL) or die("can not get overriden menu's path");
						$connected_page = $rs_path->fields[0];
					}
					else
					{
						$connected_page = "index.php?menu_id=".$id."&action=list";
					}
					echo "$menu_name$level.addItem(\"".getLang($menu, $generic_conf_lang)."\", \"$connected_page\"";
					if ($menu == "logout")
						echo ", \"_parent\"";
					echo ");\n";
					
				}
				else
				{
					// add menu with sub menu
					echo "$menu_name$level.addItem(\"".getLang($menu, $generic_conf_lang)."\");\n";
					
				}
		
				// check sub menu existance
				$strSQL = "select count(*) from menus where parent = $id";
				$resultSub = $db->Execute($strSQL);
				if($resultSub == false) die("can't count menu, ".$db->ErrorMsg());
				$count_sub_menu = $resultSub->fields[0];
				if ($count_sub_menu)
				{
					if ($level == "")
						$level_sub_menu = 1;
					else
						$level_sub_menu = $level+1;
		
					// add sub menu
					populateMenu($id, $level_sub_menu);
					echo "$menu_name$level.makeLastSubmenu($menu_name$level_sub_menu";
					echo ");\n";
				}
			}
		}
		else
		{
			die("rsPerm ".$db->ErrorMsg());
		}
			
		$result->MoveNext();
	}
}
?>
<html>
<head>
	<title></title>
	<script type="text/javascript" src="library/javascripts/mtmcode.js">
		<!-- for tree menu -->
	</script>
<script type="text/javascript"> 
	<!-- the menu stuffs -->
	// Morten's JavaScript Tree Menu
	// version 2.3.2-macfriendly, dated 2002-06-10
	// http://www.treemenu.com/

	// Copyright (c) 2001-2002, Morten Wang & contributors
	// All rights reserved.

	// This software is released under the BSD License which should accompany
	// it in the file "COPYING".  If you do not have this file you can access
	// the license through the WWW at http://www.treemenu.com/license.txt

	// Nearly all user-configurable options are set to their default values.
	// Have a look at the section "Setting options" in the installation guide
	// for description of each option and their possible values.

	MTMDefaultTarget = "text";
	/******************************************************************************
	* User-configurable list of icons.                                            *
	******************************************************************************/
	var MTMIconList = null;
	MTMIconList = new IconList();
	MTMIconList.addIcon(new MTMIcon("menu_link_external.gif", "http://", "pre"));
	MTMIconList.addIcon(new MTMIcon("menu_link_pdf.gif", ".pdf", "post"));
	MTMIconList.addIcon(new MTMIcon("supervisor.png", "admin_webuser_structure_code_top_node_menu.php", "pre"));

	/******************************************************************************
	* User-configurable menu.                                                     *
	******************************************************************************/
	MTMEmulateWE = true;
	MTMenuText = "<?php echo getLang($generic_conf_application_title, $generic_conf_lang); ?> Menus";
	MTMenuImageDirectory = "<?php echo $tree_menu_image_dir; ?>";
	MTMRootIcon = "<?php echo $tree_menu_image_root_icon; ?>";

	<?php
	populateMenu();
	?>
	</script>
</head>
<body class="content" onload="MTMStartMenu(true)">
</body>
</html>
