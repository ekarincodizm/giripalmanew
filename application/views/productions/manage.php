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
<div class="modal-body"></div>
<div class="modal-footer">
  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
  <button type="button" class="btn btn-primary">Save changes</button>
</div>
</div>

</div>                                            <!-- /.modal-content -->
</div>                                            <!-- /.modal-dialog -->

<!-- /.modal -->
<!-- Content Header (Page header) -->

<section class="content-header">
  <h1><h3><?php echo $title ?></h3></h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="active">Dashboard</a></li>
  </ol>
</section>

<section class="content">                         <!-- Main content -->
<div class="box">                                 <!-- Default box -->

<div class="box-body">
<div class="modal-body">
<?php echo form_open('productions/save/'.$prod_info->noSurat,array('id'=>'prod_form', 'class'=>'form-horizontal')); 
?>

<fieldset id="prod_info">
<div id="required_fields_message">
<?php echo $this->lang->line('common_fields_required_message'); ?></div><br>

<div class="row">
<div class="col-md-6">

  <fieldset id="prod_info">
  <div class="form-group"><?php echo form_label('No. Surat Jalan :', 'noSurat',array('class'=>'col-sm-4 required')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name'=>'noSurat', 
      'id'=>'noSurat',
      'value'=>$prod_info->noSurat,
      'class'=>'form-control'));?>
  </div></div><br>
  
  <div class="form-group"><?php echo form_label('Nama Pemesan :', 'nama',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name'=>'nama', 
      'id'=>'nama',
      'value'=>$prod_info->nama,
      'class'=>'form-control'));?>
  </div></div><br>
  
  <div class="form-group"><?php echo form_label('Tanggal Surat :', 'tanggal',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name'=>'tanggal', 
      'id'=>'tanggal',
      'value'=>$prod_info->tanggal,
      'class'=>'form-control'));?>
  </div></div>
  
  <br><br><b>Daftar Pesanan</b><br><br>
  
</fieldset>
</div> <!-- ./col-md-6 --> 

<div class="col-md-6">
  <div class="form-group"><?php echo form_label('Lokasi Gudang :', 'gudang',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_dropdown('gudang', $gudang, '', 'id="gudang" class="form-control"'); ?>
  </div></div><br>

  <div class="form-group"><?php echo form_label('Batas Waktu :', 'btsWaktu',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name'=>'btsWaktu', 
      'id'=>'btsWaktu',
      'value'=>$prod_info->btsWaktu,
      'class'=>'form-control'));?>
  </div></div><br>
  
  <div class="form-group"><?php echo form_label('Status Produksi :', 'status',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_dropdown('status', $status, '', 'id="status" class="form-control"'); ?>
  </div></div>

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

// $("#item").autocomplete('<?php echo site_url("items/item_search"); ?>',
// {
// 	minChars:0,
// 	max:100,
// 	selectFirst: false,
//    	delay:10,
// 	formatItem: function(row) {
// 		return row[1];
// 	}
// });

// $("#item").result(function(event, data, formatted)
// {
// 	$("#item").val("");
	
// 	if ($("#item_kit_item_"+data[0]).length ==1)
// 	{
// 		$("#item_kit_item_"+data[0]).val(parseFloat($("#item_kit_item_"+data[0]).val()) + 1);
// 	}
// 	else
// 	{
// 		$("#item_kit_items").append("<tr><td><a href='#' onclick='return deleteItemKitRow(this);'>X</a></td><td>"+data[1]+"</td><td><input class='quantity' id='item_kit_item_"+data[0]+"' type='text' size='3' name=item_kit_item["+data[0]+"] value='1'/></td></tr>");
// 	}
// });


//validation and submit handling
$(document).ready(function(){
	$('#paket_form').validate({
		submitHandler:function(form){
			$(form).ajaxSubmit({
				success:function(response){
					tb_remove();
					post_item_kit_form_submit(response);
				},
				dataType:'json'
			});

		},
		errorLabelContainer: "#error_message_box",
 		wrapper: "li",
		rules: {
			name:"required",
			category:"required"
		},
		messages: {
			name:"<?php echo $this->lang->line('items_name_required'); ?>",
			category:"<?php echo $this->lang->line('items_category_required'); ?>"
		}
	});
});

function deleteItemKitRow(link)
{
	$(link).parent().parent().remove();
	return false;
}

	//auto complete on field item
	$('#tb-item').autocomplete({
		source: "<?php echo site_url('items/item_search');?>", // path to the lookup method
		focus : function(){ return false; }
	})
	.on( 'autocompleteselect', function( e, ui ){
	  var id = ( e.type == 'autocompleteresponse' ? ui.content[0].id :  ui.item.id ),
	  		item_name = ( e.type == 'autocompleteresponse' ? ui.content[0].item_name :  ui.item.item_name ),
		  	name = ( e.type == 'autocompleteresponse' ? ui.content[0].value : ui.item.value );

		$("#tb-item").val("");

		$("#item_kit_items").append("<tr><td><a href='#' onclick='return deleteItemKitRow(this);'>X</a></td><td>"+item_name+"</td><td><input class='quantity' id='item_kit_item_"+id+"' type='text' size='3' name=item_kit_item["+id+"] value='1'/></td></tr>");

	  return false;
	}); 

</script>




</div><!-- /.box-body -->
			<div class="box-footer">
        <?php echo anchor("$controller_name/delete",$this->lang->line("common_delete"),array('id'=>'delete','class'=>'btn btn-danger')); ?>
        <?php echo anchor("$controller_name/generate_barcodes",$this->lang->line("items_generate_barcodes"),array('id'=>'generate_barcodes', 'target' =>'_blank','title'=>$this->lang->line('items_generate_barcodes'),'class'=>'btn btn-warning')); ?>
      </div>
    <div><!-- /.box -->
	</section><!-- /.content -->
</div><!-- /.content-wrapper -->


<script>
  $("#btn-new-item").on('click', function () {
    $('#itemkits-modal').removeData('bs.modal');
    $('#itemkits-modal').modal({remote: '<?php echo site_url("$controller_name/view/-1"); ?>'});
    $('#itemkits-modal').modal('show');
  });

  function modal_edit_item(id){
    $('#itemkits-modal').removeData('bs.modal');
    $('#itemkits-modal').modal({remote: '<?php echo site_url("$controller_name/view/"); ?>/'+id});
    $('#itemkits-modal').modal('show');
  }
</script>

<?php $this->load->view("partial/footer"); ?>      <!-- Load Footer -->