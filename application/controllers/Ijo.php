<?php
class Ijo extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('m_score');
		$this->load->model('m_footer');
	}

	function index()
	{
		$data['allScore'] = $this->m_score->get_all_data_jakarta();
		$data['score'] = $this->db->get('tbl_score')->result_array();
		$data['allFooter'] = $this->m_footer->get_all_footer();
		$this->load->view('v_header', $data);
		$this->load->view('v_ijo', $data);
		$this->load->view('v_footer', $data);
	}

	function getchart()
    {
        $data = $this->m_score->get_all_data_jakarta();
        echo json_encode($data);
    }
}