<?php /* Smarty version 2.6.19, created on 2008-06-21 23:35:44
         compiled from payment_generation.tpl */ ?>
<html>
<head>
	<title><?php echo $this->_tpl_vars['title']; ?>
</title>
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
				<form action="student_payment_generation.php" method="post" name="main_form">
					<table border="1">
						<tr>
							<th align="center" colspan="2">
								<?php echo $this->_tpl_vars['title']; ?>

							</th>
						</tr>
						<tr>
							<td>
								<?php echo $this->_tpl_vars['year']; ?>

							</td>
							<td>
								<input type="input" name="txt_year">
							</td>
						</tr>
						<tr>
							<td>
								<?php echo $this->_tpl_vars['month']; ?>

							</td>
							<td>
								<select name="dropdown_month">
									<option value="jan"><?php echo $this->_tpl_vars['jan']; ?>
</option>
									<option value="feb"><?php echo $this->_tpl_vars['feb']; ?>
</option>
									<option value="mar"><?php echo $this->_tpl_vars['mar']; ?>
</option>
									<option value="apr"><?php echo $this->_tpl_vars['apr']; ?>
</option>
									<option value="may"><?php echo $this->_tpl_vars['may']; ?>
</option>
									<option value="jun"><?php echo $this->_tpl_vars['jun']; ?>
</option>
									<option value="jul"><?php echo $this->_tpl_vars['jul']; ?>
</option>
									<option value="aug"><?php echo $this->_tpl_vars['aug']; ?>
</option>
									<option value="sep"><?php echo $this->_tpl_vars['sep']; ?>
</option>
									<option value="oct"><?php echo $this->_tpl_vars['oct']; ?>
</option>
									<option value="nov"><?php echo $this->_tpl_vars['nov']; ?>
</option>
									<option value="dec"><?php echo $this->_tpl_vars['dec']; ?>
</option>
								</select>
							</td>
						</tr>
						<tr>
							<td align="center" colspan="2">
								<input type="submit" name="generate" value="<?php echo $this->_tpl_vars['generate']; ?>
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