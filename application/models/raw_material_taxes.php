<?php
class Raw_material_taxes extends CI_Model
{
	/*
	Gets tax info for a particular item
	*/
	function get_info($item_id)
	{
		$this->db->from('raw_material_tax');
		$this->db->where('item_id',$item_id);
		//return an array of taxes for an item
		return $this->db->get()->result_array();
	}
	
	/*
	Inserts or updates an item's taxes
	*/
	function save(&$raw_material_tax, $item_id)
	{
		//Run these queries as a transaction, we want to make sure we do all or nothing
		$this->db->trans_start();

		$this->delete($item_id);
		$result = TRUE;
		foreach ($raw_material_tax as $row)
		{
			$row['item_id'] = $item_id;
			$result &= $this->db->insert('items_taxes',$row);		
		}
		
		$this->db->trans_complete();
		return $result;
	}
	
	function save_multiple(&$raw_material_tax, $item_ids)
	{
		foreach($item_ids as $item_id)
		{
			$this->save($raw_material_tax, $item_id);
		}
	}

	/*
	Deletes taxes given an item
	*/
	function delete($item_id)
	{
		return $this->db->delete('items_taxes', array('item_id' => $item_id)); 
	}
}
?>
