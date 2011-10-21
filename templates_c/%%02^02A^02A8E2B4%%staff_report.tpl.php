<?php /* Smarty version 2.6.19, created on 2008-07-01 10:19:08
         compiled from staff_report.tpl */ ?>
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
				<a href="staff_report.php?action=add"><?php echo $this->_tpl_vars['add']; ?>
</a>
			</td>
		</tr>
		<tr>
			<td align="center">
				<table border="1">
					<tr>
						<th>
							<?php echo $this->_tpl_vars['id']; ?>

						</th>
						<th>
							<?php echo $this->_tpl_vars['date']; ?>

						</th>
						<th>
							<?php echo $this->_tpl_vars['action']; ?>

						</th>
					</tr>
					<?php echo $this->_tpl_vars['data']; ?>

				</table>
			</td>
		</tr>
	</table>
</body>
</html>