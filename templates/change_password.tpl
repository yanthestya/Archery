<html>
<head>
	<title>{$title}</title>
</head>
<body>
	<table width="100%">
		<tr>
			<td align="center">
				<h1>{$title}</h1>
			</td>
		</tr>
		<tr>
			<td align="center">
				<form action="change_password.php" method="post">
					<table border="1">
						<tr>
							<th colspan="2" align="center">
								{$title}
							</th>
						</tr>
						<tr>
							<td>
								{$current_password}
							</td>
							<td>
								<input type="password" name="current_password">
							</td>
						</tr>
						<tr>
							<td>
								{$new_password}
							</td>
							<td>
								<input type="password" name="new_password">
							</td>
						</tr>
						<tr>
							<td>
								{$new_password_confirmation}
							</td>
							<td>
								<input type="password" name="new_password_confirmation">
							</td>
						</tr>
						<tr>
							<td align="center" colspan="2">
								<input type="submit" name="proceed" value="{$proceed}">
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>