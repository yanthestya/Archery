<?php /* Smarty version 2.6.19, created on 2008-10-07 20:48:36
         compiled from login.tpl */ ?>
<html>
<head>
	<title><?php echo $this->_tpl_vars['application_title']; ?>
</title>
</head>
<body>
<form action="login.php" method="post">
	<table width="100%">
		<tr>
			<td align="center">
				<h1><?php echo $this->_tpl_vars['application_title']; ?>
</h1>
			</td>
		</tr>
		<tr>
			<td align="center">
				<img src="./statics/images/logo.png">
			</td>
		</tr>
		<tr>
			<td align="center">
				<table border="1">
					<tr>
						<td colspan=2" align="center">
							<?php echo $this->_tpl_vars['login_box_header']; ?>

						</td>
					</tr>
					<tr>
						<td>
							<?php echo $this->_tpl_vars['lbl_login']; ?>

						</td>
						<td>
							<input type="text" name="txt_login">
						</td>
					</tr>
					<tr>
						<td>
							<?php echo $this->_tpl_vars['lbl_password']; ?>

						</td>
						<td>
							<input type="password" name="txt_password">
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="submit" name="action" value="<?php echo $this->_tpl_vars['btn_login']; ?>
">
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</form>
</body>
</html>