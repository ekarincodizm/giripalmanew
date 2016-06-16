<?php $this->load->view("partial/header"); ?>
<?php $this->load->view("partial/menu_left_sidebar"); ?>
<style>
	.ui-autocomplete {
    z-index: 5000;
	}
	.ui-widget-content .ui-state-focus{
		color:#000;
		font-weight: bold;
		background-color: #ffffff;
	}
</style>
<!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
    	<?php $this->load->view('partial/modal_large') ?>
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            <h3><?php echo $this->lang->line('common_list_of').' '.$this->lang->line('module_'.$controller_name); ?></h3>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="active">Dashboard</a></li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">

          <!-- Default box -->
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title"><?php echo $this->lang->line('recvs_register'); ?></h3>
            </div>
            <div class="box-body">

				<?php
				if(isset($error))
				{
					echo "<div class='error_message'>".$error."</div>";
				}
				?>

				<div class="row">
					<div class="col-md-12">
						<?php echo form_open("receivings/change_mode",array('id'=>'mode_form', 'class'=>'form-horizontal')); ?>
							<div class="row">
								<div class="col-md-4">
									<span><?php echo $this->lang->line('recvs_mode') ?></span>
									<?php echo form_dropdown('mode',$modes,$mode,'onchange="$(\'#mode_form\').submit();" class="form-control"'); ?>
								</div>
							
							<?php if ($show_stock_locations) { ?>
								<div class="col-md-4">
							    	<span><?php echo $this->lang->line('recvs_stock_source') ?></span>
							    	<?php echo form_dropdown('stock_source',$stock_locations,$stock_source,'onchange="$(\'#mode_form\').submit();" class="form-control"'); ?>
						    	</div>
							    <?php if($mode=='requisition') { ?>
								<div class="col-md-4">
								    <span><?php echo $this->lang->line('recvs_stock_destination') ?></span>
									<?php echo form_dropdown('stock_destination',$stock_locations,$stock_destination,'onchange="$(\'#mode_form\').submit();" class="form-control"'); ?>
								</div>
								<?php
							    }
							} ?>    
							</div>
						</form>
					</div>
					<div class="col-md-12">
						<div class="row">
							<?php
							if(isset($supplier)) { ?>
								<div class="col-md-4">
									<?php echo $this->lang->line("recvs_supplier").': <b>'.$supplier. '</b>'; ?>
								</div>
								<div class="col-md-8">
									<?php echo anchor("receivings/delete_supplier",'['.$this->lang->line('common_delete').' '.$this->lang->line('suppliers_supplier').']'); ?>
								</div>
							<?php
							}
							else
							{ ?>
								<?php echo form_open("receivings/select_supplier",array('id'=>'select_supplier_form','class'=>'form-horizontal')); ?>
									<input type="hidden" name="supplier" id="selected_supplier_id" value="">
									<div class="col-md-4">
										<label id="supplier_label" for="supplier"><?php echo $this->lang->line('recvs_select_supplier'); ?></label>
										<?php echo form_input(array('name'=>'supplier-name','id'=>'supplier-name','placeholder'=>$this->lang->line('recvs_start_typing_supplier_name'), 'class'=>'form-control'));?>
										
									</div>
								</form>
								<div class="col-md-1">
									<!-- <div style="margin-top:5px;text-align:center;"> -->
									<h3 style="margin: 25px 0 5px 0"><?php echo $this->lang->line('common_or'); ?></h3>
								</div>
								<div class="col-md-2">
									<button class="btn btn-block btn-success btn-sm" id="btn-new-supplier" style="margin-top: 25px;"><?php echo $this->lang->line('recvs_new_supplier') ?></button>
									<?php //echo anchor("suppliers/view/-1/width:400",
									// "<div style='margin-top:25px'><button class='btn btn-block btn-success btn-sm'>".$this->lang->line('recvs_new_supplier')."</button></div>",
									// array('class'=>'thickbox none','title'=>$this->lang->line('recvs_new_supplier')));
									?>
								</div>
								
								<!-- <div class="clearfix">&nbsp;</div> -->
								<?php
							}
							?>
						</div> <!-- ./row -->
						<div class="clearfix">&nbsp;</div>
					</div> <!-- ./col-md-5 -->
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-3">
								<span style="float:right; margin-top:10px">
								<?php
								if($mode=='receive' or $mode=='requisition')
								{
									echo $this->lang->line('recvs_find_or_scan_item');
								}
								else
								{
									echo $this->lang->line('recvs_find_or_scan_item_or_receipt');
								}
								?>
								</span>
							</div>
							<div class="col-md-4">
								<?php echo form_open("receivings/add",array('id'=>'add_item_form', 'class'=>'form-horizontal')); ?>
								<input type="hidden" name="item" id="selected_item_id">
								<?php echo form_input(array('name'=>'item_name','id'=>'item_id','class'=>'form-control'));?>
								</form>
							</div>
							<div class="col-md-2">
								<h3 style="margin-top: 12px"><?php echo $this->lang->line('common_or'); ?></h3>
							</div>
							<div class="col-md-2">							
								<div id="new_item_button_register" style="margin-top: 12px;">
										<button class="btn btn-block btn-success btn-sm" id="btn-new-item"><?php echo $this->lang->line('sales_new_item') ?></button>
										<?php //echo anchor("items/view/-1/width:450",
										// "<div><button class='btn btn-block btn-success btn-sm'>".$this->lang->line('sales_new_item')."</button></div>",
										// array('class'=>'thickbox none','title'=>$this->lang->line('sales_new_item')));
										?>
									</div>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<!-- Receiving Items List -->
						<table id="register">
							<thead>
								<tr>
									<th style="width:11%;"><?php echo $this->lang->line('common_delete'); ?></th>
									<th style="width:30%;"><?php echo $this->lang->line('recvs_item_name'); ?></th>
									<th style="width:11%;"><?php echo $this->lang->line('recvs_cost'); ?></th>
									<th style="width:5%;"><?php echo $this->lang->line('recvs_quantity'); ?></th>
									<th style="width:6%;"></th>
									<th style="width:11%;"><?php echo $this->lang->line('recvs_discount'); ?></th>
									<th style="width:15%;"><?php echo $this->lang->line('recvs_total'); ?></th>
									<th style="width:11%;"><?php echo $this->lang->line('recvs_edit'); ?></th>
								</tr>
							</thead>
							<tbody id="cart_contents">
								<?php
								if(count($cart)==0){ ?>
								<tr>
									<td colspan='8'>
										<div class='warning_message' style='padding:7px;'><?php echo $this->lang->line('sales_no_items_in_cart'); ?></div>
									</td>
								</tr>
								<?php }
								else {
									foreach(array_reverse($cart, true) as $line=>$item) {
								        echo form_open("receivings/edit_item/$line");
										
								?>
							    <tr>
								    <td><?php echo anchor("receivings/delete_item/$line",'['.$this->lang->line('common_delete').']');?></td>
									<td style="align:center;"><?php echo base64_decode($item['name']); ?><br /> [<?php echo $item['in_stock']; ?> in <?php echo $item['stock_name']; ?>]
							            <?php echo form_hidden('location', $item['item_location']); ?></td>

									<?php if ($items_module_allowed && $mode !='requisition'){ ?>

									<td><?php echo form_input(array('name'=>'price','value'=>$item['price'],'size'=>'6'));?></td>
									
									<?php } else { ?>
									
									<td><?php echo $item['price']; ?></td>
									<?php echo form_hidden('price',$item['price']); ?>

									<?php } ?>
										
									<td>
									<?php
							            echo form_input(array('name'=>'quantity','value'=>$item['quantity'],'size'=>'2'));
							            if ($item['receiving_quantity'] > 1) 
										{
									?>
									</td>
							        <td>x <?php echo $item['receiving_quantity']; ?></td>

									<?php } else { ?>

									<td></td>
									<?php } ?>
									
									<?php if ($items_module_allowed && $mode!='requisition') { ?>
								    
								    <td><?php echo form_input(array('name'=>'discount','value'=>$item['discount'],'size'=>'3'));?></td>

									<?php } else { ?>
									     <td><?php echo $item['discount']; ?></td>
									     <?php echo form_hidden('discount',$item['discount']); ?>
									<?php
									    }
									?>
									<td><?php echo to_currency($item['price']*$item['quantity']-$item['price']*$item['quantity']*$item['discount']/100); ?></td>
									<td><?php echo form_submit("edit_item", $this->lang->line('sales_edit_item'));?></td>
								</tr>
								<tr>
									<?php if($item['allow_alt_description']==1){ ?>
									<td style="color: #2F4F4F;"><?php echo $this->lang->line('sales_description_abbrv').':';?></td>
									<?php } ?>

									<td colspan="2" style="text-align: left;">
								
									<?php
							        	if($item['allow_alt_description']==1)
							        	{
							        		echo form_input(array('name'=>'description','value'=>base64_decode($item['description']),'size'=>'20'));
							        	}
							        	else
							        	{
											if (base64_decode($item['description'])!='')
											{
												echo base64_decode($item['description']);
							        			echo form_hidden('description',base64_decode($item['description']));
							        		}
							        		else
							        		{
							        		    echo $this->lang->line('sales_no_description');
							           			echo form_hidden('description','');
							        		}
							        	}
									?>
									</td>
									<td colspan="6"></td>
								</tr>
								</form>
									<?php
									}
								}
								?>
							</tbody>
						</table>
					</div> <!-- ./col-md-12 -->
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-6"></div>
							<div class="col-md-6">
								<!-- Overall Receiving -->
								<div id="overall_sale">
								    <?php
								        if($mode != 'requisition')
								        {
								    ?>
									<div id='sale_details'>
										<div class="float_left" style='width:55%;'><?php echo $this->lang->line('sales_total'); ?>:</div>
										<div class="float_left" style="width:45%;font-weight:bold;"><?php echo to_currency($total); ?></div>
									</div>
									<?php 
								        }
									?>
									<?php
									if(count($cart) > 0)
									{
										if($mode == 'requisition')
										{
										?>
										    
									   	<!-- <div  style='border-top:2px solid #000;' /> -->
										    <div id="finish_sale">
										        <?php echo form_open("receivings/requisition_complete",array('id'=>'finish_receiving_form')); ?>
											        <br />
											        <label id="comment_label" for="comment"><?php echo $this->lang->line('common_comments'); ?>:</label>
											        <?php echo form_textarea(array('name'=>'comment','id'=>'comment','value'=>$comment,'rows'=>'4','cols'=>'23'));?>
											        <br /><br />
											        
											        <div class='small_button' id='finish_receiving_button' style='float:right;margin-top:5px;'>
											        	<span><?php echo $this->lang->line('recvs_complete_receiving') ?></span>
											        </div>
										        </form>    
										        <?php echo form_open("receivings/cancel_receiving",array('id'=>'cancel_receiving_form')); ?>
											        <div class='small_button' id='cancel_receiving_button' style='float:left;margin-top:5px;'>
											        	<span><?php echo $this->lang->line('recvs_cancel_receiving')?></span>
											        </div>
										        </form>
										     </div>
									    <?php
									        }
									        else
									        {
										?>
											<div id="finish_sale">
												<?php echo form_open("receivings/complete",array('id'=>'finish_receiving_form','class'=>'form-horizontal')); ?>
													<br />
													<label id="comment_label" for="comment"><?php echo $this->lang->line('common_comments'); ?>:</label>
													<?php echo form_textarea(array('name'=>'comment','id'=>'comment','value'=>$comment,'rows'=>'4','cols'=>'23','class'=>'form-control'));?>
													<br /><br />
													<table width="100%">
														<tr>
															<td>
																<?php echo $this->lang->line('recvs_print_after_sale'); ?>
															</td>
															<td>
																<?php if ($print_after_sale)
																{
																	echo form_checkbox(array('name'=>'recv_print_after_sale','id'=>'recv_print_after_sale','checked'=>'checked'));
																}
																else
																{
																	echo form_checkbox(array('name'=>'recv_print_after_sale','id'=>'recv_print_after_sale'));
																}
																?>
															</td>
														</tr>
														<?php if ($mode == "receive") { ?>
														<tr>
															<td>
																<?php echo $this->lang->line('recvs_invoice_enable'); ?>
															</td>
															<td>
															<?php if ($invoice_number_enabled) {
																echo form_checkbox(array('name'=>'recv_invoice_enable','id'=>'recv_invoice_enable','size'=>10,'checked'=>'checked'));
															}
															else {
																echo form_checkbox(array('name'=>'recv_invoice_enable','id'=>'recv_invoice_enable','size'=>10));
															}
															?>
															</td>
														</tr>
														<tr>
															<td>
																<?php echo $this->lang->line('recvs_invoice_number').':   ';?>
															</td>
															<td>
																<?php echo form_input(array('name'=>'recv_invoice_number','id'=>'recv_invoice_number','value'=>$invoice_number,'class'=>'form-control'));?>
															</td>
														</tr>
														<?php } ?>
														<tr>
															<td>
																<?php echo $this->lang->line('sales_payment').':   ';?>
															</td>
															<td>
																<?php echo form_dropdown('payment_type',$payment_options,'', 'class="form-control"');?>
													        </td>
												        </tr>
												        <tr>
													        <td>
													        	<?php echo $this->lang->line('sales_amount_tendered').':   ';?>
															</td>
															<td>
																<?php echo form_input(array('name'=>'amount_tendered','value'=>'','class'=>'form-control'));?>
													        </td>
												        </tr>

										        	</table>
										        	<br />
													<div id='finish_receiving_button' style='float:right;margin-top:5px;'>
														<button class='btn btn-block btn-success btn-sm'><?php echo $this->lang->line('recvs_complete_receiving') ?></button>
													</div>
												</form>

											    <?php echo form_open("receivings/cancel_receiving",array('id'=>'cancel_receiving_form')); ?>
												    <div id='cancel_receiving_button' style='float:left;margin-top:5px;'>
												    	<button class='btn btn-block btn-danger btn-sm'><?php echo $this->lang->line('recvs_cancel_receiving'); ?></button>
														<!-- <span><?php echo $this->lang->line('recvs_cancel_receiving')?></span> -->
													</div>
										        </form>
											</div>
										<?php
											}
										}
										?>
								</div>
							</div>
						</div>
					</div> <!-- ./col-md-12 -->
				</div> <!-- ./row -->

				<div class="clearfix" style="margin-bottom:30px;">&nbsp;</div>

				<script type="text/javascript" language="javascript">
				$(document).ready(function()
				{
				 //    $("#item").autocomplete('<?php echo site_url("receivings/item_search"); ?>',
				 //    {
				 //    	minChars:0,
				 //    	max:100,
				 //       	delay:10,
				 //       	selectFirst: false,
				 //    	formatItem: function(row) {
					// 		return row[1];
					// 	}
				 //    });

				 //    $("#item").result(function(event, data, formatted)
				 //    {
					// 	$("#add_item_form").submit();
				 //    });

				 //    $('#item').focus();

					// $('#item').blur(function()
				 //    {
				 //    	$(this).prop('value',"<?php echo $this->lang->line('sales_start_typing_item_name'); ?>");
				 //    });

					$('#comment').keyup(function() 
					{
						$.post('<?php echo site_url("receivings/set_comment");?>', {comment: $('#comment').val()});
					});

					$('#recv_invoice_number').keyup(function() 
					{
						$.post('<?php echo site_url("receivings/set_invoice_number");?>', {recv_invoice_number: $('#recv_invoice_number').val()});
					});

					$("#recv_print_after_sale").change(function()
					{
						$.post('<?php echo site_url("receivings/set_print_after_sale");?>', {recv_print_after_sale: $(this).is(":checked")});
					});

					var enable_invoice_number = function() 
					{
						var enabled = $("#recv_invoice_enable").is(":checked");
						$("#recv_invoice_number").prop("disabled", !enabled).parents('tr').show();
						return enabled;
					}

					enable_invoice_number();

					$("#recv_invoice_enable").change(function() {
						var enabled = enable_invoice_number();
						$.post('<?php echo site_url("receivings/set_invoice_number_enabled");?>', {recv_invoice_number_enabled: enabled});
						
					});

					$('#item,#supplier').click(function()
				    {
				    	$(this).prop('value','');
				    });

				  //   $("#supplier").autocomplete('<?php echo site_url("receivings/supplier_search"); ?>',
				  //   {
				  //   	minChars:0,
				  //   	delay:10,
				  //   	max:100,
				  //   	formatItem: function(row) {
						// 	return row[1];
						// }
				  //   });

				  //   $("#supplier").result(function(event, data, formatted)
				  //   {
						// $("#select_supplier_form").submit();
				  //   });

				  //   $('#supplier').blur(function()
				  //   {
				  //   	$(this).prop('value',"<?php echo $this->lang->line('recvs_start_typing_supplier_name'); ?>");
				  //   });

				    $("#finish_receiving_button").click(function()
				    {
				    	if (confirm('<?php echo $this->lang->line("recvs_confirm_finish_receiving"); ?>'))
				    	{
				    		$('#finish_receiving_form').submit();
				    	}
				    });

				    $("#cancel_receiving_button").click(function()
				    {
				    	if (confirm('<?php echo $this->lang->line("recvs_confirm_cancel_receiving"); ?>'))
				    	{
				    		$('#cancel_receiving_form').submit();
				    	}
				    });


				});

				function post_item_form_submit(response, stay_open)
				{
					if(response.success)
					{
						$("#item").prop("value",response.item_id);
						if (stay_open)
						{
							$("#add_item_form").ajaxSubmit();
						}
						else
						{
							$("#add_item_form").submit();
						}
					}
				}

				function post_person_form_submit(response)
				{
					if(response.success)
					{
						$("#selected_supplier_id").prop("value",response.person_id);
						$("#select_supplier_form").submit();
					}
				}

				</script>
				</div><!-- /.box-body -->
          	</div><!-- /.box -->
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->
<script>
	//auto complete on field supplier
	$('#supplier-name').autocomplete({
		source: "<?php echo site_url('suppliers/suggest');?>", // path to the lookup method
		focus : function(){ return false; },
		select: function(event, ui){
			$('#selected_supplier_id').val(ui.item.id);
	  	$("#select_supplier_form").submit();
		}
	});

	//auto complete on field item
	$('#item_id').autocomplete({
		source: "<?php echo site_url('sales/item_search');?>", // path to the lookup method
		focus : function(){ return false; },
		select: function(event, ui){
			$('#selected_item_id').val(ui.item.id);
	  	$("#add_item_form").submit();
		}
	});

	$("#btn-new-item").on('click', function () {
		$('#my-modal').removeData('bs.modal');
    $('#my-modal').modal({remote: '<?php echo site_url("items/view/-1"); ?>'});
    $('#my-modal').modal('show');
  });

  $("#btn-new-supplier").on('click', function () {
    $('#my-modal').removeData('bs.modal');
    $('#my-modal').modal({remote: '<?php echo site_url("suppliers/view/-1"); ?>'});
    $('#my-modal').modal('show');
  });
</script>
<?php $this->load->view("partial/footer"); ?>