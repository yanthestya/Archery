<html>
	<head>
		<title>{$title}</title>
	</head>
	<body>
	<form name="main_form" action="property_header.php" method="post">
	<table width="100%">
		<tr>
			<td align="center" colspan="2">
				<h1>{$title}</h1>
			</td>
		</tr>
		<tr>
			<td align="center">
				<table>
					<tr>
						<td>
							{$no_property}
						</td>
						<td>
							<input type="text" name="no_property"><input type="button" name="btnLoV[]" value="List of Values" onClick="window.open('lov.php?table_name=property&col_name=no_property', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');">
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="submit" value="{$proceed}" name="btnProceed">
						</td>
					</tr>	
				</table>
			</td>
		</tr>
	</table>
	</form>
	</body>
</html>