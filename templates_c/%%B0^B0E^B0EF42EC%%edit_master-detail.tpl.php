<?php /* Smarty version 2.6.19, created on 2008-09-23 18:39:40
         compiled from edit_master-detail.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'html_table', 'edit_master-detail.tpl', 40, false),)), $this); ?>
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
				<table border="1">
					<tr>	
						<td colspan="2" align="center">
							<?php echo $this->_tpl_vars['title']; ?>

						</td>
					</tr>
					<?php unset($this->_sections['fields_header']);
$this->_sections['fields_header']['name'] = 'fields_header';
$this->_sections['fields_header']['loop'] = is_array($_loop=$this->_tpl_vars['cols']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['fields_header']['show'] = true;
$this->_sections['fields_header']['max'] = $this->_sections['fields_header']['loop'];
$this->_sections['fields_header']['step'] = 1;
$this->_sections['fields_header']['start'] = $this->_sections['fields_header']['step'] > 0 ? 0 : $this->_sections['fields_header']['loop']-1;
if ($this->_sections['fields_header']['show']) {
    $this->_sections['fields_header']['total'] = $this->_sections['fields_header']['loop'];
    if ($this->_sections['fields_header']['total'] == 0)
        $this->_sections['fields_header']['show'] = false;
} else
    $this->_sections['fields_header']['total'] = 0;
if ($this->_sections['fields_header']['show']):

            for ($this->_sections['fields_header']['index'] = $this->_sections['fields_header']['start'], $this->_sections['fields_header']['iteration'] = 1;
                 $this->_sections['fields_header']['iteration'] <= $this->_sections['fields_header']['total'];
                 $this->_sections['fields_header']['index'] += $this->_sections['fields_header']['step'], $this->_sections['fields_header']['iteration']++):
$this->_sections['fields_header']['rownum'] = $this->_sections['fields_header']['iteration'];
$this->_sections['fields_header']['index_prev'] = $this->_sections['fields_header']['index'] - $this->_sections['fields_header']['step'];
$this->_sections['fields_header']['index_next'] = $this->_sections['fields_header']['index'] + $this->_sections['fields_header']['step'];
$this->_sections['fields_header']['first']      = ($this->_sections['fields_header']['iteration'] == 1);
$this->_sections['fields_header']['last']       = ($this->_sections['fields_header']['iteration'] == $this->_sections['fields_header']['total']);
?>
						<tr>
							<td>
								<?php echo $this->_tpl_vars['cols'][$this->_sections['fields_header']['index']]['field']; ?>

							</td>
							<td>
								<?php echo $this->_tpl_vars['cols'][$this->_sections['fields_header']['index']]['value']; ?>

							</td>
						</tr>
					<?php endfor; endif; ?>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<a href="?menu_id=<?php echo $this->_tpl_vars['menu_id']; ?>
&action=add_detail&data_id=<?php echo $this->_tpl_vars['data_id']; ?>
"><?php echo $this->_tpl_vars['add_line']; ?>
</a>
			</td>
		</tr>
		<tr>
			<td align="center">
				<?php echo smarty_function_html_table(array('loop' => $this->_tpl_vars['data'],'cols' => $this->_tpl_vars['header'],'td_attr' => $this->_tpl_vars['td']), $this);?>

			</td>
		</tr>
	</table>
</body>
</html>