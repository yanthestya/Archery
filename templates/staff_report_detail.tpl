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
				<form action="{$action}" method="post" name="main_form">
					<table border="1">
						<tr>
							<th align="center" colspan="2">
								{$detail} {$title}
							</th>
						</tr>
						<tr>
							<td>
								{$date}
							</td>
							<td>
								<input type="text" name="date" value="{$value_date}" disabled>
							</td>
						</tr>
						<tr>
							<td>
								{$id_staff}
							</td>
							<td>
								<input type="text" name="id_staff" value="{$value_staff}" disabled>
							</td>
						</tr>
						<tr>
							<td>
								{$report}
							</td>
							<td>
								<textarea name="report" rows="5" cols="65" disabled>{$value_report}</textarea>
							</td>
						</tr>
						<tr>
							<td align="center" colspan="2">
								<input type="submit" value="{$ok}">
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>