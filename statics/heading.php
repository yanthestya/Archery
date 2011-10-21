<?php
	// require configuration file
	require_once("../config.inc.php");
	
	// functions
	require_once("../".$function_path."language.php");
	
	// include libraries path 
	include("../".$adodb_path."adodb.inc.php");
	include("../".$smarty_path."Smarty.class.php");
	
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
?>
<html>
<head>
	<title> </title>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellpadding="0" cellspacing="0" valign="middle">
	<tr>
		<td align="center" valign="middle">
				<img src="./images/logo.png">
		</td>
	</tr>
</table>
</body>
</html>
