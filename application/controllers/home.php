<?php
require_once ("secure_area.php");

class Home extends Secure_area 
{
	function __construct()
	{
		parent::__construct();	
	}
	
	function index()
	{
		$customers = $this->Customer->get_all(100000, 0);
		$data['count_customers'] = $customers->num_rows();

		$this->load->model('reports/Inventory_low');
		$model = $this->Inventory_low;
		$report_data = $model->getData(array());
		$data['count_inventory_low'] = sizeof($report_data);

		// prepare data for sales graph
		$start_date = date('Y-m-d', mktime(0,0,0,date("m"),date("d")-30,date("Y"))); // initiate from 30 days ago
		$end_date = date('Y-m-d');
		$sale_type = 'all';
		// only for window open
		$data['init_param_string'] = $start_date.'/'.$end_date.'/'.$sale_type;

		$this->load->view("home", $data);
	}
	
	function logout()
	{
		$this->Employee->logout();
	}
}
?>