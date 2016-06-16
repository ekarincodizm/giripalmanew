<?php $this->load->view("partial/header"); ?>
<?php $this->load->view("partial/menu_left_sidebar"); ?>
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
              <!-- for graphic -->
              <div class="box box-success">
                <div class="box-header with-border">
                  <h3 class="box-title"><?php echo $title; ?></h3>
                </div>
                <div class="box-body">
                  <!-- <div id="page_title" style="margin-bottom:8px;"><?php echo $title ?></div>
                  <div id="page_subtitle" style="margin-bottom:8px;"><?php echo $subtitle ?></div> -->
                  <script src="js/Highcharts-4.2.3/highcharts.js"></script>
                  <script src="js/Highcharts-4.2.3/modules/exporting.js"></script>

                  <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
                  <!-- <div style="text-align: center;">
                    <script type="text/javascript">
                    // swfobject.embedSWF(
                    // "<?php echo base_url(); ?>open-flash-chart.swf", "chart",
                    // "800", "400", "9.0.0", "expressInstall.swf",
                    // {"data-file":"<?php echo $data_file; ?>"} );
                    </script>
                  </div> -->
                  <div id="chart_wrapper">
                    <div id="chart"></div>
                  </div>
                  <div id="report_summary">
                  <?php foreach($summary_data as $name=>$value) { ?>
                    <div class="summary_row"><?php echo $this->lang->line('reports_'.$name).': '.($name=="quantity_purchased" ? intval($value) : to_currency($value)); ?></div>
                  <?php }?>
                  </div>                  
                </div><!-- /.box-body -->
              </div><!-- /.box -->
              <!-- for graphic -->
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
                  <?php if($mode == 'sale') { ?>
                  <?php echo form_label($this->lang->line('reports_sale_type'), 'reports_sale_type_label', array('class'=>'required')); ?>
                  <div id='report_sale_type'>
                    <?php echo form_dropdown('sale_type',array('all' => $this->lang->line('reports_all'), 
                        'sales' => $this->lang->line('reports_sales'), 
                        'returns' => $this->lang->line('reports_returns')), 'all', 'id="input_type", class="form-control"'); ?>
                  </div>
                  <?php }
                    elseif($mode == 'receiving') { ?>
                  <?php echo form_label($this->lang->line('reports_receiving_type'), 'reports_receiving_type_label', array('class'=>'required')); ?>
                  <div id='report_receiving_type'>
                    <?php echo form_dropdown('receiving_type',array('all' => $this->lang->line('reports_all'),
                        'receiving' => $this->lang->line('reports_receivings'), 
                        'returns' => $this->lang->line('reports_returns'),
                        'requisitions' => $this->lang->line('reports_requisitions')), 'all', 'id="input_type", class="form-control"'); ?>
                  </div>
                  <?php }
                  if (!empty($stock_locations) && count($stock_locations) > 1) { ?>
                  <?php echo form_label($this->lang->line('reports_stock_location'), 'reports_stock_location_label', array('class'=>'required')); ?>
                  <div id='report_stock_location'>
                    <?php echo form_dropdown('stock_location',$stock_locations,'all','id="location_id", class="form-control"'); ?>
                  </div>
                  <?php } ?>
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

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
<script type="text/javascript">
  // on windows open
  var init_param_string = '/'+'<?php echo $init_param_string; ?>';
  visualize_data(init_param_string);

  $(document).ready(function()
  {
    // on windows open
    // var init_param_string = '<?php echo $init_param_string;?>';
    // visualize_data(init_param_string);

    $("#generate_report").click(function()
    {
      var input_type = $("#input_type").val();
      var location_id = $("#location_id").val();
      var location = window.location;
      var date_range = $("#daterangepicker").val();
      var new_date_range = date_range.replace(" - ", "/");
      var param_string = '';
      if ($('input[name=report_type]:checked', '#myForm').val()=="simple")
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
      if (location_id)
      {
        param_string += '/' + location_id;
      }

      visualize_data(param_string);
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

  function visualize_data(param_string){
    $.ajax({
        type : "GET",
        url: "<?php echo site_url('reports/'.$this->uri->segment(2).'_graph/'); ?>"+param_string,
        async: false,
        dataType: "json",
        success: function(data) {
          if(data.status=="200"){
            if(data.chart_type=="line")
              generate_line_chart(data);
            else if(data.chart_type=="bar")
              generate_bar_chart(data);
            else if(data.chart_type=="pie")
              generate_pie_chart(data);
            else if(data.chart_type=="column")
              generate_column_chart(data);

            $('#report_summary').empty();
            for(var i=0; i<data.summary.length; i++){
              $('#report_summary').append('<div class="summary_row">'+data.summary[i].name+' '+data.summary[i].value+'</div>');
            }
          }
          else if(data.status=="301"){
            var chart = $('#container').highcharts();
            var seriesLength = chart.series.length;
            for(var i = seriesLength -1; i > -1; i--) {
                chart.series[i].remove();
            }
            $('#report_summary').empty();
          }
        },
        error: function(e) {
        // Schedule the next request when the current one's complete,, in miliseconds
          alert('Error processing your request: '+e.responseText);
        }
      });
  }


  function generate_line_chart(graph_data){
    $('#container').highcharts({
      title: {
          text: graph_data.title,
          x: -20 //center
      },
      subtitle: {
          text: graph_data.subtitle,
          x: -20
      },
      xAxis: {
        categories: graph_data.x_axis
          // categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
          //     'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
      },
      yAxis: {
          title: {
              text: graph_data.yaxis_label
          },
          plotLines: [{
              value: 0,
              width: 1,
              color: '#808080'
          }]
      },
      // tooltip: {
      //     valueSuffix: '°C'
      // },
      legend: {
          layout: 'vertical',
          align: 'right',
          verticalAlign: 'middle',
          borderWidth: 0
      },
      series: [{
          name: graph_data.series_name,
          data: graph_data.series_value
          // data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
      }]
    });
  }


  // generating bar chart
  function generate_bar_chart(graph_data){
    $('#container').highcharts({
        chart: {
            type: 'bar'
        },
        title: {
            text: graph_data.title
        },
        subtitle: {
            text: graph_data.subtitle
        },
        xAxis: {
            categories: graph_data.x_axis,
            title: {
                text: null
            }
        },
        yAxis: {
            min: 0,
            title: {
                text: graph_data.yaxis_label,
                align: 'high'
            },
            labels: {
                overflow: 'justify'
            }
        },
        tooltip: {
            valueSuffix: ''
        },
        plotOptions: {
            bar: {
                dataLabels: {
                    enabled: true
                }
            }
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'top',
            x: -40,
            y: 80,
            floating: true,
            borderWidth: 1,
            backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
            shadow: true
        },
        credits: {
            enabled: false
        },
        series: [{
          name: graph_data.series_name,
          data: graph_data.series_value
            // name: 'Year 1800',
            // data: [107, 31, 635, 203, 2]
        }]
    });
  }

  // generating bar chart
  function generate_pie_chart(graph_data){
    $('#container').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: graph_data.title
        },
        subtitle: {
          text: graph_data.subtitle
        },
        tooltip: {
            pointFormat: '{point.name}: <b>{point.y}</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            name: 'Kategori',
            colorByPoint: true,
            data: graph_data.data
        }]
    });
  }

  function generate_column_chart(graph_data){
    $('#container').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: graph_data.title
        },
        subtitle: {
            text: graph_data.subtitle
        },
        xAxis: {
            categories: graph_data.x_axis,
            crosshair: true
        },
        yAxis: {
            min: 0,
            title: {
                text: graph_data.yaxis_label
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y}</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: 'Diskon',
            data: graph_data.series_value
        }]
    });
  }
</script>

<?php $this->load->view("partial/footer"); ?>