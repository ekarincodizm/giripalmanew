<?php $this->load->view("partial/header"); ?>
<?php $this->load->view("partial/menu_left_sidebar"); ?>

<style>
  .dataTables_wrapper { margin-top: 10px }
  .bungkus-btn { margin: 10px; }
  .ui-autocomplete { z-index: 5000; }
  .ui-widget-content .ui-state-focus {
    color:#000;
    font-weight: bold;
    background-color: #ffffff;
  }
</style>

<div class="content-wrapper">                     <!-- Content Wrapper. Contains page content -->
<div class="modal fade" id="production-modal" tabindex="-1" role="dialog" aria-labelledby="itemkits-modalLabel" aria-hidden="true">         <!-- Modal -->
<div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
<h4 class="modal-title"></h4></div>

</div>

</div>                                            <!-- /.modal-content -->
</div>                                            <!-- /.modal-dialog -->

<!-- /.modal -->
<!-- Content Header (Page header) -->

<section class="content-header">
  <h1><h3>Input Paket Sofa</h3></h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="active">Dashboard</a></li>
  </ol>
</section>

<section class="content">                         <!-- Main content -->
<div class="box">                                 <!-- Default box -->

<div class="box-body">
<div class="modal-body">
<?php echo form_open('productions/save/'.$paket_info->paket_id,array('id'=>'paket_form', 'class'=>'form-horizontal')); ?>

<fieldset id="paket_info">
<div id="required_fields_message">
<?php echo $this->lang->line('common_fields_required_message'); ?></div>

<div class="row">
<div class="col-md-6">

<fieldset id="paket_info">
<div class="form-group"><?php echo form_label($this->lang->line('item_kits_name').':', 'name',array('class'=>'col-sm-4 required')); ?>
<div class='col-sm-8'>  <?php echo form_input(array(
    'name'=>'name', 
    'id'=>'name',
    'value'=>$paket_info->name,
    'class'=>'form-control'));?>
</div></div>

<div class="form-group"><?php echo form_label($this->lang->line('item_kits_description').':', 'description',array('class'=>'col-sm-4')); ?>
<div class='col-sm-8'>  <?php echo form_textarea(array(
     'name'=>'description',
     'id'=>'description',
     'value'=>$paket_info->description,
     'rows'=>'5',
     'cols'=>'17',
     'class'=>'form-control' ));?>
</div></div>
</fieldset>

</div> <!-- ./col-md-6 -->
<div class="col-md-6">
<div class="form-group"><?php echo form_label($this->lang->line('item_kits_add_item').':', 'item',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-7'><?php echo form_input(array('class'=>'form-control','name'=>'item','id'=>'tb-item'));?></div>
  <div class='col-sm-1'><i onclick="$('#tb-item').val('')" class="fa fa-times" style="color:#ff0000; margin-top: 10px" title="Clear text in this box"></i></div>
</div>

<table id="item_kit_items">
<tr>
<th><?php echo $this->lang->line('common_delete');?></th>
<th><?php echo $this->lang->line('item_kits_item');?></th>
<th><?php echo $this->lang->line('item_kits_quantity');?></th>
</tr>

<?php foreach ($this->Item_kit_items->get_info($paket_info->paket_id) as $item_kit_item) { ?> <tr>
<?php $item_info = $this->Item->get_info($item_kit_item['item_id']); ?>
<td><a href="#" onclick='return deleteItemKitRow(this);'>X</a></td>
<td><?php echo $item_info->name; ?></td>
<td><input class='quantity' id='item_kit_item_<?php echo $item_kit_item['item_id'] ?>' type='text' size='3' name=item_kit_item[<?php echo $item_kit_item['item_id'] ?>] value='<?php echo $item_kit_item['quantity'] ?>'/></td>
</tr><?php } ?>

</table>
</div>
</div>
</fieldset>
</div>
<div class="modal-footer">
  <?php
  echo form_submit(array(
		'name'=>'submit',
		'id'=>'submit',
		'value'=>$this->lang->line('common_submit'),
		'class'=>'btn btn-success') );
	echo form_close();
	?>
</div>

<script type='text/javascript'>

function deleteItemKitRow(link) {
  $(link).parent().parent().remove();
  return false;
}

//auto complete on field item
$('#tb-item').autocomplete({
	source: "<?php echo site_url('items/item_search');?>", // path to the lookup method
	focus : function(){ return false; }
})
.on( 'autocompleteselect', function( e, ui ){
  var id        = ( e.type == 'autocompleteresponse' ? ui.content[0].id :  ui.item.id ),
  		item_name = ( e.type == 'autocompleteresponse' ? ui.content[0].item_name :  ui.item.item_name ),
	  	name      = ( e.type == 'autocompleteresponse' ? ui.content[0].value : ui.item.value );

	$("#tb-item").val("");

	$("#item_kit_items").append("<tr><td><a href='#' onclick='return deleteItemKitRow(this);'>X</a></td><td>"+item_name+"</td><td><input class='quantity' id='item_kit_item_"+id+"' type='text' size='3' name=item_kit_item["+id+"] value='1'/></td></tr>");

  return false;
}); 

</script>




</div><!-- /.box-body -->

    <div><!-- /.box -->
	</section><!-- /.content -->
</div><!-- /.content-wrapper -->

<?php $this->load->view("partial/footer"); ?>      <!-- Load Footer -->