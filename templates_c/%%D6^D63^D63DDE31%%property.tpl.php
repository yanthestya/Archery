<?php /* Smarty version 2.6.19, created on 2008-08-05 21:20:52
         compiled from property.tpl */ ?>
<html>
	<head>
		<title><?php echo $this->_tpl_vars['title']; ?>
</title>
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
				<h1><?php echo $this->_tpl_vars['title']; ?>
</h1>
			</td>
		</tr>
		<tr>
			<td>
				<?php echo $this->_tpl_vars['no_property']; ?>

			</td>
			<td colspan="2">
				<input type="text" name="no_property" value="<?php echo $this->_tpl_vars['no_property_value']; ?>
">
			</td>
			<td>
				<?php echo $this->_tpl_vars['property_status']; ?>

			</td>
			<td colspan="2">
				<input type="text" name="property_status" value="<?php echo $this->_tpl_vars['property_status_value']; ?>
"><input type="button" name="btnLoV[]" value="List of Values" onClick="window.open('lov.php?table_name=property_status&col_name=property_status', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');">
			</td>
		</tr>
		<tr>
			<td>
				<?php echo $this->_tpl_vars['property_type']; ?>

			</td>
			<td colspan="2">
				<input type="text" name="property_type" value="<?php echo $this->_tpl_vars['property_type_value']; ?>
"><input type="button" name="btnLoV[]" value="List of Values" onClick="window.open('lov.php?table_name=property_type&col_name=property_type', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');">
			</td>
			<td>
				<?php echo $this->_tpl_vars['property_date']; ?>

			</td>
			<td colspan="2">
				<input type="text" name="property_date" value="<?php echo $this->_tpl_vars['property_date_value']; ?>
" id="property_date" datepicker="true" datepicker_format="YYYY-MM-DD">
			</td>
		</tr>
		<tr>
			<td>
				<?php echo $this->_tpl_vars['street_name']; ?>

			</td>
			<td colspan="5">
				<input type="text" name="street_name" size="105" value="<?php echo $this->_tpl_vars['street_name_value']; ?>
">
			</td>
		</tr>
		<tr>
			<td>
				<?php echo $this->_tpl_vars['street_no']; ?>

			</td>
			<td>
				<input type="text" name="street_no" value="<?php echo $this->_tpl_vars['street_no_value']; ?>
">
			</td>
			<td>
				<?php echo $this->_tpl_vars['counting_no']; ?>

			</td>
			<td>
				<input type="text" name="counting_no" value="<?php echo $this->_tpl_vars['counting_no_value']; ?>
">
			</td>
			<td>
				<?php echo $this->_tpl_vars['rtrw']; ?>

			</td>
			<td>
				<input type="text" name="rtrw" value="<?php echo $this->_tpl_vars['rtrw_value']; ?>
">
			</td>
		</tr>
		<tr>
			<td>
				<?php echo $this->_tpl_vars['postcode']; ?>

			</td>
			<td colspan="5">
				<input type="text" name="postcode" value=<?php echo $this->_tpl_vars['postcode_value']; ?>
>
			</td>
		</tr>
		<tr>
			<td>
				<?php echo $this->_tpl_vars['community']; ?>

			</td>
			<td colspan="2">
				<input type="text" name="community" value="<?php echo $this->_tpl_vars['community_value']; ?>
"><input type="button" name="btnLoV[]" value="List of Values" onClick="window.open('lov.php?table_name=community&col_name=community', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');">
			</td>
			<td>
				<?php echo $this->_tpl_vars['area']; ?>

			</td>
			<td colspan="2">
				<input type="text" name="area" value="<?php echo $this->_tpl_vars['area_value']; ?>
">
			</td>
		</tr>	
		<tr>
			<td>
				<?php echo $this->_tpl_vars['district']; ?>

			</td>
			<td>
				<input type="text" name="district" disabled value="<?php echo $this->_tpl_vars['district_value']; ?>
">
			</td>
			<td colspan="4">
				<?php echo $this->_tpl_vars['marker']; ?>

			</td>
		</tr>
		<tr>
			<td>
				<?php echo $this->_tpl_vars['city']; ?>

			</td>
			<td>
				<input type="text" name="city" disabled value="<?php echo $this->_tpl_vars['city_value']; ?>
">
			</td>
			<td>
				<?php echo $this->_tpl_vars['intention']; ?>

			</td>
			<td colspan="3">
				<select name="intention">
					<?php echo $this->_tpl_vars['intention_selection']; ?>

				</select>
			</td>
		</tr>
		<tr>
			<td>
				<?php echo $this->_tpl_vars['province']; ?>

			</td>
			<td>
				<input type="text" name="province" disabled value="<?php echo $this->_tpl_vars['province_value']; ?>
">
			</td>
			<td>
				<?php echo $this->_tpl_vars['currency']; ?>
(<?php echo $this->_tpl_vars['sell']; ?>
)
			</td>
			<td>
				<input type="text" name="currency1" size="3" value="<?php echo $this->_tpl_vars['currency1_value']; ?>
"><input type="button" name="btnLoV[]" value="List of Values" onClick="window.open('lov.php?table_name=currency&col_name=currency1', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');">
			</td>
			<td colspan="2">
				<?php echo $this->_tpl_vars['sell_price']; ?>
<input type="text" name="min_sell_price" value="<?php echo $this->_tpl_vars['min_sell_price_value']; ?>
"> - <input type="text" name="max_sell_price" value="<?php echo $this->_tpl_vars['max_sell_price_value']; ?>
">
			</td>
		</tr>
		<tr>
			<td>
				<?php echo $this->_tpl_vars['country']; ?>

			</td>
			<td>
				<input type="text" name="country" disabled value="<?php echo $this->_tpl_vars['country_value']; ?>
">
			</td>
			<td>
				<?php echo $this->_tpl_vars['currency']; ?>
(<?php echo $this->_tpl_vars['rent']; ?>
)
			</td>
			<td>
				<input type="text" name="currency2" size="3" value="<?php echo $this->_tpl_vars['currency2_value']; ?>
"><input type="button" name="btnLoV[]" value="List of Values" onClick="window.open('lov.php?table_name=currency&col_name=currency2', '_blank', 'location=no,resizable=yes,toolbar=no,status=no');">
			</td>
			<td colspan="2">
				<?php echo $this->_tpl_vars['rent_price']; ?>
<input type="text" name="min_rent_price" value="<?php echo $this->_tpl_vars['min_rent_price_value']; ?>
"> - <input type="text" name="max_rent_price" value="<?php echo $this->_tpl_vars['max_rent_price_value']; ?>
">
			</td>
		</tr>
		<tr>
			<td>
				<?php echo $this->_tpl_vars['address']; ?>

			</td>
			<td colspan="5">
				<textarea name="address" cols="85" rows="4"><?php echo $this->_tpl_vars['address_value']; ?>
</textarea>
			</td>
		</tr>
		<tr>
			<td colspan="6" align="center">
				<input type="submit" value="<?php echo $this->_tpl_vars['update']; ?>
" name="btnUpdate">
				<input type="hidden" value="<?php echo $this->_tpl_vars['id']; ?>
" name="id">
			</td>
		</tr>
	</table>
	</form>

	<div id="dolphincontainer">
	<div id="dolphinnav">
	<ul>
	<li><a href="http://www.javascriptkit.com"><span><?php echo $this->_tpl_vars['specification']; ?>
</span></a></li>
	<li><a href="http://www.javascriptkit.com" rel="picture"><span><?php echo $this->_tpl_vars['picture']; ?>
</span></a></li>
	</ul>
	</div>
	
	<!-- Sub Menus container. Do not remove -->
	<div id="dolphin_inner">

	<div id="picture" class="innercontent">
		<table width="100%">
		<tr>
			<td>
				<input type="button" name="btnAddPicture" value="<?php echo $this->_tpl_vars['add_picture']; ?>
">
			</td>
		</tr>
		<?php echo $this->_tpl_vars['pictures_content']; ?>

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