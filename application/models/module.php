<?php
class Module extends CI_Model 
{
    function __construct()
    {
        parent::__construct();
    }
	
	function get_module_name($module_id)
	{
		$query = $this->db->get_where('modules', array('module_id' => $module_id), 1);
		
		if ($query->num_rows() ==1)
		{
			$row = $query->row();
			return $this->lang->line($row->name_lang_key);
		}
		
		return $this->lang->line('error_unknown');
	}
	
	function get_module_desc($module_id)
	{
		$query = $this->db->get_where('modules', array('module_id' => $module_id), 1);
		if ($query->num_rows() ==1)
		{
			$row = $query->row();
			return $this->lang->line($row->desc_lang_key);
		}
	
		return $this->lang->line('error_unknown');	
	}
	
	function get_all_permissions()
	{
		$this->db->from('permissions');
		return $this->db->get();
	}
	
	function get_all_subpermissions()
	{
		$this->db->from('permissions');
		$this->db->join('modules', 'modules.module_id=permissions.module_id');
		// can't quote the parameters correctly when using different operators..
		$this->db->where($this->db->dbprefix('modules').'.module_id!=', 'permission_id', FALSE);
		return $this->db->get();
	}
	
	function get_all_modules()
	{
		$this->db->from('modules');
		$this->db->order_by("sort", "asc");
		return $this->db->get();		
	}
	
	function get_allowed_modules($person_id)
	{
		$this->db->from('modules');
		$this->db->join('permissions','permissions.permission_id=modules.module_id');
		$this->db->join('grants','permissions.permission_id=grants.permission_id');
		$this->db->where("person_id",$person_id);
		$this->db->order_by("sort_number", "asc");
		return $this->db->get();		
	}

	function get_root_module_menu(){
		$this->db->from('ospos_menu')->where('depth_level', '0')->order_by('sort_number');
		$query = $this->db->get();
		// print_r($this->db->last_query());

		return $query;
	}

	function get_granted_module_menu($person_id, $root_id){
		$query = $this->db->query('select * from ospos_grants g
				join (
				select  id, name, parent_id, depth_level, module_id, href, menu_identifier, sort_number, font_awesome_icon
				from    (select * from ospos_menu
				         order by parent_id, id) menu_sorted,
				        (select @pv := "'.$root_id.'") initialisation
				where   find_in_set(parent_id, @pv) > 0
				and     @pv := concat(@pv, ",", id) 
				order by sort_number)
				 as mm on g.permission_id = mm.module_id
				 where person_id = "'.$person_id.'" 
				 order by depth_level, sort_number');

		return $query;
	}
	
}
?>
