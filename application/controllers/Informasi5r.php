<?php
class Informasi5r extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_informasi5r');
		$this->load->model('m_footer');
	}
	function index(){
		$data['allKategori'] = $this->m_informasi5r->get_all_kategori();
		$data['allInformasi'] = $this->m_informasi5r->get_all_informasi();
		$data['allFooter'] = $this->m_footer->get_all_footer();
        $this->load->view('v_header', $data);
        $this->load->view('v_informasi5r', $data);
        $this->load->view('v_footer', $data);
	}

}