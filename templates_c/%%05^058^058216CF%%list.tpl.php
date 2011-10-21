<?php /* Smarty version 2.6.19, created on 2008-08-05 00:34:10
         compiled from list.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'html_table', 'list.tpl', 19, false),)), $this); ?>
<html>
	<head>
		<title><?php echo $this->_tpl_vars['title']; ?>
</title>
	</head>
	<body>
	<table width="100%">
		<tr>
			<td align="center">
				<h1><?php echo $this->_tpl_vars['title']; ?>
</h1>
			</td>
		</tr>
		<tr>
			<td>
				<?php echo $this->_tpl_vars['add_command']; ?>

			</td>
		</tr>
		<tr>
			<td align="center">
				<?php echo smarty_function_html_table(array('loop' => $this->_tpl_vars['data'],'cols' => $this->_tpl_vars['header'],'td_attr' => $this->_tpl_vars['td']), $this);?>

			</td>
		</tr>
	</table>
	</body>
</html>