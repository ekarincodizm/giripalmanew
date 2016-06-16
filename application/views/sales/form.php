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
        <h4 class="modal-title"><?php echo $this->lang->line('sales_basic_information'); ?></h4>
      </div>
      <?php echo form_open("sales/save/".$sale_info['sale_id'],array('id'=>'sales_edit_form','class'=>'form-horizontal')); ?>
      <div class="modal-body">
				<div id="required_fields_message"><?php echo $this->lang->line('common_fields_required_message'); ?></div>
				<ul id="error_message_box" class="error_message_box"></ul>
				<fieldset id="sale_basic_info">
					<div class="form-group">
						<?php echo form_label($this->lang->line('sales_receipt_number'), 'customer',array('class'=>'col-sm-4')); ?>
						<div class='col-sm-8'>
							<?php echo anchor('sales/receipt/'.$sale_info['sale_id'], $this->lang->line('sales_receipt_number') .$sale_info['sale_id'], array('target' => '_blank'));?>
						</div>
					</div>
					<div class="form-group">
						<?php echo form_label($this->lang->line('sales_date'), 'date',array('class'=>'col-sm-4')); ?>
						<div class='col-sm-8'>
							<?php echo form_input(array(
								'name'=>'date',
								'value'=>date($this->config->item('dateformat') . ' ' . $this->config->item('timeformat'), strtotime($sale_info['sale_time'])),
								'id'=>'datetime',
								'readonly'=>'true',
								'class'=>'form-control')
							);?>
						</div>
					</div>
					<div class="form-group">
						<?php echo form_label($this->lang->line('sales_invoice_number'), 'invoice_number',array('class'=>'col-sm-4')); ?>
						<div class='col-sm-8'>
							<?php if (isset($sale_info["invoice_number"]) && !empty($sale_info["invoice_number"]) && 
								isset($sale_info['customer_id']) && isset($sale_info['email']) && !empty($sale_info['email'])): ?>
								<?php echo form_input(array('name'=>'invoice_number', 'size'=>10, 'value'=>$sale_info['invoice_number'], 'id'=>'invoice_number', 'class'=>'form-control'));?>
								<a id="send_invoice" href="javascript:void(0);"><?=$this->lang->line('sales_send_invoice')?></a>
							<?php else: ?>
								<?php echo form_input(array('name'=>'invoice_number', 'value'=>$sale_info['invoice_number'], 'id'=>'invoice_number', 'class'=>'form-control'));?>
							<?php endif; ?>
						</div>
					</div>
					<div class="form-group">
						<?php echo form_label($this->lang->line('sales_customer'), 'customer',array('class'=>'col-sm-4')); ?>
						<div class='col-sm-8'>
							<input type="hidden" name="customer_id" id="selected_customer_id" value="<?php echo $customer_id ?>">
							<?php echo form_input(array(
								'name'=>'customer',
								'value'=>$selected_customer,
								'id'=>'customer_id',
								'class'=>'form-control')
							);?>
						</div>
					</div>
					<div class="form-group">
						<?php echo form_label($this->lang->line('sales_employee'), 'employee',array('class'=>'col-sm-4')); ?>
						<div class='col-sm-8'>
							<?php echo form_dropdown('employee_id', $employees, $sale_info['employee_id'], 'id="employee_id" class="form-control"');?>
						</div>
					</div>
					<div class="form-group">
						<?php echo form_label($this->lang->line('sales_comment'), 'comment',array('class'=>'col-sm-4')); ?>
						<div class='col-sm-8'>
							<?php echo form_textarea(array(
							'name'=>'comment',
							'id'=>'comment',
							'value'=>$sale_info['comment'],
							'rows'=>'4',
							'cols'=>'23',
							'class'=>'form-control'
							));?>
						</div>
					</div>
				</fieldset>
			</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-warning pull-left" data-dismiss="modal">Close</button>
        <button type="button" id="submit" onclick="submit_changes('<?php echo $sale_info['sale_id']?>')" class="btn btn-primary"><?php echo $this->lang->line('common_submit') ?></button>
        <button type="button" id="delete" onclick="delete_data('<?php echo $sale_info['sale_id']?>')" class="btn btn-danger"><?php echo $this->lang->line('sales_delete_entire_sale') ?></button>
        <?php 
        	// echo form_open("sales/delete/".$sale_info['sale_id'],array('id'=>'sales_delete_form')); ?>
					<?php //echo form_hidden('sale_id', $sale_info['sale_id']);?>
					<?php //echo form_submit(array(
					// 	'name'=>'submit',
					// 	'value'=>$this->lang->line('sales_delete_entire_sale'),
					// 	'class'=>'btn btn-danger')
					// );
					?>
				
      </div>
      <?php echo form_close(); ?>

