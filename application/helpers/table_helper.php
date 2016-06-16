<?php

function get_sales_manage_table($sales, $controller)
{
	$CI =& get_instance();
	$table='';
	// $table='<table class="tablesorter" id="sortable_table">';

	$headers = array('&nbsp;',
	$CI->lang->line('sales_receipt_number'),
	$CI->lang->line('sales_sale_time'),
	$CI->lang->line('customers_customer'),
	$CI->lang->line('sales_amount_tendered'),
	$CI->lang->line('sales_amount_due'),
	$CI->lang->line('sales_change_due'),
	$CI->lang->line('sales_payment'),
	$CI->lang->line('sales_invoice_number'),
	'&nbsp','&nbsp','&nbsp');

	$table.='<thead><tr>';
	foreach($headers as $header)
	{
		$table.="<th>$header</th>";
	}
	$table.='</tr></thead><tbody>';
	$table.=get_sales_manage_table_data_rows($sales, $controller);
	$table.='</tbody>';

	return $table;
}

/*
 Gets the html data rows for the sales.
 */
function get_sales_manage_table_data_rows($sales, $controller)
{
	$CI =& get_instance();
	$table_data_rows = '';
	$sum_amount_tendered = 0;
	$sum_amount_due = 0;
	$sum_change_due = 0;

	foreach($sales as $key=>$sale)
	{
		$table_data_rows .= get_sales_manage_sale_data_row($sale, $controller);
		
		$sum_amount_tendered += $sale['amount_tendered'];
		$sum_amount_due += $sale['amount_due'];
		$sum_change_due += $sale['change_due'];
	}

	return $table_data_rows;
}

function get_sales_manage_sale_data_row($sale, $controller)
{
	$CI =& get_instance();
	$controller_name = $CI->uri->segment(1);
	$width = $controller->get_form_width();

	$table_data_row='<tr>';
	$table_data_row.='<td><input type="checkbox" id="sale_' . $sale['sale_id'] . '" value="' . $sale['sale_id']. '" /></td>';
	$table_data_row.='<td>'.'POS ' . $sale['sale_id'] . '</td>';
	$table_data_row.='<td>'.date( $CI->config->item('dateformat') . ' ' . $CI->config->item('timeformat'), strtotime($sale['sale_time']) ).'</td>';
	$table_data_row.='<td>'.character_limiter( $sale['customer_name'], 25).'</td>';
	$table_data_row.='<td>'.to_currency( $sale['amount_tendered'] ).'</td>';
	$table_data_row.='<td>'.to_currency( $sale['amount_due'] ).'</td>';
	$table_data_row.='<td>'.to_currency( $sale['change_due'] ).'</td>';
	$table_data_row.='<td>'.$sale['payment_type'].'</td>';
	$table_data_row.='<td>'.$sale['invoice_number'].'</td>';
	
	$table_data_row.='<td><button class="btn btn-info btn-sm" onclick="modal_edit_sales('.$sale['sale_id'].')" title="'.$CI->lang->line($controller_name.'_update').'"><i class="fa fa-pencil-square"></i> '.$CI->lang->line('common_edit').'</button></td>';
	// $table_data_row.=anchor($controller_name."/edit/" . $sale['sale_id'] . "/width:$width", $CI->lang->line('common_edit'),array('class'=>'thickbox','title'=>$CI->lang->line($controller_name.'_update')));
	// $table_data_row.='&nbsp;&nbsp;&nbsp;&nbsp;';
	$table_data_row.='<td><a class="btn btn-success btn-sm" href="'.site_url($controller_name. '/receipt/' . $sale['sale_id']) . '">' . $CI->lang->line('sales_show_receipt') . '</a></td>';
	// $table_data_row.='<a href="'.site_url($controller_name. "/receipt/" . $sale['sale_id']) . '">' . $CI->lang->line('sales_show_receipt') . '</a>';
	// $table_data_row.='&nbsp;&nbsp;&nbsp;&nbsp;';
	$table_data_row.='<td><a class="btn btn-info btn-sm" href="'.site_url($controller_name. "/invoice/" . $sale['sale_id']) . '">' . $CI->lang->line('sales_show_invoice') . '</a></td>';
	// $table_data_row.='<a href="'.site_url($controller_name. "/invoice/" . $sale['sale_id']) . '">' . $CI->lang->line('sales_show_invoice') . '</a>';
	
	$table_data_row.='</tr>';

	return $table_data_row;
}

