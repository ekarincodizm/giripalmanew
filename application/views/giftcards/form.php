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
        <h4 class="modal-title"><?php echo $this->lang->line('giftcards_basic_information'); ?></h4>
      </div>
      <?php echo form_open('giftcards/save/'.$giftcard_info->giftcard_id,array('id'=>'giftcard_form', 'class'=>'form-horizontal'));?>
      <div class="modal-body">
				<div id="required_fields_message"><?php echo $this->lang->line('common_fields_required_message'); ?></div>
				<ul id="error_message_box" class="error_message_box"></ul>
				<fieldset id="giftcard_basic_info">
					<div class="col-md-12">
						<div class="form-group">
							<input type="hidden" name="person_id" id="selected_person_id" value="<?php echo $selected_id; ?>">
							<?php echo form_label($this->lang->line('giftcards_person_id').':', 'name',array('class'=>'col-sm-4')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'person_name',
									'id'=>'person_name',
									'value'=>$selected_person,
									'class'=>'form-control')
								);?>
							</div>
						</div>
						<div class="form-group">
							<?php echo form_label($this->lang->line('giftcards_giftcard_number').':', 'name',array('class'=>'col-sm-4 required')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'giftcard_number',
									'id'=>'giftcard_number',
									'value'=>$giftcard_number,
									'class'=>'form-control')
								);?>
							</div>
						</div>
						<div class="form-group">
							<?php echo form_label($this->lang->line('giftcards_card_value').':', 'name',array('class'=>'col-sm-4 required')); ?>
							<div class='col-sm-8'>
								<?php echo form_input(array(
									'name'=>'value',
									'id'=>'value',
									'value'=>$giftcard_info->value,
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
	var format_item = function(row) 
	{
    	return [row[0], "|", row[1]].join("");
	};
	var autocompleter = $("#person_id").autocomplete('<?php echo site_url("giftcards/person_search"); ?>', 
	{
    	minChars:0,
    	delay:15, 
    	max:100,
       	cacheLength: 1,
        formatItem: format_item,
        formatResult : format_item
    });

	// declare submitHandler as an object.. will be reused
	var submit_form = function(selected_person) 
	{ 
		$(this).ajaxSubmit(
		{
			success:function(response)
			{
				tb_remove();
				post_giftcard_form_submit(response);
			},
			error: function(jqXHR, textStatus, errorThrown) 
			{
				selected_customer && autocompleter.val(selected_person);
				post_giftcard_form_submit({message: errorThrown});
			},
			dataType:'json'
		});
	};
	
	$('#giftcard_form').validate({
		submitHandler:function(form)
		{
			var selected_person = autocompleter.val();
			var selected_person_id = selected_person && selected_person.replace(/(\w)\|.*/, "$1");
			selected_person_id && autocompleter.val(selected_person_id);
			submit_form.call(form, selected_person);
		},
		errorLabelContainer: "#error_message_box",
 		wrapper: "li",
		rules:
		{
			giftcard_number:
			{
				required:true,
				number:true
			},
			value:
			{
				required:true,
				number:true
			}
   		},
		messages:
		{
			giftcard_number:
			{
				required:"<?php echo $this->lang->line('giftcards_number_required'); ?>",
				number:"<?php echo $this->lang->line('giftcards_number'); ?>"
			},
			value:
			{
				required:"<?php echo $this->lang->line('giftcards_value_required'); ?>",
				number:"<?php echo $this->lang->line('giftcards_value'); ?>"
			}
		}
	});
});

//auto complete on field customer
	$('#person_name').autocomplete({
		source: "<?php echo site_url('giftcards/person_search');?>", // path to the lookup method
		focus : function(){ return false; },
		select: function(event, ui){
			$('#selected_person_id').val(ui.item.id);
		}
	});
</script>