<script type="text/javascript" language="javascript">
$(document).ready(function()
{	
	<?php if (isset($sale_info['email'])): ?>
		$("#send_invoice").click(function(event) {
			if (confirm("<?php echo $this->lang->line('sales_invoice_confirm') . ' ' . $sale_info['email'] ?>")) {
				$.get('<?=site_url() . "/sales/send_invoice/" . $sale_info['sale_id']?>',
						function(response) {
							tb_remove();
							post_form_submit(response);
						}, "json"
				);	
			}
		});
	<?php endif; ?>
	
	$('#datetime').datetimepicker({
		dateFormat: '<?php echo dateformat_jquery($this->config->item("dateformat"));?>',
		timeFormat: '<?php echo dateformat_jquery($this->config->item("timeformat"));?>'
	});

	$('#sales_delete_form').submit(function() 
	{
		if (confirm('<?php echo $this->lang->line("sales_delete_confirmation"); ?>'))
		{
			var id = $("input[name='sale_id']").val();
			$(this).ajaxSubmit({
				success: function(response)
				{
					tb_remove();
					set_feedback(response.message,'success_message',false);
					var $element = get_table_row(id).parent().parent();
					$element.find("td").animate({backgroundColor:"green"},1200,"linear")
					.end().animate({opacity:0},1200,"linear",function()
					{
						$element.next().remove();
						$(this).remove();
						//Re-init sortable table as we removed a row
						update_sortable_table();
					});
				},
				error: function(jqXHR, textStatus, errorThrown) {
					set_feedback(textStatus,'error_message',true);
				},
				dataType:'json'
			});
		}
		return false;
	});
});

//auto complete on field customer
	$('#customer_id').autocomplete({
		source: "<?php echo site_url('sales/customer_search');?>", // path to the lookup method
		focus : function(){ return false; },
		select: function(event, ui){
			$('#selected_customer_id').val(ui.item.id);
		}
	});

	function submit_changes(id){
		$.ajax({
      type : "POST",
      url: "<?php echo site_url('sales/save');?>/"+id,
      data: $('#sales_edit_form').serialize(),
      dataType: "json",
      success:function(data){
        if(data.success==true)
          window.location.href = '<?php echo site_url("sales/manage")?>';
        else
        	alert(data.message);
      }
    });
	}

	function delete_data(id){
		if (confirm('<?php echo $this->lang->line("sales_delete_confirmation"); ?>'))
		{
			$.ajax({
	      type : "POST",
	      url: "<?php echo site_url('sales/delete');?>/"+id,
	      data: 'sale_id='+id,
	      dataType: "json",
	      success:function(data){
	      	$('#my-modal').modal('hide');
	        tb_remove();
					set_feedback(data.message,'success_message',false);
					var $element = get_table_row(id).parent().parent();
					$element.find("td").animate({backgroundColor:"green"},1200,"linear")
					.end().animate({opacity:0},1200,"linear",function()
					{
						$element.next().remove();
						$(this).remove();
						//Re-init sortable table as we removed a row
						update_sortable_table();
					});

	      },
	      error: function(jqXHR, textStatus, errorThrown) {
					set_feedback(textStatus,'error_message',true);
				}
	    });
		}
		return false;
	}
</script>