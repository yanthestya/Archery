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
				<form action="manage_password.php" method="post" name="main_form">
					<table border="1">
						<tr>
							<th colspan="2" align="center">
								{$title}
							</th>
						</tr>
						<tr>
							<td>
								{$id_webuser}
							</td>
							<td>
								<input type="text" name="id_webuser"><input type="button" name="btnLoV[]" value="{$list_of_values}" onClick="window.open('lov.php?table_name=webuser_view&col_name=id_webuser', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');">
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