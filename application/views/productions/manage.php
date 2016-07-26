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
  #td { align: right }
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
  <input type="hidden" name="surat" id="selected_surat">
  <div class="form-group"><?php echo form_label('No. Surat Jalan :', 'noSurat',array('class'=>'col-sm-4 required')); ?>
  <div class='col-sm-8'>  <?php echo form_input(array(
      'name'  => 'noSurat', 
      'id'    => 'noSurat',
      'value' => $prod_info->noSurat,
      'class' => 'form-control'));?>
  </div></div><br></fieldset>
  
  <fieldset id="prod_info" disabled>
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
  </div></div></fieldset>
  
</div> <!-- ./col-md-6 --> 

<div class="col-md-6">
<fieldset id="prod_info">
  <?php /*
  <div class="form-group"><?php echo form_label('Lokasi Gudang :', 'gudang',array('class'=>'col-sm-4')); ?>
  <div class='col-sm-8'>  <?php echo form_dropdown('gudang', $gudang, '', 'id="gudang" class="form-control"'); ?>
  </div></div><br> */ ?>

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
<br>
<table id="item_kit_items">
</table>
<br>
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

$('#noSurat').autocomplete({
  source: "<?php echo site_url('productions/noSurat');?>",
  focus : function(){ return false; },
  select: function(event, ui){ 
  $('#noSurat').val(ui.item.value);
  $('#nama').val(ui.item.nama);
  $('#tanggal').val(ui.item.tanggal);  
  }
})

.on( 'autocompleteselect', function(e, ui){
  var value = ( e.type == 'autocompleteresponse' ? ui.content[0].value :  ui.item.value );
  $('#item_kit_items').load("http://localhost/giripalma/index.php/productions/itemDetail/"+value);
return false;
}
); 

</script>


</div><!-- /.box-body -->

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