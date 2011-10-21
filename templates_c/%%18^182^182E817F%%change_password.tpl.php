<?php /* Smarty version 2.6.19, created on 2008-07-08 23:43:54
         compiled from change_password.tpl */ ?>
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
				<form action="change_password.php" method="post">
					<table border="1">
						<tr>
							<th colspan="2" align="center">
								<?php echo $this->_tpl_vars['title']; ?>

							</th>
						</tr>
						<tr>
							<td>
								<?php echo $this->_tpl_vars['current_password']; ?>

							</td>
							<td>
								<input type="password" name="current_password">
							</td>
						</tr>
						<tr>
							<td>
								<?php echo $this->_tpl_vars['new_password']; ?>

							</td>
							<td>
								<input type="password" name="new_password">
							</td>
						</tr>
						<tr>
							<td>
								<?php echo $this->_tpl_vars['new_password_confirmation']; ?>

							</td>
							<td>
								<input type="password" name="new_password_confirmation">
							</td>
						</tr>
						<tr>
							<td align="center" colspan="2">
								<input type="submit" name="proceed" value="<?php echo $this->_tpl_vars['proceed']; ?>
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