/*
Get the sales payments summary
*/
function get_sales_manage_payments_summary($payments, $sales, $controller)
{
	$CI =& get_instance();
	$table='<div id="report_summary">';

	foreach($payments as $key=>$payment)
	{
		$amount = $payment['payment_amount'];

		// WARNING: the strong assumption here is that if a change is due it was a cash transaction always
		// therefore we remove from the total cash amount any change due
		if( $payment['payment_type'] == $CI->lang->line('sales_cash') )
		{
			foreach($sales as $key=>$sale)
			{
				$amount -= $sale['change_due'];
			}
		}
		$table.='<div class="summary_row"><strong>'.$payment['payment_type'].'</strong>: '.to_currency( $amount ) . '</div>';
	}
	$table.='</div>';
	return $table;
}

/*
Gets the html table to manage people.
*/
function get_people_manage_table($people,$controller)
{
	$CI =& get_instance();
	$table='';
	// $table='<table class="tablesorter" id="sortable_table">';
	
	$headers = array('<input type="checkbox" id="select_all" />', 
	$CI->lang->line('common_last_name'),
	$CI->lang->line('common_first_name'),
	$CI->lang->line('common_email'),
	$CI->lang->line('common_phone_number'),
	'&nbsp');
	
	$table.='<thead><tr>';
	foreach($headers as $header)
	{
		$table.="<th>$header</th>";
	}
	$table.='</tr></thead><tbody>';
	$table.=get_people_manage_table_data_rows($people,$controller);
	$table.='</tbody>';
	// $table.='</tbody></table>';

	return $table;
}

/*
Gets the html data rows for the people.
*/
function get_people_manage_table_data_rows($people,$controller)
{
	$CI =& get_instance();
	$table_data_rows='';
	
	foreach($people->result() as $person)
	{
		$table_data_rows.=get_person_data_row($person,$controller);
	}
	
	if($people->num_rows()==0)
	{
		$table_data_rows.="<tr><td colspan='6'><div class='warning_message' style='padding:7px;'>".$CI->lang->line('common_no_persons_to_display')."</div></td></tr>";
	}
	
	return $table_data_rows;
}

function get_person_data_row($person,$controller)
{
	$CI =& get_instance();
	$controller_name=strtolower(get_class($CI));
	$width = $controller->get_form_width();

	$table_data_row='<tr>';
	$table_data_row.="<td width='5%'><input type='checkbox' id='person_$person->person_id' value='".$person->person_id."'/></td>";
	$table_data_row.='<td width="20%">'.character_limiter($person->last_name,13).'</td>';
	$table_data_row.='<td width="20%">'.character_limiter($person->first_name,13).'</td>';
	$table_data_row.='<td width="30%">'.mailto($person->email,character_limiter($person->email,22)).'</td>';
	$table_data_row.='<td width="20%">'.character_limiter($person->phone_number,13).'</td>';
	$table_data_row.='<td><button class="btn btn-info btn-sm" onclick="modal_edit_item('.$person->person_id.')" title="'.$CI->lang->line($controller_name.'_update').'"><i class="fa fa-pencil-square"></i> '.$CI->lang->line('common_edit').'</button></td>';
	// $table_data_row.='<td width="5%">'.anchor($controller_name."/view/$person->person_id/width:$width", $CI->lang->line('common_edit'),array('class'=>'thickbox','title'=>$CI->lang->line($controller_name.'_update'))).'</td>';		
	$table_data_row.='</tr>';
	
	return $table_data_row;
}

function get_detailed_data_row($row, $controller)
{
	$table_data_row='<tr>';
	$table_data_row.='<td><a href="#" class="expand">+</a></td>';
	foreach($row as $cell)
	{
		$table_data_row.='<td>';
		$table_data_row.=$cell;
		$table_data_row.='</td>';
	}
	$table_data_row.='</tr>';

	return $table_data_row;
}

