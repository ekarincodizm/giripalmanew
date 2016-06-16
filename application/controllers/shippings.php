<?php
require_once ("secure_area.php");

class Shippings extends Secure_area
{
	function __construct()
	{
		parent::__construct('shippings');
	}

	function index($limit_from=0)
	{
		$data['controller_name'] = $this->get_controller_name();
		$shippings = $this->Shipping->get_all();
		
		$data['manage_table'] = get_shippings_manage_table($shippings, $this);
		$data['am'] = 'sales';
		$data['asm_1'] = 'shipping';
		$this->load->view('shippings/manage', $data);
	}

	

	function invoice_number_search()
	{
		$suggestions = $this->Shipping->get_search_invoice_number($this->input->get('term'), $this->input->get('limit'));
		$response = array();
		if($suggestions->num_rows() > 0)
			foreach($suggestions->result() as $suggest){
				$response[] = array(
					'id' => $suggest->sale_id,
					'value' => $suggest->invoice_number
					);
			}
		echo json_encode($response);
	}

	function get_row()
	{
		$ship_id = $this->input->post('row_id');
		$data_row = get_giftcard_data_row($this->Shipping->get_info($ship_id), $this);
		echo $data_row;
	}

	function view($ship_id=-1)
	{
		$ship_info = $this->Shipping->get_info($ship_id);
		$data['ship_info'] = $ship_info;
		$this->load->view("shippings/form",$data);
	}
	
	function save($ship_id=-1)
	{
		$shipping_data = array(
			'sale_id' => $this->input->post('sale_id', TRUE),
			'recipient_name'=>$this->input->post('recipient_name', TRUE),
			'recipient_address'=>$this->input->post('recipient_address', TRUE),
			'person_in_charge'=>$this->input->post('person_in_charge', TRUE),
			'shipping_date'=>$this->input->post('shipping_date', TRUE),
			'status'=>$this->input->post('status', TRUE),
			'user_entry_id'=>$this->session->userdata('person_id')
		);

		if( $this->Shipping->save( $shipping_data, $ship_id ) )
		{
			//New giftcard
			if($ship_id==-1)
			{
				echo json_encode(array('success'=>true, 'message'=>$this->lang->line('shippings_successful_adding').' '.
								$shipping_data['ship_id'], 'ship_id'=>$shipping_data['ship_id']));
				$ship_id = $shipping_data['ship_id'];
			}
			else //previous giftcard
			{
				echo json_encode(array('success'=>true, 'message'=>$this->lang->line('shippings_successful_updating').' '.
								$ship_id, 'ship_id'=>$ship_id));
			}
		}
		else//failure
		{
			echo json_encode(array('success'=>false,'message'=>$this->lang->line('shippings_error_adding_updating').' '.
							$shipping_data['ship_id'], 'ship_id'=>-1));
		}
	}

	function delete()
	{
		$shippings_to_delete=$this->input->post('ids');

		if($this->Shipping->delete_list($shippings_to_delete))
		{
			echo json_encode(array('success'=>true, 'message'=>$this->lang->line('shippings_successful_deleted').' '.
							count($shippings_to_delete).' '.$this->lang->line('shippings_one_or_multiple')));
		}
		else
		{
			echo json_encode(array('success'=>false, 'message'=>$this->lang->line('shippings_cannot_be_deleted')));
		}
	}
		
	/*
	get the width for the add/edit form
	*/
	function get_form_width()
	{
		return 360;
	}
}
?>
