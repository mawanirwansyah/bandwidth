<?php
class Jobdesk extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_jobdesk');
		$this->load->model('m_footer');
	}
	function index(){
		$data['allKategori']= $this->m_jobdesk->get_all_kategori();
		$data['allJobdesk']= $this->m_jobdesk->get_all_jobdesk();
		$data['allFooter'] = $this->m_footer->get_all_footer();
        $this->load->view('v_header', $data);
        $this->load->view('v_jobdesk', $data);
        $this->load->view('v_footer', $data);
	}

}