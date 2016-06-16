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