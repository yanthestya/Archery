<?php /* Smarty version 2.6.19, created on 2008-07-01 11:22:04
         compiled from staff_report_detail.tpl */ ?>
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
			<td align="center">
				<form action="<?php echo $this->_tpl_vars['action']; ?>
" method="post" name="main_form">
					<table border="1">
						<tr>
							<th align="center" colspan="2">
								<?php echo $this->_tpl_vars['detail']; ?>
 <?php echo $this->_tpl_vars['title']; ?>

							</th>
						</tr>
						<tr>
							<td>
								<?php echo $this->_tpl_vars['date']; ?>

							</td>
							<td>
								<input type="text" name="date" value="<?php echo $this->_tpl_vars['value_date']; ?>
" disabled>
							</td>
						</tr>
						<tr>
							<td>
								<?php echo $this->_tpl_vars['id_staff']; ?>

							</td>
							<td>
								<input type="text" name="id_staff" value="<?php echo $this->_tpl_vars['value_staff']; ?>
" disabled>
							</td>
						</tr>
						<tr>
							<td>
								<?php echo $this->_tpl_vars['report']; ?>

							</td>
							<td>
								<textarea name="report" rows="5" cols="65" disabled><?php echo $this->_tpl_vars['value_report']; ?>
</textarea>
							</td>
						</tr>
						<tr>
							<td align="center" colspan="2">
								<input type="submit" value="<?php echo $this->_tpl_vars['ok']; ?>
">
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>