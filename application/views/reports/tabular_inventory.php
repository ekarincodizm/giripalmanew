<?php 
$this->load->view("partial/header");
$this->load->view("partial/menu_left_sidebar"); 
?>
<!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
    	    <h1>
        	    <h3><?php echo $this->lang->line('reports'); ?></h3>
          	</h1>
          	<ol class="breadcrumb">
            	<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            	<li><a href="active"><?php echo $this->lang->line('reports'); ?></a></li>
          	</ol>
        </section>

        <!-- Main content -->
        <section class="content">
			<div class="row">
				<div class="col-md-12">
            		<!-- for input filter -->
		            <div class="box box-danger">
		                <div class="box-header with-border">
		            	    <h3 class="box-title"><?php echo $this->lang->line('reports_filter_input'); ?></h3>
		                </div>
		                <div class="box-body">
		                	<div class="row">
								<div class="col-md-4">	
									<?php echo form_label($this->lang->line('reports_stock_location'), 'reports_stock_location_label', array('class'=>'required')); ?>
									<div id='report_stock_location'>
										<?php echo form_dropdown('stock_location',$stock_locations,$this->uri->segment(4),'id="location_id" class="form-control"'); ?>
									</div>
								</div>
								<div class="col-md-4">
									<?php echo form_label($this->lang->line('reports_item_count'), 'reports_item_count_label', array('class'=>'required')); ?>
									<div id='report_item_count'>
										<?php echo form_dropdown('item_count',$item_count,$this->uri->segment(5),'id="item_count" class="form-control"'); ?>
									</div>
								</div>
							</div>
		                </div><!-- /.box-body -->
		                <div class="box-footer">
		                	<?php
							echo form_button(array(
								'name'=>'generate_report',
								'id'=>'generate_report',
								'content'=>$this->lang->line('common_submit'),
								'class'=>'btn btn-primary')
							);
							?>
		                </div>
		            </div><!-- /.box -->
		              <!-- for input filter -->
            	</div>
            	<div class="col-md-12">
            		<div class="box box-success">
			            <div class="box-header with-border">
			              	<h3 class="box-title"><?php echo $title; ?></h3>
			              	<a id="link-export" href="<?php echo $export_url;?>"><button class="btn btn-danger"><i class="fa fa-cloud-download"></i> Export</button></a>
			            </div>
			            <div class="box-body">
							<!-- <div id="page_title" style="margin-bottom:8px;"><?php echo $title ?></div> -->
							<div id="page_subtitle" style="margin-bottom:8px;"><?php echo $subtitle ?></div>
							<div id="table_holder">
								<table class="table table-striped" id="table-report">
			                    <tr>
			                      	<?php foreach ($headers as $header) { ?>
										<th><?php echo $header; ?></th>
									<?php } ?>
			                    </tr>
			                    <?php foreach ($data as $row) { ?>
								<tr>
									<?php foreach ($row as $cell) { ?>
									<td><?php echo $cell; ?></td>
									<?php } ?>
								</tr>
								<?php } ?>
								<tr>
									<td colspan="8"><strong>TOTAL</strong></td>
									<?php foreach($summary_data as $name=>$value) { ?>
									<td><strong><?php echo ($name=="quantity_purchased" ? intval($value) : to_currency($value)); ?></strong></td>
									<?php }?>
								</tr>
			                  </table>
							</div> <!-- ./table_holder -->
						</div><!-- /.box-body -->
		          	</div><!-- /.box -->
            	</div>
            	
            </div>
          <!-- Default box -->
          

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

<?php 
$this->load->view("partial/footer"); 
?>

<script type="text/javascript" language="javascript">

$(document).ready(function()
{
	$("#generate_report").click(function()
	{
		window.location = '<?php echo site_url("reports/inventory_summary");?>'+'/0/' + $("#location_id").val() + '/' + $("#item_count").val();
	});
});

function currency_separator(nStr, sep) {
    nStr += '';
    x = nStr.split('.');
    x1 = x[0];
    x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
            x1 = x1.replace(rgx, '$1' + sep + '$2');
    }
    return x1 + x2;
}
</script>