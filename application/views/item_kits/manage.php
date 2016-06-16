<?php $this->load->view("partial/header"); ?>
<?php $this->load->view("partial/menu_left_sidebar"); ?>
<style>
  .dataTables_wrapper{
    margin-top: 10px
  }
  .bungkus-btn{
    margin: 10px;
  }
</style>
<!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
      	<!-- Modal -->
        <div class="modal fade" id="itemkits-modal" tabindex="-1" role="dialog" aria-labelledby="itemkits-modalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                         <h4 class="modal-title"></h4>

                    </div>
                    <div class="modal-body"></div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
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
				    enable_checkboxes();
				    // enable_row_selection();
				    enable_search({suggest_url : '<?php echo site_url("$controller_name/suggest")?>',
									confirm_message : '<?php echo $this->lang->line("common_confirm_search")?>'});
				    enable_delete('<?php echo $this->lang->line($controller_name."_confirm_delete")?>','<?php echo $this->lang->line($controller_name."_none_selected")?>');

				    $('#generate_barcodes').click(function()
				    {
				    	var selected = get_selected_values();
				    	if (selected.length == 0)
				    	{
				    		alert('<?php echo $this->lang->line('items_must_select_item_for_barcode'); ?>');
				    		return false;
				    	}

				    	$(this).attr('href','index.php/item_kits/generate_barcodes/'+selected.join(':'));
				    });
				});

				// function init_table_sorting()
				// {
				// 	//Only init if there is more than one row
				// 	if($('.tablesorter tbody tr').length >1)
				// 	{
				// 		$("#sortable_table").tablesorter(
				// 		{
				// 			sortList: [[1,0]],
				// 			headers:
				// 			{
				// 				0: { sorter: false},
				// 				6: { sorter: false}
				// 			}
				// 		});
				// 	}
				// }

				function post_item_kit_form_submit(response)
				{
					if(!response.success)
					{
						alert(response.message);
					}
					else
					{
						// langsung refresh page aja
            window.location.href = '<?php echo site_url($controller_name)?>';
					}
				}
				</script>
				<div class="row">
          <div class="col-md-4"></div>
          <div class="col-md-4"></div>

          <div class="col-md-2"></div>
          <div class="col-md-2">
	        	<div class="bungkus-btn">
            	<button class="btn btn-block btn-success btn-sm" id="btn-new-item"><?php echo $this->lang->line($controller_name.'_new') ?></button>
            </div>
          </div>
	      </div>
				<table id="data-table" class="table table-bordered table-striped" style="margin-top: 10px;">
	      	<?php echo $manage_table; ?>
        </table>
			</div><!-- /.box-body -->
			<div class="box-footer">
        <?php echo anchor("$controller_name/delete",$this->lang->line("common_delete"),array('id'=>'delete','class'=>'btn btn-danger')); ?>
        <?php echo anchor("$controller_name/generate_barcodes",$this->lang->line("items_generate_barcodes"),array('id'=>'generate_barcodes', 'target' =>'_blank','title'=>$this->lang->line('items_generate_barcodes'),'class'=>'btn btn-warning')); ?>
      </div>
    <div><!-- /.box -->
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
<?php $this->load->view("partial/footer"); ?>
