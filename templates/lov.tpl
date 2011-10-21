<html>
<head>
	<title>{$title}</title>
	<script language="javascript" type="text/javascript">
		function update_parent(lov_value)
		{literal}{{/literal}
			var obj = window.opener.document.main_form.{$parent_col};
			window.opener.document.main_form.{$parent_col}.value = lov_value;
			fireEvent(obj, 'change');
			self.close();
		{literal}}{/literal}
		
		function check_source()
		{literal}{{/literal}
			if(window.opener = null)
			{literal}{{/literal}
				window.close();
			{literal}}{/literal}
		{literal}}{/literal}
		
		function fireEvent(element,event)
		{literal}{{/literal}
		    if (document.createEventObject)
			{literal}{{/literal}
		        // dispatch for IE
		        var evt = document.createEventObject();
		        return element.fireEvent('on'+event,evt)
		    {literal}}{/literal}
		    else
			{literal}{{/literal}
		        // dispatch for firefox + others
		        var evt = document.createEvent("HTMLEvents");
		        evt.initEvent(event, true, true ); // event type,bubbling,cancelable
		        return !element.dispatchEvent(evt);
		    {literal}}{/literal}
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
			<td>
				<input type="button" value="{$cancel}" onclick="window.close();">
			</td>
		</tr>
		<tr>
			<td align="center">
				<form name="lov_form">
					<table border="1">
						<tr>
							<th align="center" colspan="{$header_count}">
								{$table_name}
							</th>
						</tr>
						<tr>
							<td>
								<b>{$action}</b>
							</td>
							{foreach from=$headers item=header}
								<td align="center"><b>{$header}</b></td>
							{/foreach}
						</tr>
						{foreach from=$data item=data_line}
						<tr>
							<td align="center" onclick="update_parent('{$data_line[0]}');"><input type="checkbox"></td>
							{foreach from=$data_line item=data_item}
							<td>{$data_item}</td>
							{/foreach}
						</tr>
						{/foreach}
					</table>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>