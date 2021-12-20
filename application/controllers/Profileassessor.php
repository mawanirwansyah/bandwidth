<?php
class Profileassessor extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_profileassessor');
		$this->load->model('m_footer');
	}
	function index(){
		$data['allProfileassessor'] = $this->m_profileassessor->get_all_profileassessor();
		$data['allFooter'] = $this->m_footer->get_all_footer();
        $this->load->view('v_header', $data);
        $this->load->view('v_profileassessor', $data);
        $this->load->view('v_footer', $data);
	}

}