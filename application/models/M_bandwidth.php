<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class M_bandwidth extends CI_Model {
 
    function getData(){
        return $this->db->get('tbl_score')->result_array();
    }
}