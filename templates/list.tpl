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
			<td>
				{$add_command}
			</td>
		</tr>
		<tr>
			<td align="center">
				{html_table loop=$data cols=$header td_attr=$td}
			</td>
		</tr>
	</table>
	</body>
</html>