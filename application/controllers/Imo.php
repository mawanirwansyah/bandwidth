<?php
class Imo extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('m_score');
		$this->load->model('m_footer');
	}

	function index()
	{
		$data['allScore'] = $this->m_score->get_all_data_medan();
		$data['score'] = $this->db->get('tbl_score')->result_array();
		$data['allFooter'] = $this->m_footer->get_all_footer();
		$this->load->view('v_header', $data);
		$this->load->view('v_imo', $data);
		$this->load->view('v_footer', $data);
	}

	function getchart()
    {
        $data = $this->m_score->get_all_data_medan();
        echo json_encode($data);
    }
}