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
    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="active">Dashboard</a></li>
  </ol>
</section>

<section class="content">                         <!-- Main content -->
<div class="box">                                 <!-- Default box -->

<div class="box-body">
<div class="modal-body">
<?php echo form_open('pembelian/add',array('id'=>'paket_form', 'class'=>'form-horizontal')); 
?>

<fieldset id="pembelian_info">
<div id="required_fields_message">
<?php echo $this->lang->line('common_fields_required_message'); ?></div><br>

<div class="row">
<div class="col-md-6">

  <fieldset id="pembelian_info" disabled>
  <div class="form-group"><?php echo form_label('No. Faktur :', 'noFaktur',array('class'=>'col-sm-4 required')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name'=>'noFaktur', 
      'id'=>'noFaktur',
      'value'=>$faktur,
      'class'=>'form-control'));
  ?>
  </div></div>
  
  <div class="form-group"><?php echo form_label('Tanggal Faktur :', 'tglFaktur',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name'=>'tglFaktur', 
      'id'=>'tglFaktur',
      'value'=>$tanggal,
      'class'=>'form-control'));?>
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
      'name'=>'noFakturH', 
      'id'=>'noFakturH',
      'value'=>$faktur,
	  'type'=>'hidden'));
  echo form_input(array(
      'name'=>'tglFakturH', 
      'id'=>'tglFakturH',
      'value'=>$tanggal,
	  'type'=>'hidden'));
  ?>

<div class="row">
<div class="col-md-6">
  
  <input type="hidden" name="barang" id="selected_item_id">
  <div class="form-group"><?php echo form_label('Nama Barang :', 'namaBrg',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name'=>'namaBrg', 
      'id'=>'namaBrg',
      'value'=>$pembelian_info->namaBrg,
      'class'=>'form-control'));?>
  </div></div>
  
  <div class="form-group"><?php echo form_label('Jenis Barang :', 'jenisBrg',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name'=>'jenisBrg', 
      'id'=>'jenisBrg',
      'value'=>$pembelian_info->jenisBrg,
      'class'=>'form-control'));?>
  </div></div>
  
  <div class="form-group"><?php echo form_label('Quantity :', 'quantity',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name'=>'quantity', 
      'id'=>'quantity',
      'value'=>$pembelian_info->quantity,
      'class'=>'form-control'));?>
  </div></div><br><br>
  
</div>                                      <!-- penutup col-md-6 --> 

<div class="col-md-6">

  <div class="form-group"><?php echo form_label('Satuan :', 'satuan',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name'=>'satuan', 
      'id'=>'satuan',
      'value'=>$pembelian_info->satuan,
      'class'=>'form-control'));?>
  </div></div>
  
  <div class="form-group"><?php echo form_label('Harga Beli :', 'hargaBeli',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name'=>'hargaBeli', 
      'id'=>'hargaBeli',
      'value'=>$pembelian_info->hargaBeli,
      'class'=>'form-control'));?>
  </div></div>
  
  <div class="form-group"><?php echo form_label('Diskon :', 'diskon',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name'=>'diskon', 
      'id'=>'diskon',
      'value'=>$pembelian_info->diskon,
      'class'=>'form-control'));?>
  </div></div>

</div>                                      <!-- penutup col-md-6 --> 
</div>                                      <!-- penutup row --> 



<?php 
  echo form_button('Tambah Barang', '');
  echo form_close();
?><br><br>
<table id="register">
							<thead>
								<tr>
									<th style="width:11%;"><?php echo 'Hapus'; ?></th>
									<th style="width:30%;"><?php echo 'Nama Barang'; ?></th>
									<th style="width:11%;"><?php echo 'Harga'; ?></th>
									<th style="width:5%;"><?php echo 'Jumlah'; ?></th>
									<th style="width:11%;"><?php echo 'Diskon'; ?></th>
									<th style="width:15%;"><?php echo 'Total'; ?></th>
									<th style="width:11%;"><?php echo $this->lang->line('recvs_edit'); ?></th>
								</tr>
							</thead>
							<tbody id="cart_contents">
								<?php	if(count($cart)==0){ ?>
								<tr>
									<td colspan='8'>
										<div class='warning_message' style='padding:7px;'><?php echo $this->lang->line('sales_no_items_in_cart'); ?></div>
									</td>
								</tr>
								<?php } ?>
									

							</tbody>
						</table>

<br>
<div class="row">

<div class="col-md-6">
  <div class="form-group"><?php echo form_label('Total Harga :', 'totalHarga',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name'=>'totalHarga', 
      'id'=>'totalHarga',
      'value'=>$pembelian_info->totalHarga,
      'class'=>'form-control'));?>
  </div></div><br>
</div>                                      <!-- penutup col-md-6 --> 

<div class="col-md-6">
  <div class="form-group"><?php echo form_label('Total Pembelian :', 'totalPembelian',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name'=>'totalPembelian', 
      'id'=>'totalPembelian',
      'value'=>$pembelian_info->totalPembelian,
      'class'=>'form-control'));?>
  </div></div>
</div>                                      <!-- penutup col-md-6 --> 
</div>                                      <!-- penutup row --> 

</div>
</fieldset>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-warning pull-left" data-dismiss="modal">Close</button>
        <!-- <a href="" id="link-delete"><button type="button" class="btn btn-outline">Save changes</button></a> -->
      </div>
<script type='text/javascript'>

	$('#namaBrg').autocomplete({
		source: "<?php echo site_url('pembelian/item_search');?>", // path to the lookup method
		focus : function(){ return false; },
		select: function(event, ui){
		$('#selected_item_id').val(ui.item.id);
		$("#jenisBrg").val(ui.item.category);
		$("#hargaBeli").val(ui.item.price);
		$("#satuan").val(ui.item.satuan);
		}
	});

</script>




</div><!-- /.box-body -->

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