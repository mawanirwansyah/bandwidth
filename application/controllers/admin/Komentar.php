<?php
class Komentar extends CI_Controller{
	function __construct(){
		parent::__construct();
		if(!isset($_SESSION['logged_in'])){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_komentar');
		$this->load->model('m_pengunjung');
	}

	function index(){
		$x['data']=$this->m_komentar->get_komentar();
		$x['visitor'] = $this->m_pengunjung->statistik_pengujung();
		$this->load->view('admin/v_subheader', $x);
		$this->load->view('admin/v_komentar',$x);
	} 

	function reply(){
		$kode=$this->input->post('kode');
		$tulisan_id=$this->input->post('tulisan_id');
		$komentar=strip_tags(str_replace("'", "", htmlspecialchars($this->input->post('komentar',TRUE))));
		$this->m_komentar->reply_komentar($kode,$komentar,$tulisan_id);
		echo $this->session->set_flashdata('msg','success');
		redirect('admin/komentar');
	}

	function publish(){
		$kode=$this->input->post('kode');
		$this->m_komentar->publish_komentar($kode);
		echo $this->session->set_flashdata('msg','info');
		redirect('admin/komentar');
	}

	function hapus_komentar(){
		$kode=$this->input->post('kode');
		$this->m_komentar->hapus_komentar($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/komentar');
	}
} 