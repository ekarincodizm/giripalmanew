<?php 
//OJB: Check if for excel export process
if($export_excel == 1){
	ob_start();
	$this->load->view("partial/header_excel");
}else{
	$this->load->view("partial/header");
	$this->load->view("partial/menu_left_sidebar");
} 
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
            	<div class="col-md-9">
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
									<td><strong>TOTAL</strong></td>
									<?php foreach($summary_data as $name=>$value) { ?>
									<td><strong><?php echo ($name=="quantity_purchased" ? intval($value) : to_currency($value)); ?></strong></td>
									<?php }?>
								</tr>
			                  </table>
							</div> <!-- ./table_holder -->
						</div><!-- /.box-body -->
		          	</div><!-- /.box -->
            	</div>
            	<div class="col-md-3">
            		<!-- for input filter -->
		            <div class="box box-danger">
		                <div class="box-header with-border">
		            	    <h3 class="box-title"><?php echo $this->lang->line('reports_report_input'); ?></h3>
		                </div>
		                <div class="box-body">
		                	<?php echo form_label($this->lang->line('reports_date_range'), 'report_date_range_label', array('class'=>'required')); ?>
			                <?php
			                  if(isset($error))
			                  {
			                    echo "<div class='error_message'>".$error."</div>";
			                  }
			                  ?>
			                <form id="myForm">
			                <div class="form-group">
			                    <div class="radio">
			                      <label>
			                        <div id='report_date_range_simple'>  
			                          <input type="radio" name="report_type" id="simple_radio" value='simple' checked='checked'/>
			                          <?php echo form_dropdown('report_date_range_simple',$report_date_range_simple, '', 'id="report_date_range_simple", class="form-control"'); ?>
			                        </div>
			                      </label>
			                    </div>
			                    <div class="radio">
			                      <label>
			                        <div id='report_date_range_complex'>
			                          <input type="radio" name="report_type" id="complex_radio" value='complex' />
			                          <span>
			                            <div class="form-group">
			                              <label>Date range:</label>
			                              <div class="input-group">
			                                <div class="input-group-addon">
			                                  <i class="fa fa-calendar"></i>
			                                </div>
			                                <input type="text" class="form-control pull-right" id="daterangepicker"/>
			                              </div><!-- /.input group -->
			                            </div><!-- /.form group -->
			                          </span>
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
			                      </label>
			                    </div>
		                  	</div>
		                  	</form>                 
		                  	<?php echo form_label($this->lang->line('reports_sale_type'), 'reports_sale_type_label', array('class'=>'required')); ?>
		                  	<div id='report_sale_type'>
		                    <?php echo form_dropdown('sale_type',array('all' => $this->lang->line('reports_all'), 
		                        'sales' => $this->lang->line('reports_sales'), 
		                        'returns' => $this->lang->line('reports_returns')), 'all', 'id="input_type", class="form-control"'); ?>
		                  	</div>
		                  	<br><br>
		                  	<?php
			                  echo form_button(array(
			                    'name'=>'generate_report',
			                    'id'=>'generate_report',
			                    'content'=>$this->lang->line('common_submit'),
			                    'class'=>'btn btn-success')
			                  );
			                  ?>
		                </div><!-- /.box-body -->
		              </div><!-- /.box -->
		              <!-- for input filter -->
            	</div>
            </div>
          <!-- Default box -->
          

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

<?php 
if($export_excel == 1){
	$this->load->view("partial/footer_excel");
	$content = ob_end_flush();
	
	$filename = trim($filename);
	$filename = str_replace(array(' ', '/', '\\'), '', $title);
	$filename .= "_Export.xls";
	header('Content-type: application/ms-excel');
	header('Content-Disposition: attachment; filename='.$filename);
	echo $content;
	die();
	
}else{
	$this->load->view("partial/footer"); 
?>

<script type="text/javascript" language="javascript">

$(document).ready(function()
{
	$("#daterangepicker").click(function()
    {
      $("#complex_radio").prop("checked", true);
    });
    
    $("#report_date_range_simple").click(function()
    {
      $("#simple_radio").prop("checked", true);
    });

    $("#generate_report").click(function()
    {
      var input_type = $("#input_type").val();
      var location = window.location;
      var date_range = $("#daterangepicker").val();
      var new_date_range = date_range.replace(" - ", "/");
      var param_string = '';
      if($('input[name=report_type]:checked', '#myForm').val()=="simple")
      {
        param_string += '/'+$("#report_date_range_simple option:selected").val() + '/' + input_type;
      }
      else
      {
        if(!input_type)
        {
          param_string += '/'+new_date_range;
        }
        else
        {
          param_string += '/'+new_date_range+ '/' + input_type;
        }
      }

      $.ajax({
        type : "GET",
        url: "<?php echo site_url('reports/export_'.$this->uri->segment(2)); ?>"+param_string+'/json',
        async: false,
        dataType: "json",
        success: function(data) {
        	$('#table-report').empty();
        	var header_string = '';
        	var data_string = '';
        	var summary_string = '';
          	if(data.status=="200"){
            	for(var i=0; i<data.header.length; i++)
            		header_string += '<th>'+data.header[i]+'</th>';
            	for(var row=0; row<data.data.length; row++){
            		data_string += '<tr>';
            		for(var cell=0; cell<data.data[row].length; cell++)
            			data_string += '<td>'+data.data[row][cell]+'</td>';
            		data_string += '</tr>';
            	}
            	summary_string += '<tr><td><strong>TOTAL</strong></td>';
            	$.each( data.summary, function( key, value ) {
				  	summary_string += '<td><strong>'+(key=="quantity_purchased" ? parseInt(value) : 'Rp '+currency_separator(parseInt(value), '.'))+'</strong></td>';
				});
            	summary_string += '</tr>';
            
            	$('#table-report').append('<tr>'+header_string+'</tr>'+data_string+summary_string);

            	$('#link-export').attr('href', data.export_excel);

            	$('#page_subtitle').empty();
            	$('#page_subtitle').append(data.subtitle);
          	}
          	else if(data.status=="301"){
				$('#table-report').append('<tr><td colspan="5">Data tidak ditemukan</td></tr>');
				$('#link-export').attr('href', '#');
          	}
        },
        error: function(e) {
        // Schedule the next request when the current one's complete,, in miliseconds
          alert('Error processing your request: '+e.responseText);
        }
      });
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
<?php 
} // end if not is excel export 
?>