<?php $this->load->view("partial/header"); ?>
<?php $this->load->view("partial/menu_left_sidebar"); ?>
<!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            <h3><?php echo $this->lang->line('common_list_of').' '.$this->lang->line('module_'.$controller_name); ?></h3>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="active"><?php echo $this->lang->line('module_config'); ?></a></li>
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
                <link rel="stylesheet" rev="stylesheet" href="<?php echo base_url();?>css/tabcontent.css" />
                <script src="<?php echo base_url();?>js/tabcontent.js" type="text/javascript" language="javascript" charset="UTF-8"></script>

                <div id="title_bar">
                    <div id="title" class="float_left"><?php echo $this->lang->line('module_config'); ?></div>
                </div>
                <ul class="tabs" data-persist="true">
                    <li><a href="#general_config">General</a></li>
                    <li><a href="#locale_config">Locale</a></li>
                    <li><a href="#barcode_config">Barcode</a></li>
                    <li><a href="#stock_config">Stock</a></li>
                    <li><a href="#receipt_config">Receipt</a></li>
                </ul>

                <div class="tabcontents">
                    <div id="general_config">
                        <?php $this->load->view("configs/general_config"); ?>
                    </div>
                    <div id="locale_config">
                        <?php $this->load->view("configs/locale_config"); ?>
                    </div>
                    <div id="barcode_config">
                        <?php $this->load->view("configs/barcode_config"); ?>
                    </div>
                    <div id="stock_config">
                        <?php $this->load->view("configs/stock_config"); ?>
                    </div>
                    <div id="receipt_config">
                        <?php $this->load->view("configs/receipt_config"); ?>
                    </div>
                </div>
                <div id="feedback_bar"></div>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->

<?php $this->load->view("partial/footer"); ?>