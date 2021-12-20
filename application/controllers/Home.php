<?php 
class Home extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_footer');
	}
	
	function index(){
		$data['allFooter'] = $this->m_footer->get_all_footer();
		$this->load->view('v_header', $data);
		$this->load->view('v_home');
		$this->load->view('v_footer', $data);
	}
}