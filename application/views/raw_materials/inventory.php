			<div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title"><?php echo $this->lang->line('items_basic_information'); ?></h4>
      </div>
      <form id="item_form">
      <div class="modal-body">
 			<div id="required_fields_message"><?php echo $this->lang->line('common_fields_required_message'); ?>
 			</div>
			<ul id="error_message_box" class="error_message_box"></ul> 
				<fieldset id="item_basic_info">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<?php echo form_label($this->lang->line('items_item_number').':', 'name',array('class'=>'col-sm-4')); ?>
								<div class='col-sm-8'>
									<?php echo form_input(array(
										'name'=>'item_number',
										'id'=>'item_number',
										'value'=>$item_info->item_number,
										'style'       => 'border:none',
										'readonly' => 'readonly',
										'class'=>'form-control'
										)
									);?>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label($this->lang->line('items_name').':', 'name',array('class'=>'col-sm-4')); ?>
								<div class='col-sm-8'>
									<?php echo form_input(array(
										'name'=>'name',
										'id'=>'name',
										'value'=>$item_info->name,
										'style'       => 'border:none',
										'readonly' => 'readonly',
										'class'=>'form-control'
										)
									);?>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label($this->lang->line('items_category').':', 'category',array('class'=>'col-sm-4')); ?>
								<div class='col-sm-8'>
									<?php echo form_input(array(
										'name'=>'category',
										'id'=>'category',
										'value'=>$item_info->category,
										'style'       => 'border:none',
										'readonly' => 'readonly',
										'class'=>'form-control'
										)
									);?>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label($this->lang->line('items_stock_location').':', 'stock_location',array('class'=>'col-sm-4')); ?>
								<div class='col-sm-8'>
									<?php echo form_dropdown('stock_location',$stock_locations,current($stock_locations),'onchange="fill_quantity(this.value)" class="form-control"');?>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label($this->lang->line('items_current_quantity').':', 'quantity',array('class'=>'col-sm-4')); ?>
								<div class='col-sm-8'>
									<?php echo form_input(array(
										'name'=>'quantity',
										'id'=>'quantity',
										'value'=>current($item_quantities),
										'style'       => 'border:none',
										'readonly' => 'readonly',
										'class'=>'form-control'
										)
									);?>
								</div>
							</div>
						</div> <!-- ./col-md-6 -->
						<div class="col-md-6">
							<div class="form-group">
								<?php echo form_label($this->lang->line('items_add_minus').':', 'quantity',array('class'=>'col-sm-4 required')); ?>
								<div class='col-sm-8'>
									<?php echo form_input(array(
										'name'=>'newquantity',
										'id'=>'newquantity',
										'class'=>'form-control'
										)
									);?>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label($this->lang->line('items_inventory_comments').':', 'description',array('class'=>'col-sm-4')); ?>
								<div class='col-sm-8'>
									<?php echo form_textarea(array(
									'name'=>'trans_comment',
									'id'=>'trans_comment',
									'rows'=>'3',
									'cols'=>'17',
									'class'=>'form-control'
									));?>
								</div>
							</div>
						</div> <!-- ./col-md-6 -->
					</div>
				</fieldset>
			</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-warning pull-left" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success" id="btn-update-inventory"><?php echo $this->lang->line('common_submit') ?></button>
      </div>
      <?php echo form_close(); ?>
		<script type='text/javascript'>

		//validation and submit handling
		$(document).ready(function()
		{
			$('#btn-update-inventory').click(function() {
				$('#error_message_box').empty();
		    $.ajax({
		      type : "POST",
		      url: "<?php echo site_url('raw_materials/save_inventory/'.$item_info->item_id)?>",
		      // async: false,
		      data: $("#item_form").serialize(),
		      dataType: "json",
		      success: function(data) {
		        	$('#error_message_box').append('<li>'+data.message+'</li>');
		      },
		      error: function(e){
		        alert('Error processing your request: '+e.responseText);
		      }
		     });
		  });
		});


		function fill_quantity(val) 
		{   
		    var item_quantities= <?php echo json_encode($item_quantities ); ?>;
		    document.getElementById("quantity").value = item_quantities[val];
		}
		</script>