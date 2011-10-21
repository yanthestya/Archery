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
				<table border="1">
					<tr>	
						<td colspan="2" align="center">
							{$title}
						</td>
					</tr>
					{section name=fields_header loop=$cols}
						<tr>
							<td>
								{$cols[fields_header].field}
							</td>
							<td>
								{$cols[fields_header].value}
							</td>
						</tr>
					{/section}
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<a href="?menu_id={$menu_id}&action=add_detail&data_id={$data_id}">{$add_line}</a>
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