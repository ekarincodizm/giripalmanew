<?php $this->load->view("partial/header"); ?>
<?php $this->load->view("partial/menu_left_sidebar"); ?>
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            <h3><?php echo $this->lang->line('common_welcome'); ?></h3>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="active">Dashboard</a></li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">

          <!-- Default box -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Dashboard</h3>
            </div>
            <div class="box-body">
              <div class="row">
                <div class="col-lg-3 col-xs-6">
                  <!-- small box -->
                  <div class="small-box bg-yellow">
                    <div class="inner">
                      <h3><?php echo $count_customers ?></h3>
                      <p>Customer</p>
                    </div>
                    <div class="icon">
                      <i class="ion ion-person-add"></i>
                    </div>
                    <a href="<?php echo site_url('customers'); ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                  </div>
                </div>
                <div class="col-lg-3 col-xs-6">
                  <!-- small box -->
                  <div class="small-box bg-red">
                    <div class="inner">
                      <h3><?php echo $count_inventory_low ?></h3>
                      <p><?php echo $this->lang->line('reports_low_inventory') ?></p>
                    </div>
                    <div class="icon">
                      <i class="ion ion-alert-circled"></i>
                    </div>
                    <a href="<?php echo site_url('reports/inventory_low'); ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                  </div>
                </div><!-- ./col -->
                
                <?php
                // $cnt = 1;
                // foreach($allowed_modules->result() as $module)
                // {
                //   if($cnt==1 or $cnt==6) echo '<div class="col-md-6">';
                ?>
                  <!-- <div class="module_item">
                    <a href="<?php echo site_url("$module->module_id");?>">
                    <img src="<?php echo base_url().'images/menubar/'.$module->module_id.'.png';?>" border="0" alt="Menubar Image" /></a><br />
                    <a href="<?php echo site_url("$module->module_id");?>"><?php echo $this->lang->line("module_".$module->module_id) ?></a>
                     - <?php echo $this->lang->line('module_'.$module->module_id.'_desc');?>
                  </div> -->
                <?php
                  // if($cnt==5 or $cnt==10) echo '</div>';
                  // $cnt++;
                // }
                ?>  
              </div> <!-- ./row -->
              <div class="row">
                <div class="col-md-12">
                  <script src="js/Highcharts-4.2.3/highcharts.js"></script>
                  <script src="js/Highcharts-4.2.3/modules/exporting.js"></script>

                  <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

                  <div id="report_summary">
                  
                  </div>
                </div>
              </div>
            </div><!-- /.box-body -->
          </div><!-- /.box -->

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

<script type="text/javascript">
  // on windows open
  var init_param_string = '/'+'<?php echo $init_param_string; ?>';
  
  $.ajax({
    type : "GET",
    url: "<?php echo site_url('reports/graphical_summary_sales_graph'); ?>"+init_param_string,
    async: false,
    dataType: "json",
    success: function(data) {
      if(data.status=="200"){
        generate_line_chart(data);
            
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
      alert('Error processing your request: '+e.responseText);
    }
  });
  


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
</script>
<?php $this->load->view("partial/footer"); ?>