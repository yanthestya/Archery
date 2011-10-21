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
				<a href="staff_report.php?action=add">{$add}</a>
			</td>
		</tr>
		<tr>
			<td align="center">
				<table border="1">
					<tr>
						<th>
							{$id}
						</th>
						<th>
							{$date}
						</th>
						<th>
							{$action}
						</th>
					</tr>
					{$data}
				</table>
			</td>
		</tr>
	</table>
</body>
</html>