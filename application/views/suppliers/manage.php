<?php $this->load->view("partial/header"); ?>
<?php $this->load->view("partial/menu_left_sidebar"); ?>
<!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
      	<?php $this->load->view('partial/modal_large') ?>
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            <h3><?php echo $this->lang->line('common_list_of').' '.$this->lang->line('module_'.$controller_name); ?></h3>
          </h1>
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
							    enable_row_selection();
							    // enable_search({suggest_url : '<?php echo site_url("$controller_name/suggest")?>', confirm_search_message : '<?php echo $this->lang->line("common_confirm_search")?>'});
							    enable_email('<?php echo site_url("$controller_name/mailto")?>');
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
									// //This is an update, just update one row
									// if(jQuery.inArray(response.person_id,get_visible_checkbox_ids()) != -1)
									// {
									// 	update_row(response.person_id,'<?php echo site_url("$controller_name/get_row")?>');
									// 	set_feedback(response.message,'success_message',false);	
										
									// }
									// else //refresh entire table
									// {
									// 	do_search(true,function()
									// 	{
									// 		//highlight new row
									// 		hightlight_row(response.person_id);
									// 		set_feedback(response.message,'success_message',false);		
									// 	});
									// }
								}
							}
							</script>
							
							<div class="row" style="margin-bottom: 10px;">
                <div class="col-md-4"></div>
                <div class="col-md-4"></div>
                <div class="col-md-2">
                  <div class="bungkus-btn">
                    <button class="btn btn-block btn-success btn-sm" id="btn-new-supplier"><?php echo $this->lang->line($controller_name.'_new') ?></button>
                  </div>
                </div>
                <div class="col-md-2">
                </div>
              </div>
							<!-- <div id="title_bar">
								<div id="new_button">
									<?php echo anchor("$controller_name/view/-1/width:$form_width",
									"<div class='btn btn-block btn-success btn-sm'><span>".$this->lang->line($controller_name.'_new')."</span></div>",
									array('class'=>'thickbox none','title'=>$this->lang->line($controller_name.'_new')));
									?>
								</div>
							</div> -->
							
							<table id="data-table" class="table table-bordered table-striped">
                <?php echo $manage_table; ?>
              </table>
						</div><!-- /.box-body -->
						<div class="box-footer">
                <?php echo anchor("$controller_name/delete",$this->lang->line("common_delete"),array('id'=>'delete','class'=>'btn btn-danger')); ?>
                <a class="btn btn-warning" href="#" id="email"><?php echo $this->lang->line("common_email");?></a>
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

  $("#btn-new-supplier").on('click', function () {
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