/*
Gets the html table to manage suppliers.
*/
function get_supplier_manage_table($suppliers,$controller)
{
	$CI =& get_instance();
	$table='';
	
	$headers = array('<input type="checkbox" id="select_all" />',
	$CI->lang->line('suppliers_company_name'),
	$CI->lang->line('suppliers_agency_name'),
	$CI->lang->line('common_last_name'),
	$CI->lang->line('common_first_name'),
	$CI->lang->line('common_email'),
	$CI->lang->line('common_phone_number'),
	$CI->lang->line('suppliers_supplier_id'),
	'&nbsp');
	
	$table.='<thead><tr>';
	foreach($headers as $header)
	{
		$table.="<th>$header</th>";
	}
	$table.='</tr></thead><tbody>';
	$table.=get_supplier_manage_table_data_rows($suppliers,$controller);
	$table.='</tbody>';

	return $table;
}

/*
Gets the html data rows for the supplier.
*/
function get_supplier_manage_table_data_rows($suppliers,$controller)
{
	$CI =& get_instance();
	$table_data_rows='';
	
	foreach($suppliers->result() as $supplier)
	{
		$table_data_rows.=get_supplier_data_row($supplier,$controller);
	}
	
	if($suppliers->num_rows()==0)
	{
		$table_data_rows.="<tr><td colspan='9'><div class='warning_message' style='padding:7px;'>".$CI->lang->line('common_no_persons_to_display')."</div></td></tr>";
	}
	
	return $table_data_rows;
}

function get_supplier_data_row($supplier,$controller)
{
	$CI =& get_instance();
	$controller_name=strtolower(get_class($CI));
	$width = $controller->get_form_width();

	$table_data_row='<tr>';
	$table_data_row.="<td><input type='checkbox' id='person_$supplier->person_id' value='".$supplier->person_id."'/></td>";
	$table_data_row.='<td>'.character_limiter($supplier->company_name,13).'</td>';
	$table_data_row.='<td>'.character_limiter($supplier->agency_name,13).'</td>';
	$table_data_row.='<td>'.character_limiter($supplier->last_name,13).'</td>';
	$table_data_row.='<td>'.character_limiter($supplier->first_name,13).'</td>';
	$table_data_row.='<td>'.mailto($supplier->email,character_limiter($supplier->email,22)).'</td>';
	$table_data_row.='<td>'.character_limiter($supplier->phone_number,13).'</td>';
	$table_data_row.='<td>'.character_limiter($supplier->person_id,5).'</td>';
	$table_data_row.='<td><button class="btn btn-info btn-sm" onclick="modal_edit_item('.$supplier->person_id.')" title="'.$CI->lang->line($controller_name.'_update').'"><i class="fa fa-pencil-square"></i> '.$CI->lang->line('common_edit').'</button></td>';
	// $table_data_row.='<td>'.anchor($controller_name."/view/$supplier->person_id/width:$width", $CI->lang->line('common_edit'),array('class'=>'thickbox','title'=>$CI->lang->line($controller_name.'_update'))).'</td>';
	$table_data_row.='</tr>';
	
	return $table_data_row;
}

/*
Gets the html table to manage items.
*/
function get_items_manage_table($items,$controller)
{
	$CI =& get_instance();
	$table='';
	// $table='<table class="tablesorter" id="sortable_table">';
	
	$headers = array('<input type="checkbox" id="select_all" />', 
	$CI->lang->line('items_item_number_and_name'),
	// $CI->lang->line('items_name'),
	$CI->lang->line('items_category'),
	// $CI->lang->line('items_color'),
	$CI->lang->line('suppliers'),
	$CI->lang->line('items_cost_price'),
	$CI->lang->line('items_unit_price'),
	$CI->lang->line('items_quantity'),
	$CI->lang->line('items_tax_percents'),
	'&nbsp;',
	'&nbsp;',
	'&nbsp;'	
	);
	
	$table.='<thead><tr>';
	foreach($headers as $header)
	{
		$table.="<th>$header</th>";
	}
	$table.='</tr></thead><tbody>';
	$table.=get_items_manage_table_data_rows($items,$controller);
	$table.='</tbody>';
	// $table.='</tbody></table>';

	return $table;
}

