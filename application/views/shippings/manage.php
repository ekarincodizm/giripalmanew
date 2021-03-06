<?php $this->load->view("partial/header"); ?>
<?php $this->load->view("partial/menu_left_sidebar"); ?>
<!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
      	<?php $this->load->view('partial/modal_large') ?>
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
            <div class="box-body">
							<script type="text/javascript">
							$(document).ready(function() 
							{ 
							    enable_select_all();
							    enable_row_selection();
							    enable_delete('<?php echo $this->lang->line($controller_name."_confirm_delete")?>','<?php echo $this->lang->line($controller_name."_none_selected")?>');
							}); 

							function post_person_form_submit(response)
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
                <div class="col-md-2">
                  <div class="bungkus-btn">
                    <button class="btn btn-block btn-success btn-sm" id="btn-new-shipping"><?php echo $this->lang->line($controller_name.'_new') ?></button>
                  </div>
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

  $("#btn-new-shipping").on('click', function () {
    $('#my-modal').removeData('bs.modal');
    $('#my-modal').modal({remote: '<?php echo site_url("$controller_name/view/-1"); ?>'});
    $('#my-modal').modal('show');
  });

  function modal_edit_item(id){
    $('#my-modal').removeData('bs.modal');
    $('#my-modal').modal({remote: '<?php echo site_url("$controller_name/view/"); ?>/'+id});
    $('#my-modal').modal('show');
  }
</script>
<?php $this->load->view("partial/footer"); ?>
