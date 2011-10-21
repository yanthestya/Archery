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
				<form action="?menu_id={$menu_id}&action=add_detail_action&data_id={$data_id}" method="post" name="main_form">
					<table border="1">
						<tr>
							<th align="center" colspan="2">
								{$add} {$title}
							</th>
						</tr>
						{section name=fields loop=$cols}
							<tr>
								<td>
									{$cols[fields].description}
								</td>
								<td>
									{$cols[fields].type}
								</td>
							</tr>
						{/section}
						<tr>
							<td align="center" colspan="2">
								<input type="hidden" name="{$header_column}" value="{$data_id}">
								<input type="submit" value="{$proceed}">
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>