<?php $this->load->view("partial/header"); ?>
<?php $this->load->view("partial/menu_left_sidebar"); ?>
<!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          	<h1>
            	<h3><?php echo $this->lang->line('reports_report_input'); ?></h3>
          	</h1>
          	<ol class="breadcrumb">
	            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
	            <li><a href="active"><?php echo $this->lang->line('Reporting'); ?></a></li>
          	</ol>
        </section>

        <!-- Main content -->
        <section class="content">

          <!-- Default box -->
          	<div class="box">
            	<div class="box-header with-border">
              		<h3 class="box-title"><?php echo $this->lang->line('reports_report_input'); ?></h3>
            	</div>
	            <div class="box-body">
					<?php
					if(isset($error))
					{
						echo "<div class='error_message'>".$error."</div>";
					}
					?>
					<div class="row">
						<div class="col-md-6">
							<div>
								<form id="myForm">
									Export to Excel: <input type="radio" name="export_excel" id="export_excel_yes" value='1' /> Yes
									<input type="radio" name="export_excel" id="export_excel_no" value='0' checked='checked' /> No	
								</form>
							</div>
							
							<?php echo form_label($this->lang->line('reports_stock_location'), 'reports_stock_location_label', array('class'=>'required')); ?>
							<div id='report_stock_location'>
								<?php echo form_dropdown('stock_location',$stock_locations,'all','id="location_id" class="form-control"'); ?>
							</div>

							<?php echo form_label($this->lang->line('reports_item_count'), 'reports_item_count_label', array('class'=>'required')); ?>
							<div id='report_item_count'>
								<?php echo form_dropdown('item_count',$item_count,'all','id="item_count" class="form-control"'); ?>
							</div>
							<br><br>
							<?php
							echo form_button(array(
								'name'=>'generate_report',
								'id'=>'generate_report',
								'content'=>$this->lang->line('common_submit'),
								'class'=>'btn btn-primary')
							);
							?>
						</div>
					</div>
				</div><!-- /.box-body -->
        	</div><!-- /.box -->

	    </section><!-- /.content -->
	</div><!-- /.content-wrapper -->

<?php $this->load->view("partial/footer"); ?>

<script type="text/javascript" language="javascript">
$(document).ready(function()
{
	$("#generate_report").click(function()
	{
		var export_excel = 0;
		if ($('input[name=export_excel]:checked', '#myForm').val()=="1")
		{
			export_excel = 1;
		}
		
		window.location = window.location+'/' + export_excel + '/' + $("#location_id").val() + '/' + $("#item_count").val();
	});	
});
</script>