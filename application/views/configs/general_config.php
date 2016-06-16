<div id="page_title"><?php echo $this->lang->line('config_general_configuration'); ?></div>
<?php
echo form_open('config/save/',array('id'=>'config_form','enctype'=>'multipart/form-data', 'class'=>'form-horizontal'));
?>
<div id="config_wrapper">
<fieldset id="config_info">
<div id="required_fields_message"><?php echo $this->lang->line('common_fields_required_message'); ?></div>
<ul id="error_message_box" class="error_message_box"></ul>
<legend><?php echo $this->lang->line("config_info"); ?></legend>

<div class="row">
	<div class="col-md-4">
		<div class="form-group">
			<?php echo form_label($this->lang->line('config_company').':', 'company',array('class'=>'col-sm-4 text-left required')); ?>
			<div class='col-sm-8'>
				<?php echo form_input(array(
				'name'=>'company',
				'id'=>'company',
				'value'=>$this->config->item('company'),
				'class'=>'form-control'
				));?>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label($this->lang->line('config_company_logo').':', 'company_logo',array('class'=>'col-sm-4 text-left')); ?>
			<div class='col-sm-8'>
				<?php echo form_upload('company_logo');?>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label($this->lang->line('config_address').':', 'address',array('class'=>'col-sm-4 text-left required')); ?>
			<div class='col-sm-8'>
				<?php echo form_textarea(array(
				'name'=>'address',
				'id'=>'address',
				'rows'=>4,
				'cols'=>17,
				'value'=>$this->config->item('address'),
				'class'=>'form-control'
				));?>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label($this->lang->line('config_website').':', 'website',array('class'=>'col-sm-4 text-left')); ?>
			<div class='col-sm-8'>
				<?php echo form_input(array(
				'name'=>'website',
				'id'=>'website',
				'value'=>$this->config->item('website'),
				'class'=>'form-control'
				));?>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label($this->lang->line('common_email').':', 'email',array('class'=>'col-sm-4 text-left')); ?>
			<div class='col-sm-8'>
				<?php echo form_input(array(
				'name'=>'email',
				'id'=>'email',
				'value'=>$this->config->item('email'),
				'class'=>'form-control'
				));?>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label($this->lang->line('config_phone').':', 'phone',array('class'=>'col-sm-4 text-left required')); ?>
			<div class='col-sm-8'>
				<?php echo form_input(array(
				'name'=>'phone',
				'id'=>'phone',
				'value'=>$this->config->item('phone'),
				'class'=>'form-control'
				));?>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label($this->lang->line('config_fax').':', 'fax',array('class'=>'col-sm-4 text-left')); ?>
			<div class='col-sm-8'>
				<?php echo form_input(array(
				'name'=>'fax',
				'id'=>'fax',
				'value'=>$this->config->item('fax'),
				'class'=>'form-control'
				));?>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label($this->lang->line('common_return_policy').':', 'return_policy',array('class'=>'col-sm-4 text-left required')); ?>
			<div class='col-sm-8'>
				<?php echo form_textarea(array(
				'name'=>'return_policy',
				'id'=>'return_policy',
				'rows'=>'4',
				'cols'=>'17',
				'value'=>$this->config->item('return_policy'),
				'class'=>'form-control'
				));?>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="form-group">
			<?php echo form_label($this->lang->line('config_default_tax_rate_1').':', 'default_tax_1_rate',array('class'=>'col-sm-4 text-left required')); ?>
			<div class='col-sm-8'>
				<?php echo form_input(array(
				'name'=>'default_tax_1_name',
				'id'=>'default_tax_1_name',
				'size'=>'10',
				'value'=>$this->config->item('default_tax_1_name')!==FALSE ? $this->config->item('default_tax_1_name') : $this->lang->line('items_sales_tax_1'),
				'class'=>'form-control'
				));?>
				<div class="input-group">
                    <?php echo form_input(array(
					'name'=>'default_tax_1_rate',
					'id'=>'default_tax_1_rate',
					'size'=>'4',
					'value'=>$this->config->item('default_tax_1_rate'),
					'class'=>'form-control'
					));?>
                    <span class="input-group-addon">%</span>
                </div>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label($this->lang->line('config_default_tax_rate_2').':', 'default_tax_1_rate',array('class'=>'col-sm-4 text-left')); ?>
			<div class='col-sm-8'>
				<?php echo form_input(array(
				'name'=>'default_tax_2_name',
				'id'=>'default_tax_2_name',
				'size'=>'10',
				'value'=>$this->config->item('default_tax_2_name')!==FALSE ? $this->config->item('default_tax_2_name') : $this->lang->line('items_sales_tax_2'),
				'class'=>'form-control'
				));?>
				<div class="input-group">
                    <?php echo form_input(array(
					'name'=>'default_tax_2_rate',
					'id'=>'default_tax_2_rate',
					'size'=>'4',
					'value'=>$this->config->item('default_tax_2_rate'),
					'class'=>'form-control'
					));?>
                    <span class="input-group-addon">%</span>
                </div>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label($this->lang->line('config_tax_included').':', 'tax_included',array('class'=>'col-sm-4 text-left')); ?>
			<div class='col-sm-2'>
				<div class="input-group">
                    <span class="input-group-addon">
                      	<?php echo form_checkbox(array(
						'name'=>'tax_included',
						'id'=>'tax_included',
						'value'=>'tax_included',
						'checked'=>$this->config->item('tax_included')));?>
                    </span>
                    <?php // echo $this->lang->line('sales_print_after_sale'); ?>
              	</div>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label($this->lang->line('config_default_sales_discount').':', 'default_sales_discount',array('class'=>'col-sm-4 text-left required')); ?>
			<div class='col-sm-8'>
				<?php echo form_input(array(
				'name'=>'default_sales_discount',
				'id'=>'default_sales_discount',
				'type'=>'number',
				'min'=>0,
				'max'=>100,
				'value'=>$this->config->item('default_sales_discount'),
				'class'=>'form-control'
				));?>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label($this->lang->line('config_sales_invoice_format').':', 'sales_invoice_format',array('class'=>'col-sm-4 text-left')); ?>
			<div class='col-sm-8'>
				<?php echo form_input(array(
				'name'=>'sales_invoice_format',
		        'id'=>'sales_invoice_format',
		        'value'=>$this->config->item('sales_invoice_format'),
				'class'=>'form-control'
				));?>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label($this->lang->line('config_recv_invoice_format').':', 'recv_invoice_format',array('class'=>'col-sm-4 text-left')); ?>
			<div class='col-sm-8'>
				<?php echo form_input(array(
				'name'=>'recv_invoice_format',
		        'id'=>'recv_invoice_format',
		        'value'=>$this->config->item('recv_invoice_format'),
				'class'=>'form-control'
				));?>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label($this->lang->line('config_receiving_calculate_average_price').':', 'receiving_calculate_average_price',array('class'=>'col-sm-4 text-left')); ?>
			<div class='col-sm-2'>
				<div class="input-group">
                    <span class="input-group-addon">
                      	<?php echo form_checkbox(array(
						'name'=>'receiving_calculate_average_price',
						'id'=>'receiving_calculate_average_price',
						'value'=>'receiving_calculate_average_price',
						'checked'=>$this->config->item('receiving_calculate_average_price')));?>
                    </span>
                    <?php // echo $this->lang->line('sales_print_after_sale'); ?>
              	</div>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label($this->lang->line('config_lines_per_page').':', 'lines_per_page',array('class'=>'col-sm-4 text-left required')); ?>
			<div class='col-sm-8'>
				<?php echo form_input(array(
				'name'=>'lines_per_page',
				'id'=>'lines_per_page',
				'type'=>'number',
				'min'=>10,
				'max'=>1000,
				'value'=>$this->config->item('lines_per_page'),
				'class'=>'form-control'
				));?>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<?php for($i=1; $i<=10; $i++) {?>
		<div class="form-group">
			<?php echo form_label($this->lang->line('config_custom'.$i).':', 'config_custom'.$i,array('class'=>'col-sm-4 text-left')); ?>
			<div class='col-sm-8'>
				<?php echo form_input(array(
				'name'=>'custom'.$i.'_name',
				'id'=>'custom'.$i.'_name',
				'value'=>$this->config->item('custom'.$i.'_name'),
				'class'=>'form-control'
				));?>
			</div>
		</div>
		<?php } ?>
		<div class="form-group">
			<?php echo form_label($this->lang->line('config_backup_database').':', 'config_backup_database'.$i,array('class'=>'col-sm-4 text-left')); ?>
			<div class='col-sm-8'>
				<div id="backup_db">
					<button class="btn btn-info"><?php echo $this->lang->line('config_backup_button'); ?></button>
				</div>
			</div>
		</div>
	</div>
