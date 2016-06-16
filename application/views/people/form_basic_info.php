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