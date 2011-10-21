<html>
	<head>
		<title>{$title}</title>
		<script type="text/javascript" src="library/datepickercontrol/datepickercontrol.js"></script>
		<link type="text/css" rel="stylesheet" href="library/datepickercontrol/datepickercontrol.css">
		<link rel="stylesheet" href="style.css" type="text/css" />
		<script type="text/javascript" src="dolphin.js">

		/***********************************************
		* Dolphin Tabs Menu- by JavaScript Kit (www.javascriptkit.com)
		* Menu interface by: http://www.13styles.com/css-menus/dolphin/
		* Visit JavaScript Kit at http://www.javascriptkit.com/ for this script and 100s more
		***********************************************/

		</script>
	</head>
	<body>
	<input type="hidden" id="DPC_TODAY_TEXT" value="today">
	<input type="hidden" id="DPC_BUTTON_TITLE" value="Open calendar...">
	<input type="hidden" id="DPC_MONTH_NAMES" value="['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']">
	<input type="hidden" id="DPC_DAY_NAMES" value="['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']">
	
	<form name="main_form" action="property.php">
	<table width="100%">
		<tr>
			<td align="center" colspan="6">
				<h1>{$title}</h1>
			</td>
		</tr>
		<tr>
			<td>
				{$no_property}
			</td>
			<td colspan="2">
				<input type="text" name="no_property" value="{$no_property_value}">
			</td>
			<td>
				{$property_status}
			</td>
			<td colspan="2">
				<input type="text" name="property_status" value="{$property_status_value}"><input type="button" name="btnLoV[]" value="List of Values" onClick="window.open('lov.php?table_name=property_status&col_name=property_status', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');">
			</td>
		</tr>
		<tr>
			<td>
				{$property_type}
			</td>
			<td colspan="2">
				<input type="text" name="property_type" value="{$property_type_value}"><input type="button" name="btnLoV[]" value="List of Values" onClick="window.open('lov.php?table_name=property_type&col_name=property_type', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');">
			</td>
			<td>
				{$property_date}
			</td>
			<td colspan="2">
				<input type="text" name="property_date" value="{$property_date_value}" id="property_date" datepicker="true" datepicker_format="YYYY-MM-DD">
			</td>
		</tr>
		<tr>
			<td>
				{$street_name}
			</td>
			<td colspan="5">
				<input type="text" name="street_name" size="105" value="{$street_name_value}">
			</td>
		</tr>
		<tr>
			<td>
				{$street_no}
			</td>
			<td>
				<input type="text" name="street_no" value="{$street_no_value}">
			</td>
			<td>
				{$counting_no}
			</td>
			<td>
				<input type="text" name="counting_no" value="{$counting_no_value}">
			</td>
			<td>
				{$rtrw}
			</td>
			<td>
				<input type="text" name="rtrw" value="{$rtrw_value}">
			</td>
		</tr>
		<tr>
			<td>
				{$postcode}
			</td>
			<td colspan="5">
				<input type="text" name="postcode" value={$postcode_value}>
			</td>
		</tr>
		<tr>
			<td>
				{$community}
			</td>
			<td colspan="2">
				<input type="text" name="community" value="{$community_value}"><input type="button" name="btnLoV[]" value="List of Values" onClick="window.open('lov.php?table_name=community&col_name=community', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');">
			</td>
			<td>
				{$area}
			</td>
			<td colspan="2">
				<input type="text" name="area" value="{$area_value}">
			</td>
		</tr>	
		<tr>
			<td>
				{$district}
			</td>
			<td>
				<input type="text" name="district" disabled value="{$district_value}">
			</td>
			<td colspan="4">
				{$marker}
			</td>
		</tr>
		<tr>
			<td>
				{$city}
			</td>
			<td>
				<input type="text" name="city" disabled value="{$city_value}">
			</td>
			<td>
				{$intention}
			</td>
			<td colspan="3">
				<select name="intention">
					{$intention_selection}
				</select>
			</td>
		</tr>
		<tr>
			<td>
				{$province}
			</td>
			<td>
				<input type="text" name="province" disabled value="{$province_value}">
			</td>
			<td>
				{$currency}({$sell})
			</td>
			<td>
				<input type="text" name="currency1" size="3" value="{$currency1_value}"><input type="button" name="btnLoV[]" value="List of Values" onClick="window.open('lov.php?table_name=currency&col_name=currency1', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');">
			</td>
			<td colspan="2">
				{$sell_price}<input type="text" name="min_sell_price" value="{$min_sell_price_value}"> - <input type="text" name="max_sell_price" value="{$max_sell_price_value}">
			</td>
		</tr>
		<tr>
			<td>
				{$country}
			</td>
			<td>
				<input type="text" name="country" disabled value="{$country_value}">
			</td>
			<td>
				{$currency}({$rent})
			</td>
			<td>
				<input type="text" name="currency2" size="3" value="{$currency2_value}"><input type="button" name="btnLoV[]" value="List of Values" onClick="window.open('lov.php?table_name=currency&col_name=currency2', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');">
			</td>
			<td colspan="2">
				{$rent_price}<input type="text" name="min_rent_price" value="{$min_rent_price_value}"> - <input type="text" name="max_rent_price" value="{$max_rent_price_value}">
			</td>
		</tr>
		<tr>
			<td>
				{$address}
			</td>
			<td colspan="5">
				<textarea name="address" cols="85" rows="4">{$address_value}</textarea>
			</td>
		</tr>
		<tr>
			<td colspan="6" align="center">
				<input type="submit" value="{$update}" name="btnUpdate">
				<input type="hidden" value="{$id}" name="id">
			</td>
		</tr>
	</table>
	</form>

	<div id="dolphincontainer">
	<div id="dolphinnav">
	<ul>
	<li><a href="http://www.javascriptkit.com"><span>{$specification}</span></a></li>
	<li><a href="http://www.javascriptkit.com" rel="picture"><span>{$picture}</span></a></li>
	</ul>
	</div>
	
	<!-- Sub Menus container. Do not remove -->
	<div id="dolphin_inner">

	<div id="picture" class="innercontent">
		<table width="100%">
		<tr>
			<td>
				<input type="button" name="btnAddPicture" value="{$add_picture}">
			</td>
		</tr>
		{$pictures_content}
		</table>
	</div>

	<!-- End Sub Menus container -->
	</div>

	</div>

	<script type="text/javascript">

	//dolphintabs.init("ID_OF_TAB_MENU_ITSELF", SELECTED_INDEX)
	dolphintabs.init("dolphinnav", 1)

	</script>	
	
	</body>
</html>