</div>

<?php 
echo form_submit(array(
	'name'=>'submit_form',
	'id'=>'submit_form',
	'value'=>$this->lang->line('common_submit'),
	'class'=>'btn btn-block btn-primary')
);
?>
</fieldset>
</div>
<?php
echo form_close();
?>

<script type='text/javascript'>

//validation and submit handling
$(document).ready(function()
{
	$("#backup_db").click(function() {
		window.location='<?php echo site_url('config/backup_db') ?>';
	});
	
	$('#config_form').validate({
		submitHandler:function(form)
		{
			$(form).ajaxSubmit({
			success:function(response)
			{
				if(response.success)
				{
					set_feedback(response.message,'success_message',false);		
				}
				else
				{
					set_feedback(response.message,'error_message',true);		
				}
			},
			dataType:'json'
		});

		},
		errorLabelContainer: "#error_message_box",
 		wrapper: "li",
		rules: 
		{
			company: "required",
			address: "required",
    		phone: "required",
    		default_tax_rate:
    		{
    			required:true,
    			number:true
    		},
    		email:"email",
    		return_policy: "required",
    		lines_per_page:
    		{
        		required: true,
        		number: true
    		},
    		default_sales_discount: 
        	{
        		required: true,
        		number: true
    		}  		
   		},
		messages: 
		{
     		company: "<?php echo $this->lang->line('config_company_required'); ?>",
     		address: "<?php echo $this->lang->line('config_address_required'); ?>",
     		phone: "<?php echo $this->lang->line('config_phone_required'); ?>",
     		default_tax_rate:
    		{
    			required:"<?php echo $this->lang->line('config_default_tax_rate_required'); ?>",
    			number:"<?php echo $this->lang->line('config_default_tax_rate_number'); ?>"
    		},
     		email: "<?php echo $this->lang->line('common_email_invalid_format'); ?>",
     		return_policy:"<?php echo $this->lang->line('config_return_policy_required'); ?>",
     		default_sales_discount:
         	{
             	required: "<?php echo $this->lang->line('config_default_sales_discount_required'); ?>",
             	number :"<?php echo $this->lang->line('config_default_sales_discount_number'); ?>"
         	},
     		lines_per_page: 
         	{
            	required: "<?php echo $this->lang->line('config_lines_per_page_required'); ?>",
                number: "<?php echo $this->lang->line('config_lines_per_page_number'); ?>"
            }
		}
	});
});
</script>