/*
Gets the html data rows for the items.
*/
function get_items_manage_table_data_rows($items,$controller)
{
	$CI =& get_instance();
	$table_data_rows='';
	
	foreach($items->result() as $item)
	{
		$table_data_rows.=get_item_data_row($item,$controller);
	}
	
	if($items->num_rows()==0)
	{
		$table_data_rows.="<tr><td colspan='12'><div class='warning_message' style='padding:7px;'>".$CI->lang->line('items_no_items_to_display')."</div></td></tr>";
	}
	
	return $table_data_rows;
}

function get_item_data_row($item,$controller)
{
	$CI =& get_instance();
	$item_tax_info=$CI->Item_taxes->get_info($item->item_id);
	$tax_percents = '';
	foreach($item_tax_info as $tax_info)
	{
		$tax_percents.=$tax_info['percent']. '%, ';
	}
	$tax_percents=substr($tax_percents, 0, -2);
	$controller_name=strtolower(get_class($CI));
	$width = $controller->get_form_width();

    $item_quantity='';
    
	$table_data_row='<tr>';
	$table_data_row.="<td width='3%'><input type='checkbox' id='item_$item->item_id' value='".$item->item_id."'/></td>";
	// $table_data_row.='<td width="15%">'.$item->item_number.'</td>';
	$table_data_row.='<td><strong>ID '.$item->item_number.'</strong><br>'.$item->name.'<br>Warna: '.($item->color<>"" ? $item->color : '-').'</td>';
	$table_data_row.='<td>'.$item->category.'</td>';
	// $table_data_row.='<td width="7%">'.$item->color.'</td>';
	$table_data_row.='<td>'.$item->company_name.'</td>';
	$table_data_row.='<td>'.to_currency($item->cost_price).'</td>';
	$table_data_row.='<td>'.to_currency($item->unit_price).'</td>';
    $table_data_row.='<td>'.$item->quantity.'</td>';
	$table_data_row.='<td>'.$tax_percents.'</td>';
	// $image = '';
	// if (!empty($item->pic_id))
	// {
	// 	$images = glob ("uploads/item_pics/" . $item->pic_id . ".*");
	// 	if (sizeof($images) > 0)
	// 	{
	// 		$image.='<a class="rollover" href="'. base_url($images[0]) .'"><img src="'.site_url('items/pic_thumb/'.$item->pic_id).'"></a>';
	// 	}
	// }
	// $table_data_row.='<td align="center" width="55px">' . $image . '</td>';
	$table_data_row.='<td><button class="btn btn-info btn-sm" onclick="modal_edit_item('.$item->item_id.')" title="'.$CI->lang->line($controller_name.'_update').'"><i class="fa fa-pencil-square"></i> '.$CI->lang->line('common_edit').'</button></td>';

	$table_data_row.='<td><button class="btn btn-warning btn-sm" onclick="modal_inventory('.$item->item_id.')" title="'.$CI->lang->line($controller_name.'_count').'"><i class="fa fa-hdd-o"></i> '.$CI->lang->line('common_inv').'</button></td>';
	//inventory count	
	$table_data_row.='<td><button class="btn btn-info btn-sm" onclick="modal_detail_item('.$item->item_id.')" title="'.$CI->lang->line($controller_name.'_details_count').'"><i class="fa fa-search"></i> '.$CI->lang->line('common_det').'</button></td>';
	// $table_data_row.='<td width="5%">&nbsp;&nbsp;&nbsp;&nbsp;'.anchor($controller_name."/count_details/$item->item_id", $CI->lang->line('common_det'),array('data-toggle'=>'modal','data-target'=>'#item-modal','title'=>$CI->lang->line($controller_name.'_details_count'))).'</td>';//inventory details	
	
	$table_data_row.='</tr>';

	return $table_data_row;
}

