<?php
class Production extends CI_Model {

/*
Fungsi yang dideklarasi :
  exists($paket_id)                                      Determines if a given paket_id is an paket
  get_all($rows=0, $limit_from=0)                        Returns all the item kits
  get_total_rows()
  get_info($paket_id)                                    Gets information about a particular paket
  get_multiple_info($paket_ids)                          Gets information about multiple paket
  save(&$paket_data, $paket_id=false)                    Inserts or updates a paket
  delete($paket_id)                                      Deletes one paket 
  delete_list($paket_ids)                                Deletes a list of paket
  get_search_suggestions($search, $limit=25)             Get search suggestions to find paket
  get_item_kit_search_suggestions($search, $limit=25)
  search($search, $rows=0, $limit_from=0)                Perform a search on items
  get_found_rows($search)
*/

/*  Determines if a given item_id is an item kit  */
function exists($paket_id)  {
  $this->db->from('paket_sofa');
  $this->db->where('paket_id', $paket_id);
    
  return ($this->db->get()->num_rows()==1);
}
  
/*  Returns all the item kits  */
function get_all($rows=0, $limit_from=0) {
  $this->db->from('paket_sofa');
  $this->db->order_by('name', 'asc');
  
  if ($rows > 0) $this->db->limit($rows, $limit_from);
  return $this->db->get();
}

function get_total_rows() {
  $this->db->from('paket_sofa');
  return $this->db->count_all_results();
}

/*  Gets information about a particular item kit  */
function get_info($paket_id) {
	$this->db->from('paket_sofa');
	$this->db->where('paket_id', $paket_id);
	$query = $this->db->get();

	if($query->num_rows()==1) return $query->row();
	else {
    //Get empty base parent object, as $paket_id is NOT an item kit
    $item_obj = new stdClass();
    
    //Get all the fields from items table
    $fields = $this->db->list_fields('paket_sofa');
    
    foreach ($fields as $field) $item_obj->$field = '';
    return $item_obj;
	}
}

/*  Gets information about multiple item kits  */
function get_multiple_info($paket_ids) {
  $this->db->from('paket_sofa');
  $this->db->where_in('paket_id', $paket_ids);
  $this->db->order_by('name', 'asc');
  
  return $this->db->get();
}

/*  Inserts or updates an item kit  */
function save(&$paket_data, $paket_id=false) {
  if (!$paket_id or !$this->exists($paket_id)) {
  	if($this->db->insert('paket_sofa', $paket_data)) {
      $paket_data['paket_id'] = $this->db->insert_id();
      return true;
  	} return false;
  }
  
  $this->db->where('paket_id', $paket_id);
  return $this->db->update('paket_sofa', $paket_data);
}

/*  Deletes one item kit  */
function delete($paket_id) {
  return $this->db->delete('paket_sofa', array('paket_id' => $id)); 	
}

/*  Deletes a list of item kits */
function delete_list($paket_ids) {
  $this->db->where_in('paket_id', $paket_ids);
  return $this->db->delete('paket_sofa');		
}

/*  Get search suggestions to find kits  */
function get_search_suggestions($search, $limit=25) {
  $suggestions = array();
  $this->db->from('paket_sofa');
  
  //KIT #
  if (stripos($search, 'KIT ') !== false) {
    $this->db->like('paket_id', str_ireplace('KIT ', '', $search));
    $this->db->order_by('paket_id', 'asc');
    $by_name = $this->db->get();
    
    foreach($by_name->result() as $row) $suggestions[] = 'KIT ' . $row->paket_id;			
  } else {
    $this->db->like('name', $search);
    $this->db->order_by('name', 'asc');
    $by_name = $this->db->get();
    
    foreach($by_name->result() as $row)	$suggestions[] = $row->name;
  }
  
  //only return $limit suggestions
  if(count($suggestions > $limit)) $suggestions = array_slice($suggestions, 0, $limit);
  return $suggestions;
}

function get_item_kit_search_suggestions($search, $limit=25) {
  $suggestions = array();
  $this->db->from('paket_sofa');
  $this->db->like('name', $search);
  $this->db->order_by('name', 'asc');
  $query = $this->db->get();
  
  return $query;
}

/*  Perform a search on items */
function search($search, $rows=0, $limit_from=0) {
  $this->db->from('paket_sofa');
  $this->db->like('name', $search);
  $this->db->or_like('description', $search);
  
  //KIT #
  if (stripos($search, 'KIT ') !== false) $this->db->or_like('paket_id', str_ireplace('KIT ', '', $search));
  $this->db->order_by('name', 'asc');
  
  if ($rows > 0) $this->db->limit($rows, $limit_from);
  return $this->db->get();	
}

function get_found_rows($search) {
  $this->db->from('paket_sofa');
  $this->db->like('name', $search);
  $this->db->or_like('description', $search);
  
  //KIT #
  if (stripos($search, 'KIT ') !== false) $this->db->or_like('paket_id', str_ireplace('KIT ', '', $search));
  return $this->db->get()->num_rows();
} }
?>