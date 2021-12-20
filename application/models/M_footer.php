<?php
class M_footer extends CI_Model{
    function get_all_footer(){
		$query = "SELECT * FROM tbl_footer ORDER BY tbl_footer.id_footer ASC";
        return $this->db->query($query)->result_array();
	}
}