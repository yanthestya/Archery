<html>
<head>
	<title>{$application_title}</title>
</head>
<body>
<form action="login.php" method="post">
	<table width="100%">
		<tr>
			<td align="center">
				<h1>{$application_title}</h1>
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
							{$login_box_header}
						</td>
					</tr>
					<tr>
						<td>
							{$lbl_login}
						</td>
						<td>
							<input type="text" name="txt_login">
						</td>
					</tr>
					<tr>
						<td>
							{$lbl_password}
						</td>
						<td>
							<input type="password" name="txt_password">
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="submit" name="action" value="{$btn_login}">
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</form>
</body>
</html>
