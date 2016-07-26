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


<section class="content-header">
  <h1><h3><?php echo $title ?></h3></h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
    <li><a href="active">Dashboard</a></li>
  </ol>
</section>

<section class="content">                         <!-- Main content -->
<div class="box">                                 <!-- Default box -->

<div class="box-body">
<div class="modal-body">
<?php echo form_open('pembelian/add',array('id'=>'paket_form', 'class'=>'form-horizontal')); ?>

<fieldset id="pembelian_info">
<div id="required_fields_message"><?php echo $this->lang->line('common_fields_required_message'); ?></div><br>
<div><?php if(isset($pembelian)) echo "<b>".$pembelian."</b>"; ?></div>

<div class="row">
<div class="col-md-6">

  <fieldset id="pembelian_info" disabled>
  <div class="form-group"><?php echo form_label('No. Faktur :', 'noFaktur',array('class'=>'col-sm-4 required')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name' => 'noFaktur', 
      'id'   => 'noFaktur',
      'value'=> $faktur,
      'class'=> 'form-control')); ?>
  </div></div>
  
  <div class="form-group"><?php echo form_label('Tanggal Faktur :', 'tglFaktur',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name' => 'tglFaktur', 
      'id'   => 'tglFaktur',
      'value'=> $tanggal,
      'class'=> 'form-control')); ?>
  </div></div><br>
  
</div>                                      <!-- penutup col-md-6 --> 
<div class="col-md-6">
  
  <div class="form-group"><?php echo form_label('Nama Supplier :', 'supplier',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  
  <?php echo form_dropdown('supplier', $supplier, '', 'id="supplier" class="form-control"'); ?> 
  </div></div><br><br>
  
</div>                                      <!-- penutup col-md-6 --> 
</div>                                      <!-- penutup row --> 

<?php 
  echo form_input(array(
      'name'  => 'noFakturH', 
      'id'    => 'noFakturH',
      'value' => $faktur,
      'type'  => 'hidden'));
  echo form_input(array(
      'name'  => 'tglFakturH', 
      'id'    => 'tglFakturH',
      'value' => $tanggal,
      'type'  => 'hidden')); ?>

<div class="row">
<div class="col-md-6">
  
  <input type="hidden" name="barang" id="selected_item_id">
  <div class="form-group"><?php echo form_label('Nama Barang :', 'item_id',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name'  => 'item_id', 
      'id'    => 'item_id',
      'value' => $pembelian_info->item_id,
      'class' => 'form-control'));?>
  </div></div>
  
  <input type="hidden" name="pelangganH" id="selected_name">
  <div class="form-group"><?php echo form_label('Nama Pelanggan :', 'pelanggan',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name'  => 'pelanggan', 
      'id'    => 'pelanggan',
      'value' => $pembelian_info->pelanggan,
      'class' => 'form-control'));?>
  </div></div>

</div>                                      <!-- penutup col-md-6 --> 
</div>                                      <!-- penutup row --> 




<table id="item_kit_items">
  <thead>
  <tr>
  <th style="width:5%;"><?php echo 'Hapus'; ?></th>
  <th style="width:30%;"><?php echo 'Nama Barang'; ?></th>
  <th style="width:11%;"><?php echo 'Harga'; ?></th>
  <th style="width:5%;"> <?php echo 'Jumlah'; ?></th>
  <th style="width:5%;"> <?php echo 'Satuan'; ?></th>
  <th style="width:11%;"><?php echo 'Diskon'; ?></th>
  <th style="width:15%;"><?php echo 'Total'; ?></th>
  </tr>
  </thead>
</table>

<br><br>
<div class="row">
<div class="col-md-6">
  
  <div class="form-group"><?php echo form_label('Keterangan :', 'keterangan',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_textarea(array(
      'name'  => 'keterangan', 
      'id'    => 'keterangan',
      'value' => $pembelian_info->keterangan,
      'rows'  => '5',
      'cols'  => '17',
      'value' => '-',
      'class' => 'form-control'));?>
  </div></div><br>
</div></div>

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
echo form_close(); ?>
      </div>
<script type='text/javascript'>

/*var person = "<?php echo site_url('pembelian/customer_search'); ?>";*/

function deleteItemKitRow(link) {
  $(link).parent().parent().remove();
  return false;
}

$('#pelanggan').autocomplete({
  source: "<?php echo site_url('pembelian/customer_search');?>",
  focus : function(){ return false; },
  select: function(event, ui){ 
  $('#selected_name').val(ui.item.id); 
  $('#pelanggan').val(ui.item.value); }
});

$('#item_id').autocomplete({
  source: "<?php echo site_url('pembelian/item_search');?>", // path to the lookup method
  focus : function(){ return false; },
  select: function(event, ui){ $('#selected_item_id').val(ui.item.id); }
})

.on( 'autocompleteselect', function( e, ui ){
  var id        = ( e.type == 'autocompleteresponse' ? ui.content[0].id        :  ui.item.id ),
  		name      = ( e.type == 'autocompleteresponse' ? ui.content[0].name      :  ui.item.name ),
  		price     = ( e.type == 'autocompleteresponse' ? ui.content[0].price     :  ui.item.price ),
  		satuan    = ( e.type == 'autocompleteresponse' ? ui.content[0].satuan    :  ui.item.satuan ),
	  	name      = ( e.type == 'autocompleteresponse' ? ui.content[0].value     :  ui.item.value );

	$("#item_id").val("");

	$("#item_kit_items").append("<tr><td><a href='#' onclick='return deleteItemKitRow(this);'>X</a></td><td>"+name+"</td><td><input type='text' size='8' name=harga["+id+"] align='right' value='"+price.replace(".00","")+"'></td><td><input class='jumlah' id='jumlah"+id+"' type='text' size='3' name=jumlah["+id+"] value='1'/></td><td>"+satuan+"</td><td><input type='text' size='8' name=diskon["+id+"] value='0'></td></tr>");

  return false;
});

</script>


</div>      <!-- /.box-body -->
</section>  <!-- /.content -->
</div>      <!-- /.content-wrapper -->

<?php $this->load->view("partial/footer"); ?>      <!-- Load Footer -->