/*
Gets the html table to manage giftcards.
*/
function get_giftcards_manage_table( $giftcards, $controller )
{
	$CI =& get_instance();
	$table='';
	
	$headers = array('<input type="checkbox" id="select_all" />', 
	$CI->lang->line('common_last_name'),
	$CI->lang->line('common_first_name'),
	$CI->lang->line('giftcards_giftcard_number'),
	$CI->lang->line('giftcards_card_value'),
	'&nbsp', 
	);
	
	$table.='<thead><tr>';
	foreach($headers as $header)
	{
		$table.="<th>$header</th>";
	}
	$table.='</tr></thead><tbody>';
	$table.=get_giftcards_manage_table_data_rows( $giftcards, $controller );
	$table.='</tbody>';

	return $table;
}

/*
Gets the html data rows for the giftcard.
*/
function get_giftcards_manage_table_data_rows( $giftcards, $controller )
{
	$CI =& get_instance();
	$table_data_rows='';
	
	foreach($giftcards->result() as $giftcard)
	{
		$table_data_rows.=get_giftcard_data_row( $giftcard, $controller );
	}
	
	return $table_data_rows;
}

function get_giftcard_data_row($giftcard,$controller)
{
	$CI =& get_instance();
	$controller_name=strtolower(get_class($CI));
	$width = $controller->get_form_width();

	$table_data_row='<tr>';
	$table_data_row.="<td><input type='checkbox' id='giftcard_$giftcard->giftcard_id' value='".$giftcard->giftcard_id."'/></td>";
	$table_data_row.='<td>'.$giftcard->last_name.'</td>';
	$table_data_row.='<td>'.$giftcard->first_name.'</td>';
	$table_data_row.='<td>'.$giftcard->giftcard_number.'</td>';
	$table_data_row.='<td>'.to_currency($giftcard->value).'</td>';
	$table_data_row.='<td><button class="btn btn-info btn-sm" onclick="modal_edit_giftcard('.$giftcard->giftcard_id.')" title="'.$CI->lang->line($controller_name.'_update').'"><i class="fa fa-pencil-square"></i> '.$CI->lang->line('common_edit').'</button></td>';
	// $table_data_row.='<td>'.anchor($controller_name."/view/$giftcard->giftcard_id/width:$width", $CI->lang->line('common_edit'),array('class'=>'thickbox','title'=>$CI->lang->line($controller_name.'_update'))).'</td>';
	$table_data_row.='</tr>';

	return $table_data_row;
}

/*
Gets the html table to manage item kits.
*/
function get_item_kits_manage_table( $item_kits, $controller )
{
	$CI =& get_instance();
	$table='';
	// $table='<table class="tablesorter" id="sortable_table">';
	
	$headers = array('<input type="checkbox" id="select_all" />', 
	$CI->lang->line('item_kits_kit'),
	$CI->lang->line('item_kits_name'),
	$CI->lang->line('item_kits_description'),
	$CI->lang->line('items_cost_price'),
	$CI->lang->line('items_unit_price'),
	'&nbsp', 
	);
	
	$table.='<thead><tr>';
	foreach($headers as $header)
	{
		$table.="<th>$header</th>";
	}
	$table.='</tr></thead><tbody>';
	$table.=get_item_kits_manage_table_data_rows( $item_kits, $controller );
	$table.='</tbody>';
	// $table.='</tbody></table>';

	return $table;
}

/*
Gets the html data rows for the item kits.
*/
function get_item_kits_manage_table_data_rows($item_kits, $controller)
{
	$CI =& get_instance();
	$table_data_rows='';
	
	foreach($item_kits->result() as $item_kit)
	{
		$table_data_rows .= get_item_kit_data_row($item_kit, $controller);
	}
	
	if($item_kits->num_rows()==0)
	{
		$table_data_rows .= "<tr><td colspan='11'><div class='warning_message' style='padding:7px;'>".$CI->lang->line('item_kits_no_item_kits_to_display')."</div></td></tr>";
	}
	
	return $table_data_rows;
}

