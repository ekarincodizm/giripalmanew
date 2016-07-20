<?php
	define('ADMIN_LTE_DIR', base_url('themes/adminlte/'));
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <base href="<?php echo base_url();?>" />
	<title><?php echo $this->config->item('company').' -- Point Of Sale' ?></title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="themes/adminlte/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="css/ionicons-2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="themes/adminlte/dist/css/AdminLTE.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="themes/adminlte/dist/css/skins/_all-skins.css" rel="stylesheet" type="text/css" />
    <!-- daterange picker -->
    <link href="themes/adminlte/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- Bootstrap Color Picker -->
    <link href="themes/adminlte/plugins/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet"/>
    <!-- Bootstrap time Picker -->
    <link href="themes/adminlte/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet"/>
    <!-- Datetimepicker -->
    <link rel="stylesheet" href="themes/adminlte/plugins/datetimepicker-eonasdan/bootstrap-datetimepicker.css" />
    <!-- DATA TABLES -->
    <link href="themes/adminlte/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- Typeahead autocomplete -->
    <!-- <link rel="stylesheet" href="<?php echo ADMIN_LTE_DIR; ?>/plugins/typeahead-autocomplete/typeahead.css"> -->
    <!-- jQuery UI 1.11.4 -->
    <link rel="stylesheet" href="css/jquery-ui.css" type="text/css">

    <link rel="stylesheet" type="text/css" href="css/ospos.css"/>
	  <link rel="stylesheet" type="text/css" href="css/ospos_print.css" media="print" />

    <!-- In my style -->
    <link rel="stylesheet" href="css/style.css" type="text/css">
	<?php //if ($this->input->cookie('debug') == "true" || $this->input->get("debug") == "true") : ?>
	<!-- start js template tags -->
	<!-- <script type="text/javascript" src="js/jquery-1.8.3.js" language="javascript"></script>-->
  <script src="<?php echo ADMIN_LTE_DIR;?>/plugins/jQuery/jQuery-2.1.3.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.11.4.js" language="javascript"></script>
	<script type="text/javascript" src="js/jquery-ui-timepicker-addon.js" language="javascript"></script>
	<script type="text/javascript" src="js/jquery.ajax_queue.js" language="javascript"></script>
	<!-- <script type="text/javascript" src="js/jquery.autocomplete.js" language="javascript"></script> -->
	<script type="text/javascript" src="js/jquery.bgiframe.min.js" language="javascript"></script>
	<script type="text/javascript" src="js/jquery.color.js" language="javascript"></script>
	<script type="text/javascript" src="js/jquery.form-3.51.js" language="javascript"></script>
	<script type="text/javascript" src="js/jquery.jkey-1.1.js" language="javascript"></script>
	<script type="text/javascript" src="js/jquery.metadata.js" language="javascript"></script>
	<!-- <script type="text/javascript" src="js/jquery.tablesorter-2.20.1.js" language="javascript"></script>
	<script type="text/javascript" src="js/jquery.tablesorter.staticrow.js" language="javascript"></script> -->
	<script type="text/javascript" src="js/jquery.validate-1.13.1-min.js" language="javascript"></script>
	<script type="text/javascript" src="js/common.js" language="javascript"></script>
	<script type="text/javascript" src="js/date.js" language="javascript"></script>
	<script type="text/javascript" src="js/imgpreview.full.jquery.js" language="javascript"></script>
	<script type="text/javascript" src="js/manage_tables.js" language="javascript"></script>
	<!-- <script type="text/javascript" src="js/nominatim.autocomplete.js" language="javascript"></script> -->
	<!-- <script type="text/javascript" src="js/swfobject.js" language="javascript"></script> -->
	<script type="text/javascript" src="js/tabcontent.js" language="javascript"></script>
	<script type="text/javascript" src="js/thickbox.js" language="javascript"></script>
    
  <!-- Bootstrap Datetimepicker -->
  <script type="text/javascript" src="themes/adminlte/plugins/datetimepicker-eonasdan/moment.js"></script>
  <script type="text/javascript" src="themes/adminlte/plugins/datetimepicker-eonasdan/bootstrap-datetimepicker.js"></script>

  <!-- typeahead autocomplete -->
  <!-- <script src="<?php echo ADMIN_LTE_DIR; ?>/plugins/typeahead-autocomplete/typeahead.js" type="text/javascript"></script> -->
	<!-- end js template tags -->
    <?php //else : ?>
    <!-- start minjs template tags -->
    <!-- <script type="text/javascript" src="dist/opensourcepos.js?rel=cb9e5b15ec" language="javascript"></script> -->
    <!-- end minjs template tags -->       
    <!--<?php //endif; ?>-->
	<script type="text/javascript">
		function logout(logout)
		{
			logout = logout && <?php echo $backup_allowed;?>;
			if (logout && confirm("<?php echo $this->lang->line('config_logout'); ?>"))
			{
				window.location = "<?php echo site_url('config/backup_db'); ?>";
			}
			else
			{
				window.location = "<?php echo site_url('home/logout'); ?>";
			}
		}
	</script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="skin-blue">
    <!-- Site wrapper -->
    <div class="wrapper">
      
      <header class="main-header">
        <a href="<?php echo base_url();?>" class="logo"><b><?php echo $this->config->item('company') ?> </b></a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <!-- <img src="../../dist/img/user2-160x160.jpg" class="user-image" alt="User Image"/> -->
                  <span class="hidden-xs"><?php echo $this->lang->line('common_welcome')." $user_info->first_name $user_info->last_name"; ?></span>
                </a>
              </li>
            </ul>
          </div>
        </nav>
      </header>