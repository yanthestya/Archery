<?php /* Smarty version 2.6.19, created on 2008-06-26 12:44:34
         compiled from payment_processing.tpl */ ?>
<html>
<head>
	<title><?php echo $this->_tpl_vars['title']; ?>
</title>
	<script language="javascript" type="text/javascript">
		function update_page()
		<?php echo '{'; ?>

			var data_id = document.main_form.id_student_payment.value;
			window.location = "student_payment_processing.php?data_id=" + data_id;
		<?php echo '}'; ?>

		</script>
</head>
<body>
	<table width="100%">
		<tr>
			<td align="center">
				<h1><?php echo $this->_tpl_vars['title']; ?>
</h1>
			</td>
		</tr>
		<tr>
			<td align="center">
				<form action="student_payment_processing.php" method="post" name="main_form">
					<table border="1">
						<tr>
							<th align="center" colspan="2">
								<?php echo $this->_tpl_vars['title']; ?>

							</th>
						</tr>
						<tr>
							<td>
								<?php echo $this->_tpl_vars['id_student_payment']; ?>

							</td>
							<td>
								<input type="text" id="id_student_payment" value="<?php echo $this->_tpl_vars['data_id_student_payment']; ?>
" name="id_student_payment" onChange="update_page()">
								<input type="button" name="btnLoV[]" value="List of Values" onClick="window.open('lov.php?table_name=student_payment_unpaid2_view&col_name=id_student_payment', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');">
							</td>
						</tr>
						<tr>
							<td>
								<?php echo $this->_tpl_vars['full_name']; ?>

							</td>
							<td>
								<?php echo $this->_tpl_vars['full_name_value']; ?>

							</td>
						</tr>
						<tr>
							<td>
								<?php echo $this->_tpl_vars['month']; ?>

							</td>
							<td>
								<?php echo $this->_tpl_vars['month_value']; ?>

							</td>
						</tr>
						<tr>
							<td>
								<?php echo $this->_tpl_vars['year']; ?>

							</td>
							<td>
								<?php echo $this->_tpl_vars['year_value']; ?>

							</td>
						</tr>
						<tr>
							<td>
								<?php echo $this->_tpl_vars['pricing']; ?>

							</td>
							<td>
								<?php echo $this->_tpl_vars['pricing_value']; ?>

							</td>
						</tr>
						<tr>
							<td align="center" colspan="2">
								<input type="submit" name="proceed" value="<?php echo $this->_tpl_vars['proceed']; ?>
">
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>