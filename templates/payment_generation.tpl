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
				<form action="student_payment_generation.php" method="post" name="main_form">
					<table border="1">
						<tr>
							<th align="center" colspan="2">
								{$title}
							</th>
						</tr>
						<tr>
							<td>
								{$year}
							</td>
							<td>
								<input type="input" name="txt_year">
							</td>
						</tr>
						<tr>
							<td>
								{$month}
							</td>
							<td>
								<select name="dropdown_month">
									<option value="jan">{$jan}</option>
									<option value="feb">{$feb}</option>
									<option value="mar">{$mar}</option>
									<option value="apr">{$apr}</option>
									<option value="may">{$may}</option>
									<option value="jun">{$jun}</option>
									<option value="jul">{$jul}</option>
									<option value="aug">{$aug}</option>
									<option value="sep">{$sep}</option>
									<option value="oct">{$oct}</option>
									<option value="nov">{$nov}</option>
									<option value="dec">{$dec}</option>
								</select>
							</td>
						</tr>
						<tr>
							<td align="center" colspan="2">
								<input type="submit" name="generate" value="{$generate}">
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>