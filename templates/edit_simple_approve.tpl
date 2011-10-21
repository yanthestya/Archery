<html>
<head>
	<title>{$title}</title>
	<script type="text/javascript" src="library/datepickercontrol/datepickercontrol.js"></script>
	<link type="text/css" rel="stylesheet" href="library/datepickercontrol/datepickercontrol.css">
</head>
<body>
	<input type="hidden" id="DPC_TODAY_TEXT" value="today">
	<input type="hidden" id="DPC_BUTTON_TITLE" value="Open calendar...">
	<input type="hidden" id="DPC_MONTH_NAMES" value="['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']">
	<input type="hidden" id="DPC_DAY_NAMES" value="['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']">

	<table width="100%">
		<tr>
			<td align="center">
				<h1>{$title}</h1>
			</td>
		</tr>
		<tr>
			<td align="center">
				<form action="?menu_id={$menu_id}&action=edit_approve_action" method="post" name="main_form">
					<table border="1">
						<tr>
							<th align="center" colspan="2">
								{$edit} {$title}
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
								<input type="hidden" name="data_id" value="{$data_id}">
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