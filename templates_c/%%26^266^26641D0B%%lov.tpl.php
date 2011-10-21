<?php /* Smarty version 2.6.19, created on 2008-06-26 12:28:44
         compiled from lov.tpl */ ?>
<html>
<head>
	<title><?php echo $this->_tpl_vars['title']; ?>
</title>
	<script language="javascript" type="text/javascript">
		function update_parent(lov_value)
		<?php echo '{'; ?>

			var obj = window.opener.document.main_form.<?php echo $this->_tpl_vars['parent_col']; ?>
;
			window.opener.document.main_form.<?php echo $this->_tpl_vars['parent_col']; ?>
.value = lov_value;
			fireEvent(obj, 'change');
			self.close();
		<?php echo '}'; ?>

		
		function check_source()
		<?php echo '{'; ?>

			if(window.opener = null)
			<?php echo '{'; ?>

				window.close();
			<?php echo '}'; ?>

		<?php echo '}'; ?>

		
		function fireEvent(element,event)
		<?php echo '{'; ?>

		    if (document.createEventObject)
			<?php echo '{'; ?>

		        // dispatch for IE
		        var evt = document.createEventObject();
		        return element.fireEvent('on'+event,evt)
		    <?php echo '}'; ?>

		    else
			<?php echo '{'; ?>

		        // dispatch for firefox + others
		        var evt = document.createEvent("HTMLEvents");
		        evt.initEvent(event, true, true ); // event type,bubbling,cancelable
		        return !element.dispatchEvent(evt);
		    <?php echo '}'; ?>

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
			<td>
				<input type="button" value="<?php echo $this->_tpl_vars['cancel']; ?>
" onclick="window.close();">
			</td>
		</tr>
		<tr>
			<td align="center">
				<form name="lov_form">
					<table border="1">
						<tr>
							<th align="center" colspan="<?php echo $this->_tpl_vars['header_count']; ?>
">
								<?php echo $this->_tpl_vars['table_name']; ?>

							</th>
						</tr>
						<tr>
							<td>
								<b><?php echo $this->_tpl_vars['action']; ?>
</b>
							</td>
							<?php $_from = $this->_tpl_vars['headers']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['header']):
?>
								<td align="center"><b><?php echo $this->_tpl_vars['header']; ?>
</b></td>
							<?php endforeach; endif; unset($_from); ?>
						</tr>
						<?php $_from = $this->_tpl_vars['data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['data_line']):
?>
						<tr>
							<td align="center" onclick="update_parent('<?php echo $this->_tpl_vars['data_line'][0]; ?>
');"><input type="checkbox"></td>
							<?php $_from = $this->_tpl_vars['data_line']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['data_item']):
?>
							<td><?php echo $this->_tpl_vars['data_item']; ?>
</td>
							<?php endforeach; endif; unset($_from); ?>
						</tr>
						<?php endforeach; endif; unset($_from); ?>
					</table>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>