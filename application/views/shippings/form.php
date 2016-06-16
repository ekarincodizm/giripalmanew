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
			<div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title"><?php echo $this->lang->line('shippings_basic_information'); ?></h4>
      </div>
      <?php echo form_open('shippings/save/'.$ship_info->ship_id,array('id'=>'shipping_form', 'class'=>'form-horizontal'));?>
      <div class="modal-body">
				<div id="required_fields_message"><?php echo $this->lang->line('common_fields_required_message'); ?></div>
				<ul id="error_message_box" class="error_message_box"></ul>
				<fieldset id="shipping_basic_info">
					<div class="col-md-4">
						<div class="form-group">
							<input type="hidden" id="selected_sale_id" name="sale_id" value="<?php echo $ship_info->sale_id; ?>">
							<?php echo form_label($this->lang->line('sales_invoice_number').':', 'invoice',array('class'=>'col-sm-4 required')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'invoice',
									'id'=>'invoice',
									'value'=>$ship_info->invoice_number,
									$ship_info->invoice_number<>"" ? 'readonly' : '' =>$ship_info->invoice_number<>"" ? 'readonly' : '',
									'class'=>'form-control')
								);?>
							</div>
						</div>
						<div class="form-group">
							<?php echo form_label($this->lang->line('shippings_recipient_name').':', 'recipient_name',array('class'=>'col-sm-4 required')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'recipient_name',
									'id'=>'recipient_name',
									'value'=>$ship_info->recipient_name,
									'class'=>'form-control')
								);?>
							</div>
						</div>
						<div class="form-group">
							<?php echo form_label($this->lang->line('shippings_recipient_address').':', 'recipient_address',array('class'=>'col-sm-4 required')); ?>
							<div class='col-sm-8'>
								<?php echo form_textarea(array(
								'name'=>'recipient_address',
								'id'=>'recipient_address',
								'value'=>$ship_info->recipient_address,
								'rows'=>'5',
								'cols'=>'17',
								'class'=>'form-control'
								));?>
							</div>
						</div>
						<div class="form-group">
							<?php echo form_label($this->lang->line('shippings_ship_date').':', 'shipping_date',array('class'=>'col-sm-4 required')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'shipping_date',
									'id'=>'shipping_date',
									'value'=>$ship_info->shipping_date,
									'class'=>'form-control')
								);?>
							</div>
						</div>
						<div class="form-group">
					    <?php echo form_label($this->lang->line('shippings_employee_sender').':', 'person_in_charge',array('class'=>'col-sm-4 required')); ?>
					    <div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'person_in_charge',
									'id'=>'person_in_charge',
									'value'=>$ship_info->person_in_charge,
									'class'=>'form-control')
								);?>
							</div>
						</div>
						<div class="form-group">
							<?php echo form_label($this->lang->line('shippings_ship_status').':', 'status',array('class'=>'col-sm-4 required')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'status',
									'id'=>'status',
									'value'=>$ship_info->status,
									'class'=>'form-control')
								);?>
							</div>
						</div>
					</div>
					<div class="col-md-4">
					</div>
					<div class="col-md-4">
					</div>
				</fieldset>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-warning pull-left" data-dismiss="modal">Close</button>
        <?php
        echo form_submit(array(
					'name'=>'submit',
					'id'=>'submit',
					'value'=>$this->lang->line('common_submit'),
					'class'=>'btn btn-success')
				);
				?>
        <!-- <a href="" id="link-delete"><button type="button" class="btn btn-outline">Save changes</button></a> -->
      </div>
      <?php echo form_close(); ?>

<script type='text/javascript'>

//validation and submit handling
$(document).ready(function()
{
	$('#shipping_form').validate({
		submitHandler:function(form)
		{
			$(form).ajaxSubmit({
			success:function(response)
			{
				tb_remove();
				post_person_form_submit(response);
			},
			dataType:'json'
		});

		},
		errorLabelContainer: "#error_message_box",
 		wrapper: "li",
		rules: 
		{
			shipping_company_name: "required",
			first_name: "required",
			last_name: "required",
			email: "email"
   		},
		messages: 
		{
			shipping_company_name: "<?php echo $this->lang->line('shippings_company_name_required'); ?>",
			last_name: "<?php echo $this->lang->line('common_last_name_required'); ?>",
			email: "<?php echo $this->lang->line('common_email_invalid_format'); ?>"
		}
	});
});

$(function () {
      $('#shipping_date').datetimepicker({
        format: 'YYYY-MM-DD'
      });
    });
//auto complete on field invoice number
	$('#invoice').autocomplete({
		source: "<?php echo site_url('shippings/invoice_number_search');?>", // path to the lookup method
		focus : function(){ return false; },
		select: function(event, ui){
			$('#selected_sale_id').val(ui.item.id);
		}
	});
</script>