function get_item_kit_data_row($item_kit, $controller)
{
	$CI =& get_instance();
	$controller_name=strtolower(get_class($CI));
	$width = $controller->get_form_width();

	$table_data_row='<tr>';
	$table_data_row.="<td width='3%'><input type='checkbox' id='item_kit_$item_kit->item_kit_id' value='".$item_kit->item_kit_id."'/></td>";
	$table_data_row.='<td>'.'KIT '.$item_kit->item_kit_id.'</td>';
	$table_data_row.='<td>'.$item_kit->name.'</td>';
	$table_data_row.='<td>'.character_limiter($item_kit->description, 25).'</td>';
	$table_data_row.='<td>'.to_currency($item_kit->total_cost_price).'</td>';
	$table_data_row.='<td>'.to_currency($item_kit->total_unit_price).'</td>';
	$table_data_row.='<td><button class="btn btn-info btn-sm" onclick="modal_edit_item('.$item_kit->item_kit_id.')" title="'.$CI->lang->line($controller_name.'_update').'"><i class="fa fa-pencil-square"></i> '.$CI->lang->line('common_edit').'</button></td>';
	// $table_data_row.='<td width="5%">'.anchor($controller_name."/view/$item_kit->item_kit_id/width:$width", $CI->lang->line('common_edit'),array('class'=>'thickbox','title'=>$CI->lang->line($controller_name.'_update'))).'</td>';
	$table_data_row.='</tr>';

	return $table_data_row;
}
function get_raw_materials_manage_table($raw_materials,$controller)
{
	$CI =& get_instance();
	$table='';
	// $table='<table class="tablesorter" id="sortable_table">';
	
	$headers = array('<input type="checkbox" id="select_all" />', 
	$CI->lang->line('items_item_number_and_name'),
	$CI->lang->line('items_category'),
	$CI->lang->line('suppliers'),
	$CI->lang->line('items_cost_price'),
	$CI->lang->line('items_unit_price'),
	$CI->lang->line('items_quantity'),
	$CI->lang->line('items_tax_percents'),
	'&nbsp;',
	'&nbsp;',
	'&nbsp;'	
	);
	
	$table.='<thead><tr>';
	foreach($headers as $header)
	{
		$table.="<th>$header</th>";
	}
	$table.='</tr></thead><tbody>';
	$table.=get_raw_materials_manage_table_data_rows($raw_materials,$controller);
	$table.='</tbody>';
	// $table.='</tbody></table>';

	return $table;
}

/*
Gets the html data rows for the items.
*/
function get_raw_materials_manage_table_data_rows($raw_materials,$controller)
{
	$CI =& get_instance();
	$table_data_rows='';
	
	foreach($raw_materials->result() as $item)
	{
		$table_data_rows.=get_raw_materials_data_row($item,$controller);
	}
	
	if($raw_materials->num_rows()==0)
	{
		$table_data_rows.="<tr><td colspan='12'><div class='warning_message' style='padding:7px;'>".$CI->lang->line('items_no_items_to_display')."</div></td></tr>";
	}
	
	return $table_data_rows;
}

