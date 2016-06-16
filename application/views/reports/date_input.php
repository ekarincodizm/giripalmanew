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
              <h3 class="box-title"><?php echo $this->lang->line('reports_filter_input'); ?></h3>
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
						<?php echo form_label($this->lang->line('reports_date_range'), 'report_date_range_label', array('class'=>'required')); ?>
						<div id='report_date_range_simple'>
							<input type="radio" name="report_type" id="simple_radio" value='simple' checked='checked'/>
							<?php echo form_dropdown('report_date_range_simple',$report_date_range_simple, '', 'id="report_date_range_simple", class="form-control"'); ?>
						</div>
						
						<div id='report_date_range_complex'>
							<input type="radio" name="report_type" id="complex_radio" value='complex' />
							<div class="input-group">
                                <div class="input-group-addon">
                                  <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right" id="daterangepicker"/>
                              </div><!-- /.input group -->
							<?php 
							if (isset($discount_input)) {
								?>
								<div>
									<span>
									<?php echo $this->lang->line('reports_discount_prefix') .'&nbsp;' .form_input(array(
										'name'=>'selected_discount',
										'id'=>'selected_discount',
										'value'=>'0')). '&nbsp;'. $this->lang->line('reports_discount_suffix')
									?>
									</span>
								</div>
								<?php
							}
							?>
						</div>
						
						<?php
						if($mode == 'sale')
					    {
					    ?>
					    	<?php echo form_label($this->lang->line('reports_sale_type'), 'reports_sale_type_label', array('class'=>'required')); ?>
					    	<div id='report_sale_type'>
					    		<?php echo form_dropdown('sale_type',array('all' => $this->lang->line('reports_all'), 
					    		'sales' => $this->lang->line('reports_sales'), 
					    		'returns' => $this->lang->line('reports_returns')), 'all', 'id="input_type", class="form-control"'); ?>
					    	</div>
							<?php
					    }
					    elseif($mode == 'receiving')
					    {
					    ?>
					        <?php echo form_label($this->lang->line('reports_receiving_type'), 'reports_receiving_type_label', array('class'=>'required')); ?>
					        <div id='report_receiving_type'>
					     	   <?php echo form_dropdown('receiving_type',array('all' => $this->lang->line('reports_all'),
					        'receiving' => $this->lang->line('reports_receivings'), 
					        'returns' => $this->lang->line('reports_returns'),
					        'requisitions' => $this->lang->line('reports_requisitions')), 'all', 'id="input_type", class="form-control"'); ?>
					        </div>
							<?php
					    }
						if (!empty($stock_locations) && count($stock_locations) > 1)
						{
							?>
							<?php echo form_label($this->lang->line('reports_stock_location'), 'reports_stock_location_label', array('class'=>'required')); ?>
							<div id='report_stock_location'>
								<?php echo form_dropdown('stock_location',$stock_locations,'all','id="location_id", class="form-control"'); ?>
							</div>
							<?php
						}
					    ?>
					    <br><br>
					<?php
					echo form_button(array(
						'name'=>'generate_report',
						'id'=>'generate_report',
						'content'=>$this->lang->line('common_submit'),
						'class'=>'btn btn-success')
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
		var input_type = $("#input_type").val();
		var location_id = $("#location_id").val();
		var location = window.location;
		if ($("#simple_radio").attr('checked'))
		{
			location += '/'+$("#report_date_range_simple option:selected").val() + '/' + input_type;
		}
		else
		{
			var date_range = $("#daterangepicker").val();
      		var new_date_range = date_range.replace(" - ", "/");
	        if(!input_type)
	        {
	            location += '/'+new_date_range;
	        }
	        else
	        {
				location += '/'+new_date_range+ '/' + input_type;
			}
		}
		if (location_id)
		{
			location += '/' + location_id;
		}
		window.location = location;
	});
	
	$("#daterangepicker").click(function()
	{
		$("#complex_radio").prop("checked", true);
	});
	
	$("#report_date_range_simple").click(function()
	{
		$("#simple_radio").prop("checked", true);
	});
	
});
</script>