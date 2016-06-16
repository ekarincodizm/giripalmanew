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
        <?php $this->load->view('partial/modal_large') ?>
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h3><?php echo $this->lang->line('common_list_of').' '.$this->lang->line('module_'.$controller_name); ?></h3>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="active">Dashboard</a></li>
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
                  <div class="col-md-4">
                    <div class="form-group">
                      <div class="checkbox">
                        <label>
                          <?php echo form_checkbox(array('name'=>'empty_upc','id'=>'empty_upc','value'=>1,'checked'=> isset($empty_upc)?  ( ($empty_upc)? 1 : 0) : 0));?>
                          <?php echo form_label($this->lang->line('items_empty_upc_items'), 'empty_upc');?>
                        </label>
                      </div>

                      <div class="checkbox">
                        <label>
                          <?php echo form_checkbox(array('name'=>'low_inventory','id'=>'low_inventory','value'=>1,'checked'=> isset($low_inventory)?  ( ($low_inventory)? 1 : 0) : 0));?>
                          <?php echo form_label($this->lang->line('items_low_inventory_items'), 'low_inventory');?>
                        </label>
                      </div>

                      <div class="checkbox">
                        <label>
                          <?php echo form_checkbox(array('name'=>'is_serialized','id'=>'is_serialized','value'=>1,'checked'=> isset($is_serialized)?  ( ($is_serialized)? 1 : 0) : 0));?>
                          <?php echo form_label($this->lang->line('items_serialized_items'), 'is_serialized');?>
                        </label>
                      </div>

                      <div class="checkbox">
                        <label>
                          <?php echo form_checkbox(array('name'=>'no_description','id'=>'no_description','value'=>1,'checked'=> isset($no_description)?  ( ($no_description)? 1 : 0) : 0));?>
                          <?php echo form_label($this->lang->line('items_no_description_items'), 'no_description');?>
                        </label>
                      </div>

                      <div class="checkbox">
                        <label>
                          <?php echo form_checkbox(array('name'=>'search_custom','id'=>'search_custom','value'=>1,'checked'=> isset($search_custom)?  ( ($search_custom)? 1 : 0) : 0));?>
                          <?php echo form_label($this->lang->line('items_search_custom_items'), 'search_custom');?>
                        </label>
                      </div>

                      <div class="checkbox">
                        <label>
                          <?php echo form_checkbox(array('name'=>'is_deleted','id'=>'is_deleted','value'=>1,'checked'=> isset($is_deleted)?  ( ($is_deleted)? 1 : 0) : 0));?>
                          <?php echo form_label($this->lang->line('items_is_deleted'), 'is_deleted');?>
                        </label>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <?php echo form_label($this->lang->line('sales_date_range').' :', 'start_date');?><br>
                    <?php echo form_input(array('name'=>'start_date','value'=>$start_date, 'class'=>'date_filter', 'size' => '15'));?>
                    <?php echo form_label(' - ', 'end_date');?>
                    <?php echo form_input(array('name'=>'end_date','value'=>$end_date, 'class'=>'date_filter', 'size' => '15'));?>

                    <input type="hidden" name="search_section_state" id="search_section_state" value="<?php echo isset($search_section_state)?  ( ($search_section_state)? 'block' : 'none') : 'none';?>" />
                  </div>
                  <div class="col-md-4">
                    <?php echo form_label($this->lang->line('items_stock_location'), 'stock_location') ?>
                    <?php if (count($stock_locations) > 1)
                      echo form_dropdown('stock_location',$stock_locations,$stock_location,'id="stock_location" class="form-control"'); 
                      ?>
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
            <div class="box-header with-border">
              <h3 class="box-title"><?php echo $this->lang->line('common_list_of').' '.$this->lang->line('module_'.$controller_name); ?></h3>
            </div>
            <div class="box-body">
              <script type="text/javascript">
              $(document).ready(function()
              {
                  // init_table_sorting();
                  enable_select_all();
                  enable_checkboxes();
                  // enable_row_selection();
                  // var widget = enable_search({suggest_url : '<?php echo site_url("$controller_name/suggest")?>',
                  //     confirm_message : '<?php echo $this->lang->line("common_confirm_search")?>',
                  //     extra_params : {
                  //         'is_deleted' : function () {
                  //             return $("#is_deleted").is(":checked") ? 1 : 0;
                  //     }
                  // }});
                  // clear suggestion cache when toggling filter
                  // $("#is_deleted").change(function() {
                  //     widget.flushCache();
                  // });
                  enable_delete('<?php echo $this->lang->line($controller_name."_confirm_delete")?>','<?php echo $this->lang->line($controller_name."_none_selected")?>');
                  enable_bulk_edit('<?php echo $this->lang->line($controller_name."_none_selected")?>');

                  $('#generate_barcodes').click(function()
                  {
                      var selected = get_selected_values();
                      if (selected.length == 0)
                      {
                          alert('<?php echo $this->lang->line('items_must_select_item_for_barcode'); ?>');
                          return false;
                      }

                      $(this).attr('href','index.php/items/generate_barcodes/'+selected.join(':'));
                  });

                  // $("#search_filter_section input").click(function() 
                  // {
                  //     // reset page number when selecting a specific page number
                  //     $('#limit_from').val("0");
                  //     do_search(true);
                  // });

                  // $('#search').keypress(function (e) {
                  //     if (e.which == 13) {
                  //         $('#search_form').submit();
                  //     }
                  // });

                  $(".date_filter").datepicker({onSelect: function(d,i){
                      if(d !== i.lastVal){
                          $(this).change();
                      }
                  }, dateFormat: "<?php echo dateformat_jquery($this->config->item('dateformat'));?>"}).change(function() {
                      do_search(true);
                      return false;
                  });
                  
                  resize_thumbs();
              });

              function resize_thumbs()
              {
                  $('a.rollover').imgPreview();
              }

              function post_item_form_submit(response)
              {
                  if(!response.success)
                  {
                      alert(response.message);
                  }
                  else
                  {
                    // langsung refresh page aja
                    window.location.href = '<?php echo site_url($controller_name)?>';
                      // //This is an update, just update one row
                      // if(jQuery.inArray(response.item_id,get_visible_checkbox_ids()) != -1)
                      // {
                      //     update_row(response.item_id,'<?php echo site_url("$controller_name/get_row")?>',resize_thumbs);
                      //     set_feedback(response.message,'success_message',false);
                      // }
                      // else //refresh entire table
                      // {
                      //     do_search(true,function()
                      //     {
                      //         //highlight new row
                      //         hightlight_row(response.item_id);
                      //         set_feedback(response.message,'success_message',false);
                      //     });
                      // }
                  }
              }

              function post_bulk_form_submit(response)
              {
                  if(!response.success)
                  {
                      set_feedback(response.message,'error_message',true);
                  }
                  else
                  {
                      var selected_item_ids=get_selected_values();
                      for(k=0;k<selected_item_ids.length;k++)
                      {
                          update_row(selected_item_ids[k],'<?php echo site_url("$controller_name/get_row")?>',resize_thumbs);
                      }
                      set_feedback(response.message,'success_message',false);
                  }
              }
              </script>
              
              <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4"></div>
                <div class="col-md-2">
                  <div class="bungkus-btn">
                    <button class="btn btn-block btn-success btn-sm" id="btn-new-item"><?php echo $this->lang->line($controller_name.'_new') ?></button>
                  </div>
                </div>
                <div class="col-md-2">
                  <div class="bungkus-btn">
                   <?php echo anchor("$controller_name/excel_import/width:$form_width",
                      "<div class='btn btn-block btn-success btn-sm' style='float: left;'><span>" . $this->lang->line('common_import_excel') . "</span></div>",
                      array('class'=>'thickbox none','title'=>'Import Items from Excel'));
                      ?>
                    </div>
                </div>
              </div>

              <table id="data-table" class="table table-bordered table-striped" style="margin-top: 10px;">
                <?php echo $manage_table; ?>
              </table>

            </div><!-- /.box-body -->
            <div class="box-footer">
                <?php echo anchor("$controller_name/delete",$this->lang->line("common_delete"),array('id'=>'delete','class'=>'btn btn-danger')); ?>
                <?php echo anchor("$controller_name/bulk_edit/width:$form_width",$this->lang->line("items_bulk_edit"),array('id'=>'bulk_edit','title'=>$this->lang->line('items_edit_multiple_items'),'class'=>'btn btn-info')); ?>
                <?php echo anchor("$controller_name/generate_barcodes",$this->lang->line("items_generate_barcodes"),array('id'=>'generate_barcodes', 'target' =>'_blank','title'=>$this->lang->line('items_generate_barcodes'),'class'=>'btn btn-warning')); ?>
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

  $("#btn-new-item").on('click', function () {
    $('#my-modal').removeData('bs.modal');
    $('#my-modal').modal({remote: '<?php echo site_url("$controller_name/view/-1"); ?>'});
    $('#my-modal').modal('show');
  });

  function modal_edit_item(id){
    $('#my-modal').removeData('bs.modal');
    $('#my-modal').modal({remote: '<?php echo site_url("$controller_name/view/"); ?>/'+id});
    $('#my-modal').modal('show');
  }

  function modal_inventory(id){
    $('#my-modal').removeData('bs.modal');
    $('#my-modal').modal({remote: '<?php echo site_url("$controller_name/inventory/"); ?>/'+id});
    $('#my-modal').modal('show');
  }

  function modal_detail_item(id){
    $('#my-modal').removeData('bs.modal');
    $('#my-modal').modal({remote: '<?php echo site_url("$controller_name/count_details/"); ?>/'+id});
    $('#my-modal').modal('show');
  }