function get_raw_materials_data_row($raw_material,$controller)
{
	$CI =& get_instance();
	$item_tax_info=$CI->Item_taxes->get_info($raw_material->item_id);
	$tax_percents = '';
	foreach($item_tax_info as $tax_info)
	{
		$tax_percents.=$tax_info['percent']. '%, ';
	}
	$tax_percents=substr($tax_percents, 0, -2);
	$controller_name=strtolower(get_class($CI));
	$width = $controller->get_form_width();

    $item_quantity='';
    
	$table_data_row='<tr>';
	$table_data_row.="<td width='3%'><input type='checkbox' id='item_$raw_material->item_id' value='".$raw_material->item_id."'/></td>";
	$table_data_row.='<td><strong>ID '.$raw_material->item_number.'</strong><br>'.$raw_material->name.'</td>';
	$table_data_row.='<td>'.$raw_material->category.'</td>';
	$table_data_row.='<td>'.$raw_material->company_name.'</td>';
	$table_data_row.='<td>'.to_currency($raw_material->cost_price).'</td>';
	$table_data_row.='<td>'.to_currency($raw_material->unit_price).'</td>';
    $table_data_row.='<td>'.$raw_material->quantity.'</td>';
	$table_data_row.='<td>'.$tax_percents.'</td>';
	
	$table_data_row.='<td><button class="btn btn-info btn-sm" onclick="modal_edit_item('.$raw_material->item_id.')" title="'.$CI->lang->line($controller_name.'_update').'"><i class="fa fa-pencil-square"></i> '.$CI->lang->line('common_edit').'</button></td>';

	$table_data_row.='<td><button class="btn btn-warning btn-sm" onclick="modal_inventory('.$raw_material->item_id.')" title="'.$CI->lang->line($controller_name.'_count').'"><i class="fa fa-hdd-o"></i> '.$CI->lang->line('common_inv').'</button></td>';
	//inventory count	
	$table_data_row.='<td><button class="btn btn-info btn-sm" onclick="modal_detail_item('.$raw_material->item_id.')" title="'.$CI->lang->line($controller_name.'_details_count').'"><i class="fa fa-search"></i> '.$CI->lang->line('common_det').'</button></td>';
	
	$table_data_row.='</tr>';

	return $table_data_row;
}
/*Shipping table*/
function get_shippings_manage_table($shippings,$controller)
{
	$CI =& get_instance();
	$table='';
	
	$headers = array('<input type="checkbox" id="select_all" />', 
	$CI->lang->line('sales_invoice_number'),
	$CI->lang->line('shippings_recipient_detail'),
	$CI->lang->line('shippings_ship_date'),
	$CI->lang->line('shippings_ship_status'),
	$CI->lang->line('sales_items'),
	$CI->lang->line('shippings_user_data_entry'),
	'&nbsp;'	
	);
	
	$table.='<thead><tr>';
	foreach($headers as $header)
	{
		$table.="<th>$header</th>";
	}
	$table.='</tr></thead><tbody>';
	$table.=get_shippings_manage_table_data_rows($shippings,$controller);
	$table.='</tbody>';

	return $table;
}

/*
Gets the html data rows for the items.
*/
function get_shippings_manage_table_data_rows($shippings,$controller)
{
	$CI =& get_instance();
	$table_data_rows='';
	
	foreach($shippings->result() as $item)
	{
		$table_data_rows.=get_shippings_data_row($item,$controller);
	}
	
	return $table_data_rows;
}

function get_shippings_data_row($shipping,$controller)
{
	$CI =& get_instance();
	$item_info =$CI->Shipping->get_item_info_by_sale_id($shipping->sale_id);
	$item_list = '';
	foreach($item_info->result_array() as $info)
	{
		$item_list .= '<strong>'.$info['item_number']. '</strong> | '.$info['name'].($info['color']<>""?" | Warna: ".$info['color']:"").($info['dimension']<>""?" | Ukuran: ".$info['dimension']:"").'<br>';
	}
	$item_list=substr($item_list, 0, -2);

	// get employee user entry
	$employee_info = $CI->Employee->get_info($shipping->user_entry_id);
	$controller_name=strtolower(get_class($CI));

    $item_quantity='';
    
	$table_data_row='<tr>';
	$table_data_row.="<td width='3%'><input type='checkbox' id='ship_$shipping->ship_id' value='".$shipping->ship_id."'/></td>";
	$table_data_row.='<td><strong>'.$shipping->invoice_number.'</strong></td>';
	$table_data_row.='<td>'.$shipping->recipient_name.'<br>Alamat: '.$shipping->recipient_address.'</td>';
	$table_data_row.='<td>'.date_format(new DateTime($shipping->shipping_date), 'd M Y').'</td>';
	$table_data_row.='<td>'.$shipping->status.'</td>';
	$table_data_row.='<td>'.$item_list.'</td>';
    $table_data_row.='<td>'.$employee_info->first_name.' '.$employee_info->last_name.'</td>';
	
	$table_data_row.='<td><button class="btn btn-info btn-sm" onclick="modal_edit_item('.$shipping->ship_id.')" title="'.$CI->lang->line($controller_name.'_update').'"><i class="fa fa-pencil-square"></i> '.$CI->lang->line('common_edit').'</button></td>';

	$table_data_row.='</tr>';

	return $table_data_row;
}
?>
