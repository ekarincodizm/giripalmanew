	<!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <!-- <div class="user-panel">
            <div class="pull-left image">
              <img src="<?php echo ADMIN_LTE_DIR;?>/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p><?php echo $this->session->userdata('fn');?></p>

              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div> -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
			       <li class="treeview">
              <a href="<?php echo base_url('index.php/home'); ?>">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
              </a>
            </li>
            <?php foreach($granted_menu as $root_menu) {
              // if(!empty($root_menu['submenu'])){
              ?>
            <li class="treeview <?php if(isset($am)) if($am==$root_menu['identifier']) echo "active"; ?>">
              <a href="<?php echo site_url($root_menu['href']);?>">
                <i class="<?php echo $root_menu['fa_icon'];?>"></i>
                  <span><?php echo $root_menu['name']; ?></span>
                  <?php 
                      if(!empty($root_menu['submenu']))
                          echo '<i class="fa fa-angle-left pull-right"></i>';
                   ?>
              </a>
              <?php if(!empty($root_menu['submenu'])) {?>
              <ul class="treeview-menu">
                  <?php foreach($root_menu['submenu'] as $sub_1) {?>
                  <li class="<?php if(isset($asm_1)) if($asm_1==$sub_1['identifier']) echo "active"; ?>">
                      <a href="<?php echo site_url($sub_1['href']); ?>">
                          <i class="fa fa-circle-o"></i> <?php echo $sub_1['name'] ?>
                          <?php 
                              if(!empty($sub_1['submenu']))
                                  echo '<i class="fa fa-angle-left pull-right"></i>';
                           ?>
                      </a>
                      <?php if(!empty($sub_1['submenu'])) {?>
                      <ul class="treeview-menu">
                          <?php foreach($sub_1['submenu'] as $sub_2) {?>
                          <li class="<?php if(isset($asm_2)) if($asm_2==$sub_2['identifier']) echo "active"; ?>">
                              <a href="<?php echo site_url($sub_2['href']) ?>">
                                  <i class="fa fa-circle-o"></i> <?php echo $sub_2['name'] ?>
                              </a>
                          </li>
                          <?php } ?>
                      </ul>
                      <?php } ?>
                  </li>
                  <?php } ?>
              </ul>
              <?php } ?>
            </li>
            <?php }  ?>
            
            <li><a href="javascript:logout(true);"><i class="fa fa-book"></i> <?php echo $this->lang->line("common_logout"); ?></a></li>
          </ul>
		
          <!-- /.sidebar menu -->
		  
        </section>
        <!-- /.sidebar -->
      </aside>