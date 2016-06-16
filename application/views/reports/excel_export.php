<?php $this->load->view("partial/header"); ?>
<?php $this->load->view("partial/menu_left_sidebar"); ?>
<!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            <h3><?php echo $this->lang->line('sales_register'); ?></h3>
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
				<div id="page_title" style="margin-bottom:8px;"><?php echo $this->lang->line('reports_report_input'); ?></div>
				<?php
				if(isset($error))
				{
					echo "<div class='error_message'>".$error."</div>";
				}
				?>
					<div>
						Export to Excel: <input type="radio" name="export_excel" id="export_excel_yes" value='1' /> Yes
						<input type="radio" name="export_excel" id="export_excel_no" value='0' checked='checked' /> No
					</div>

				<?php
				echo form_button(array(
					'name'=>'generate_report',
					'id'=>'generate_report',
					'content'=>$this->lang->line('common_submit'),
					'class'=>'submit_button')
				);
				?>

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
		if ($("#export_excel_yes").attr('checked'))
		{
			export_excel = 1;
		}
		
		window.location = window.location+'/' + export_excel;
	});	
});
</script>