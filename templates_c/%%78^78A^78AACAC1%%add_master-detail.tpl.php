<?php /* Smarty version 2.6.19, created on 2008-06-19 16:37:07
         compiled from add_master-detail.tpl */ ?>
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
				<form action="?menu_id=<?php echo $this->_tpl_vars['menu_id']; ?>
&action=add_detail_action&data_id=<?php echo $this->_tpl_vars['data_id']; ?>
" method="post" name="main_form">
					<table border="1">
						<tr>
							<th align="center" colspan="2">
								<?php echo $this->_tpl_vars['add']; ?>
 <?php echo $this->_tpl_vars['title']; ?>

							</th>
						</tr>
						<?php unset($this->_sections['fields']);
$this->_sections['fields']['name'] = 'fields';
$this->_sections['fields']['loop'] = is_array($_loop=$this->_tpl_vars['cols']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['fields']['show'] = true;
$this->_sections['fields']['max'] = $this->_sections['fields']['loop'];
$this->_sections['fields']['step'] = 1;
$this->_sections['fields']['start'] = $this->_sections['fields']['step'] > 0 ? 0 : $this->_sections['fields']['loop']-1;
if ($this->_sections['fields']['show']) {
    $this->_sections['fields']['total'] = $this->_sections['fields']['loop'];
    if ($this->_sections['fields']['total'] == 0)
        $this->_sections['fields']['show'] = false;
} else
    $this->_sections['fields']['total'] = 0;
if ($this->_sections['fields']['show']):

            for ($this->_sections['fields']['index'] = $this->_sections['fields']['start'], $this->_sections['fields']['iteration'] = 1;
                 $this->_sections['fields']['iteration'] <= $this->_sections['fields']['total'];
                 $this->_sections['fields']['index'] += $this->_sections['fields']['step'], $this->_sections['fields']['iteration']++):
$this->_sections['fields']['rownum'] = $this->_sections['fields']['iteration'];
$this->_sections['fields']['index_prev'] = $this->_sections['fields']['index'] - $this->_sections['fields']['step'];
$this->_sections['fields']['index_next'] = $this->_sections['fields']['index'] + $this->_sections['fields']['step'];
$this->_sections['fields']['first']      = ($this->_sections['fields']['iteration'] == 1);
$this->_sections['fields']['last']       = ($this->_sections['fields']['iteration'] == $this->_sections['fields']['total']);
?>
							<tr>
								<td>
									<?php echo $this->_tpl_vars['cols'][$this->_sections['fields']['index']]['description']; ?>

								</td>
								<td>
									<?php echo $this->_tpl_vars['cols'][$this->_sections['fields']['index']]['type']; ?>

								</td>
							</tr>
						<?php endfor; endif; ?>
						<tr>
							<td align="center" colspan="2">
								<input type="hidden" name="<?php echo $this->_tpl_vars['header_column']; ?>
" value="<?php echo $this->_tpl_vars['data_id']; ?>
">
								<input type="submit" value="<?php echo $this->_tpl_vars['proceed']; ?>
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