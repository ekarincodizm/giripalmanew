			<div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title"><?php echo $this->lang->line('suppliers_basic_information'); ?></h4>
      </div>
      <?php echo form_open('suppliers/save/'.$person_info->person_id,array('id'=>'supplier_form', 'class'=>'form-horizontal'));?>
      <div class="modal-body">
				<div id="required_fields_message"><?php echo $this->lang->line('common_fields_required_message'); ?></div>
				<ul id="error_message_box" class="error_message_box"></ul>
				<fieldset id="supplier_basic_info">
					<div class="col-md-4">
						<div class="form-group">
							<?php echo form_label($this->lang->line('suppliers_company_name').':', 'company_name',array('class'=>'col-sm-4 required')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'company_name',
									'id'=>'supplier_company_name',
									'value'=>$person_info->company_name,
									'class'=>'form-control')
								);?>
							</div>
						</div>
						<div class="form-group">
							<?php echo form_label($this->lang->line('suppliers_agency_name').':', 'agency_name',array('class'=>'col-sm-4')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'agency_name',
									'id'=>'agency_name_input',
									'value'=>$person_info->agency_name,
									'class'=>'form-control')
								);?>
							</div>
						</div>
						<div class="form-group">
							<?php echo form_label($this->lang->line('common_first_name').':', 'first_name',array('class'=>'col-sm-4 required')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'first_name',
									'id'=>'first_name',
									'value'=>$person_info->first_name,
									'class'=>'form-control')
								);?>
							</div>
						</div>
						<div class="form-group">
							<?php echo form_label($this->lang->line('common_last_name').':', 'last_name',array('class'=>'col-sm-4')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'last_name',
									'id'=>'last_name',
									'value'=>$person_info->last_name,
									'class'=>'form-control')
								);?>
							</div>
						</div>
						<div class="form-group">
					    <?php echo form_label($this->lang->line('common_gender').':', 'gender',array('class'=>'col-sm-4 '.(!empty($basic_version) ? 'required' : ''))); ?>
					    <div class='col-sm-12'>
				        <div class="radio">
			            <label>
		              	<?php echo form_radio(array(
											'name'=>'gender',
											'type'=>'radio',
											'id'=>'gender',
											'value'=>1,
											'checked'=>$person_info->gender === '1')
										);?>
							    	<?php echo $this->lang->line('common_gender_male'); ?>
			            </label>
								</div>
				        <div class="radio">
			            <label>
			              <?php echo form_radio(array(
											'name'=>'gender',
											'type'=>'radio',
											'id'=>'gender',
											'value'=>0,
											'checked'=>$person_info->gender === '0')
										); ?>
								    <?php echo $this->lang->line('common_gender_female'); ?>
			            </label>
				        </div>
					    </div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<?php echo form_label($this->lang->line('common_email').':', 'email',array('class'=>'col-sm-4')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'email',
									'id'=>'email',
									'value'=>$person_info->email,
									'class'=>'form-control')
								);?>
							</div>
						</div>
						<div class="form-group">
							<?php echo form_label($this->lang->line('common_phone_number').':', 'phone_number',array('class'=>'col-sm-4')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'phone_number',
									'id'=>'phone_number',
									'value'=>$person_info->phone_number,
									'class'=>'form-control')
								);?>
							</div>
						</div>
						<div class="form-group">
							<?php echo form_label($this->lang->line('common_address_1').':', 'address_1',array('class'=>'col-sm-4')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'address_1',
									'id'=>'address_1',
									'value'=>$person_info->address_1,
									'class'=>'form-control')
								);?>
							</div>
						</div>
						<div class="form-group">
							<?php echo form_label($this->lang->line('common_address_2').':', 'address_2',array('class'=>'col-sm-4')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'address_2',
									'id'=>'address_2',
									'value'=>$person_info->address_2,
									'class'=>'form-control')
								);?>
							</div>
						</div>
						<div class="form-group">
							<?php echo form_label($this->lang->line('common_city').':', 'city',array('class'=>'col-sm-4')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'city',
									'id'=>'city',
									'value'=>$person_info->city,
									'class'=>'form-control')
								);?>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<?php echo form_label($this->lang->line('common_state').':', 'state',array('class'=>'col-sm-4')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'state',
									'id'=>'state',
									'value'=>$person_info->state,
									'class'=>'form-control')
								);?>
							</div>
						</div>
						<div class="form-group">
							<?php echo form_label($this->lang->line('common_zip').':', 'zip',array('class'=>'col-sm-4')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'zip',
									'id'=>'zip',
									'value'=>$person_info->zip,
									'class'=>'form-control')
								);?>
							</div>
						</div>
						<div class="form-group">
							<?php echo form_label($this->lang->line('common_country').':', 'country',array('class'=>'col-sm-4')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'country',
									'id'=>'country',
									'value'=>$person_info->country,
									'class'=>'form-control')
								);?>
							</div>
						</div>
						<div class="form-group">
							<?php echo form_label($this->lang->line('common_comments').':', 'comments',array('class'=>'col-sm-4')); ?>
							<div class='col-sm-8'>
								<?php echo form_textarea(array(
								'name'=>'comments',
								'id'=>'comments',
								'value'=>$person_info->comments,
								'rows'=>'5',
								'cols'=>'17',
								'class'=>'form-control'
								));?>
							</div>
						</div>
						<div class="form-group">
							<?php echo form_label($this->lang->line('suppliers_account_number').':', 'account_number',array('class'=>'col-sm-4')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'account_number',
									'id'=>'account_number',
									'value'=>$person_info->account_number,
									'class'=>'form-control')
								);?>
							</div>
						</div>
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
	$('#supplier_form').validate({
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
			supplier_company_name: "required",
			first_name: "required",
			last_name: "required",
			email: "email"
   		},
		messages: 
		{
			supplier_company_name: "<?php echo $this->lang->line('suppliers_company_name_required'); ?>",
			last_name: "<?php echo $this->lang->line('common_last_name_required'); ?>",
			email: "<?php echo $this->lang->line('common_email_invalid_format'); ?>"
		}
	});
});

</script>