// reference: http://www.sitepoint.com/working-jquery-datatables/
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
            '<input type="checkbox" id="item_'+data[i].id+'" value="'+data[i].id+'"/>',
            '<strong>ID '+data[i].number+'</strong><br>'+data[i].name+'<br>Warna: '+data[i].color,
            data[i].category,
            data[i].supplier,
            data[i].cost_price,
            data[i].unit_price,
            data[i].quantity,
            data[i].tax,
            '<button class="btn btn-info btn-sm" onclick="modal_edit_item('+data[i].id+')" title="<?php echo $this->lang->line($controller_name.'_update')?>"><i class="fa fa-pencil-square"></i> <?php echo $this->lang->line('common_edit')?></button>',
            '<button class="btn btn-warning btn-sm" onclick="modal_inventory('+data[i].id+')" title="<?php echo $this->lang->line($controller_name.'_count')?>"><i class="fa fa-pencil-square"></i> <?php echo $this->lang->line('common_inv')?></button>',
            '<button class="btn btn-info btn-sm" onclick="modal_detail_item('+data[i].id+')" title="<?php echo $this->lang->line($controller_name.'_details_count')?>"><i class="fa fa-search"></i> <?php echo $this->lang->line('common_det')?></button>'
            ]);
        }
      },
      error: function(e){
        alert('Error processing your request: '+e.responseText);
      }
     });
  });
</script>
<?php $this->load->view("partial/footer"); ?>
