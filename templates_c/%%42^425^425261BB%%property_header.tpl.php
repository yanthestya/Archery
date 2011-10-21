<?php /* Smarty version 2.6.19, created on 2008-08-05 21:34:44
         compiled from property_header.tpl */ ?>
<html>
	<head>
		<title><?php echo $this->_tpl_vars['title']; ?>
</title>
	</head>
	<body>
	<form name="main_form" action="property_header.php" method="post">
	<table width="100%">
		<tr>
			<td align="center" colspan="2">
				<h1><?php echo $this->_tpl_vars['title']; ?>
</h1>
			</td>
		</tr>
		<tr>
			<td align="center">
				<table>
					<tr>
						<td>
							<?php echo $this->_tpl_vars['no_property']; ?>

						</td>
						<td>
							<input type="text" name="no_property"><input type="button" name="btnLoV[]" value="List of Values" onClick="window.open('lov.php?table_name=property&col_name=no_property', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');">
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="submit" value="<?php echo $this->_tpl_vars['proceed']; ?>
" name="btnProceed">
						</td>
					</tr>	
				</table>
			</td>
		</tr>
	</table>
	</form>
	</body>
</html>