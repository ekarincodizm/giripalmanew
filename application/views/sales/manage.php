<?php $this->load->view("partial/header"); ?>
<?php $this->load->view("partial/menu_left_sidebar"); ?>
<!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
      	<?php $this->load->view('partial/modal_default') ?>
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h3>Rekap Penjualan</h3>
          <ol class="breadcrumb"> 
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="active">Rekap Penjualan</a></li>
          </ol>
        </section>
		<section id="filtering">
          <div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title"><i class="fa fa-filter"></i> <?php echo $this->lang->line('common_search_options'); ?> :</h3>
              <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
              </div><!-- /.box-tools -->
            </div><!-- /.box-header -->
            <div class="box-body">
              <form id="search_form">
                <div class="row">
                  <div class="col-md-2">
                  	<div class="form-group">
                      <div class="checkbox">
                        <label>
                          <?php echo form_checkbox(array('name'=>'only_invoices','id'=>'only_invoices','value'=>1,'checked'=> isset($only_invoices)?  ( ($only_invoices)? 1 : 0) : 0));?>
                          <?php echo form_label($this->lang->line('sales_invoice_filter'), 'invoices_filter');?>
                        </label>
                      </div>
                      <div class="checkbox">
                        <label>
                          <?php echo form_checkbox(array('name'=>'only_cash','id'=>'only_cash','value'=>1,'checked'=> isset($only_cash)?  ( ($only_cash)? 1 : 0) : 0));?>
                          <?php echo form_label($this->lang->line('sales_cash_filter'), 'cash_filter');?>
                        </label>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <?php echo form_label($this->lang->line('sales_date_range').' :', 'start_date');?><br>
                    <?php echo form_input(array('name'=>'start_date','value'=>$start_date, 'class'=>'date_filter', 'size' => '15'));?>
                    <?php echo form_label(' - ', 'end_date');?>
                    <?php echo form_input(array('name'=>'end_date','value'=>$end_date, 'class'=>'date_filter', 'size' => '15'));?>

                    <!-- <input type="hidden" name="search_section_state" id="search_section_state" value="<?php echo isset($search_section_state)?  ( ($search_section_state)? 'block' : 'none') : 'none';?>" /> -->
                  </div>
                  <div class="col-md-2">
                  	<div class="form-group">
                      
                    </div>
                  </div>
                </div>
              </form>
            </div><!-- /.box-body -->
            <div class="box-footer">
              <button id="filter-now" type="button" class="btn btn-danger">Filter</button>
            </div>
          </div><!-- /.box -->
        </section>
        <!-- Main content -->
        <section>

          <!-- Default box -->
          <div class="box">
            <div class="box-body">

			<script type="text/javascript">
			$(document).ready(function()
			{
				$.datepicker.regional[ '<?php echo $this->config->item('language'); ?>' ];
			    // init_table_sorting();
			    enable_checkboxes();
			    enable_row_selection();

				var on_complete = function(response) {
					$("#payment_summary").html(response.payment_summary);
				};

			    enable_search({suggest_url : '<?php echo site_url("$controller_name/suggest")?>',
					confirm_search_message : '<?php echo $this->lang->line("common_confirm_search")?>',
					on_complete : on_complete});
			    enable_delete('<?php echo $this->lang->line($controller_name."_confirm_delete")?>','<?php echo $this->lang->line($controller_name."_none_selected")?>');

				$(".date_filter").datepicker({onSelect: function(d,i){
					if(d !== i.lastVal){
						$(this).change();
					}
				}, dateFormat: "<?php echo dateformat_jquery($this->config->item('dateformat'));?>"}).change(function() {
					do_search(true, function(response) {
						$("#payment_summary").html(response.payment_summary);
					});
					return false;
				});

				$("#update_invoice_numbers").click(function() {
					$.ajax({url : "<?php echo site_url('sales') ?>/update_invoice_numbers", dataType: 'json', success : post_bulk_form_submit });
					return false;
				});
			});

			// function post_form_submit(response)
			// {
			// 	if(!response.success)
			// 	{
			// 		set_feedback(response.message,'error_message',true);
			// 	}
			// 	else
			// 	{
			// 		// langsung refresh page aja
   //                  window.location.href = '<?php echo site_url("sales/manage")?>';
			// 		// update_row(response.id,'<?php echo site_url("$controller_name/get_row")?>');
			// 		// set_feedback(response.message,'success_message',false);
			// 	}
			// }

			function post_bulk_form_submit(response)
			{
				if(!response.success)
				{
					set_feedback(response.message,'error_message',true);
				}
				else
				{
					// langsung refresh page aja
                    window.location.href = '<?php echo site_url("sales/manage")?>';
					// for(id in response.ids)
					// {
					// 	update_row(response.ids[id],'<?php echo site_url("$controller_name/get_row")?>');
					// }
					// set_feedback(response.message,'success_message',false);
				}
			}

			</script>

      			<table id="data-table" class="table table-bordered table-striped" style="margin-top: 10px;">
                      <?php echo $manage_table; ?>
                    </table>

      			<div id="payment_summary">
      			<?php echo $payments_summary; ?>
      			</div>

      			<!-- <div id="feedback_bar"></div> -->

      			</div><!-- /.box-body -->
      			<div class="box-footer">
              <?php echo anchor("$controller_name/delete",$this->lang->line("common_delete"),array('id'=>'delete','class'=>'btn btn-danger')); ?>
              <a href="javascript:window.print()" class="btn btn-info"><?php echo $this->lang->line('common_print'); ?></a>
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

$('#filter-now').click(function() {
    var oTable = $('#data-table').DataTable();
    oTable.fnClearTable();
    $.ajax({
      type : "POST",
      url: '<?php echo site_url("$controller_name/search")?>',
      // async: false,
      data: $("#search_form").serialize(),
      dataType: "json",
      success: function(data) {
        for(var i=0; i<data.length; i++){
          oTable.fnAddData([
            '<input type="checkbox" id="sale_'+data[i].sale_id+'" value="'+data[i].sale_id+'"/>',
            'POS '+data[i].sale_id,
            data[i].sale_time,
            data[i].customer,
            data[i].amount_tendered,
            data[i].amount_due,
            data[i].change_due,
            data[i].payment_type,
            data[i].invoice_number,
            '<button class="btn btn-info btn-sm" onclick="modal_edit_sales('+data[i].sale_id+')" title="<?php echo $this->lang->line($controller_name.'_update')?>"><i class="fa fa-pencil-square"></i> <?php echo $this->lang->line('common_edit')?></button>',
            '<a class="btn btn-success btn-sm" href="<?php echo site_url();?>/sales/receipt/'+data[i].sale_id+'"><?php echo $this->lang->line('sales_show_receipt'); ?></a>',
            '<a class="btn btn-success btn-sm" href="<?php echo site_url();?>/sales/invoice/'+data[i].sale_id+'"><?php echo $this->lang->line('sales_show_invoice'); ?></a>'
            ]);
        }
      },
      error: function(e){
        alert('Error processing your request: '+e.responseText);
      }
     });
});

function modal_edit_sales(id){
    $('#my-modal').removeData('bs.modal');
    $('#my-modal').modal({remote: '<?php echo site_url("$controller_name/edit/"); ?>/'+id});
    $('#my-modal').modal('show');
  }
</script>
<?php $this->load->view("partial/footer"); ?>