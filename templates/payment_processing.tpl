<html>
<head>
	<title>{$title}</title>
	<script language="javascript" type="text/javascript">
		function update_page()
		{literal}{{/literal}
			var data_id = document.main_form.id_student_payment.value;
			window.location = "student_payment_processing.php?data_id=" + data_id;
		{literal}}{/literal}
		</script>
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
				<form action="student_payment_processing.php" method="post" name="main_form">
					<table border="1">
						<tr>
							<th align="center" colspan="2">
								{$title}
							</th>
						</tr>
						<tr>
							<td>
								{$id_student_payment}
							</td>
							<td>
								<input type="text" id="id_student_payment" value="{$data_id_student_payment}" name="id_student_payment" onChange="update_page()">
								<input type="button" name="btnLoV[]" value="List of Values" onClick="window.open('lov.php?table_name=student_payment_unpaid2_view&col_name=id_student_payment', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');">
							</td>
						</tr>
						<tr>
							<td>
								{$full_name}
							</td>
							<td>
								{$full_name_value}
							</td>
						</tr>
						<tr>
							<td>
								{$month}
							</td>
							<td>
								{$month_value}
							</td>
						</tr>
						<tr>
							<td>
								{$year}
							</td>
							<td>
								{$year_value}
							</td>
						</tr>
						<tr>
							<td>
								{$pricing}
							</td>
							<td>
								{$pricing_value}
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