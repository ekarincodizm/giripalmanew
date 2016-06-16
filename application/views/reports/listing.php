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
            <li><a href="active"><?php echo $this->lang->line('reports'); ?></a></li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">

          <!-- Default box -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title"><?php echo $this->lang->line('reports_reports'); ?></h3>
              <!-- <h3><?php echo $this->lang->line('reports_welcome_message'); ?></h3> -->
            </div>
            <div class="box-body">
            	<div class="row">
            		<div class="col-md-3">
            			<h3><?php echo $this->lang->line('reports_graphical_reports'); ?></h3>
						<ul style="padding:20px">
							<?php
							foreach($grants as $grant) 
							{
								if (!preg_match('/reports_(inventory|receivings)/', $grant['permission_id']))
								{
									show_report('graphical_summary',$grant['permission_id']);
								}
							}
							?>
						</ul>
            		</div>
            		<div class="col-md-3">
            			<h3><?php echo $this->lang->line('reports_summary_reports'); ?></h3>
						<ul style="padding:20px">
							<?php 
							foreach($grants as $grant) 
							{
								if (!preg_match('/reports_(inventory|receivings)/', $grant['permission_id']))
								{
									show_report('summary',$grant['permission_id']);
								}
							}
							?>
						</ul>
            		</div>
            		<div class="col-md-3">
            			<h3><?php echo $this->lang->line('reports_detailed_reports'); ?></h3>
						<ul style="padding:20px">
						<?php 			
							$person_id = $this->session->userdata('person_id');
							show_report_if_allowed('detailed', 'sales', $person_id);
							show_report_if_allowed('detailed', 'receivings', $person_id);
							show_report_if_allowed('specific', 'customer', $person_id, 'reports_customers');
							show_report_if_allowed('specific', 'discount', $person_id, 'reports_discounts');
							show_report_if_allowed('specific', 'employee', $person_id, 'reports_employees');
						?>
						</ul>
            		</div>
            		<div class="col-md-3">
            			<?php if ($this->Employee->has_grant('reports_inventory', $this->session->userdata('person_id'))) { ?>
						<h3><?php echo $this->lang->line('reports_inventory_reports'); ?></h3>
						<ul style="padding:20px">
						<?php 
							show_report('', 'reports_inventory_low');	
							show_report('', 'reports_inventory_summary');
						?>
						</ul>
						<?php } ?>
            		</div>
            	</div>
			<!-- <div id="page_title" style="margin-bottom:8px;"><?php echo $this->lang->line('reports_reports'); ?></div> -->
			<!-- <div id="welcome_message"><?php echo $this->lang->line('reports_welcome_message'); ?></div> -->
			<?php
			if(isset($error))
			{
				echo "<div class='error_message'>".$error."</div>";
			}
			?>
			</div><!-- /.box-body -->
          </div><!-- /.box -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

<?php $this->load->view("partial/footer"); ?>
