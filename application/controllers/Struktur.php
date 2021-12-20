<?php
class Struktur extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_struktur');
		$this->load->model('m_footer');
	}
	function index(){
		$data['allKategori'] = $this->m_struktur->get_all_kategori();
		$data['allStruktur'] = $this->m_struktur->get_all_struktur();
		$data['allFooter'] = $this->m_footer->get_all_footer();
        $this->load->view('v_header', $data);
        $this->load->view('v_struktur', $data);
        $this->load->view('v_footer', $data);
	}

}