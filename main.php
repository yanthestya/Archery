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
?>
<html>
<head>
	<title>.: <?php echo getLang($generic_conf_application_title, $generic_conf_lang); ?></title>
</head>

<frameset frameborder="0" framespacing="0" border="0" cols="*" rows="90,*">
  <frame marginwidth="0" marginheight="0" src="statics/heading.php" name="heading" noresize scrolling="no">
  <frameset frameborder="0" framespacing="0" border="0" cols="200,*" rows="*">
    <frameset frameborder="0" framespacing="0" border="0" cols="*" rows="0,*">
      <frame marginwidth="0" marginheight="0" src="menu.php" name="code" noresize scrolling="auto" frameborder="0">
      <frame marginwidth="5" marginheight="5" src="statics/menu_empty.html" name="menu" noresize scrolling="auto" frameborder="0">
    </frameset>
      <frame marginwidth="5" marginheight="5" src="main_page.php" name="text" noresize>
  </frameset>
<noframes>
<p>The <code>NOFRAMES</code> element is to be used to give useful content to people with browsers that cannot display frames.  One example is Lynx, a text-based browser.</p>

</noframes>
</frameset>

</html>
