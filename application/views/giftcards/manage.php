<?php $this->load->view("partial/header"); ?>
<?php $this->load->view("partial/menu_left_sidebar"); ?>
<!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
    	<?php $this->load->view('partial/modal_default') ?>
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h3><?php echo $this->lang->line('common_list_of').' '.$this->lang->line('module_'.$controller_name); ?></h3>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="active">Dashboard</a></li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">

          <!-- Default box -->
          <div class="box">
            <!-- <div class="box-header with-border">
              <h3 class="box-title">Penjualan Baru</h3>
            </div> -->
            <div class="box-body">
							<script type="text/javascript">
							$(document).ready(function()
							{
							    // init_table_sorting();
							    enable_select_all();
							    enable_checkboxes();
							    // enable_row_selection();
							    // enable_search({suggest_url: '<?php echo site_url("$controller_name/suggest")?>',
												// confirm_message: '<?php echo $this->lang->line("common_confirm_search")?>'});
							    enable_delete('<?php echo $this->lang->line($controller_name."_confirm_delete")?>','<?php echo $this->lang->line($controller_name."_none_selected")?>');
							});

							function post_giftcard_form_submit(response)
							{
								if(!response.success)
								{
									set_feedback(response.message,'error_message',true);
								}
								else
								{
									// langsung refresh page aja
                  window.location.href = '<?php echo site_url($controller_name)?>';
								}
							}
							</script>
							<div class="row" style="margin-bottom: 10px;">
                <div class="col-md-4"></div>
                <div class="col-md-4"></div>
                <div class="col-md-2">
                  <div class="bungkus-btn">
                    <button class="btn btn-block btn-success btn-sm" id="btn-new-giftcard"><?php echo $this->lang->line($controller_name.'_new') ?></button>
                  </div>
                </div>
                <div class="col-md-2">
                </div>
              </div>
							<table id="data-table" class="table table-bordered table-striped">
                <?php echo $manage_table; ?>
              </table>
						</div><!-- /.box-body -->
						<div class="box-footer">
                <?php echo anchor("$controller_name/delete",$this->lang->line("common_delete"),array('id'=>'delete','class'=>'btn btn-danger')); ?>
            </div>
        	</div><!-- /.box -->
        </section><!-- /.content -->
    	</div><!-- /.content-wrapper -->
<script>
  $(function () {
    $("#data-table").dataTable({
      "bSort": false,
      "iDisplayLength": 25,
      "bLengthChange": true
    });
  });

  $("#btn-new-giftcard").on('click', function () {
    $('#my-modal').removeData('bs.modal');
    $('#my-modal').modal({remote: '<?php echo site_url("$controller_name/view/-1"); ?>'});
    $('#my-modal').modal('show');
  });

  function modal_edit_giftcard(id){
    $('#my-modal').removeData('bs.modal');
    $('#my-modal').modal({remote: '<?php echo site_url("$controller_name/view/"); ?>/'+id});
    $('#my-modal').modal('show');
  }
</script>
<?php $this->load->view("partial/footer"); ?>