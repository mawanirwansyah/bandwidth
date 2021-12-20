<?php
class Kategorijobdesk extends CI_Controller{
	function __construct(){
		parent::__construct();
		if(!isset($_SESSION['logged_in'])){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_jobdesk');
		$this->load->model('m_pengunjung');
		$this->load->library('upload');
	}


	function index(){
		$x['data']=$this->m_jobdesk->get_all_kategori();
		$x['visitor'] = $this->m_pengunjung->statistik_pengujung();
		$this->load->view('admin/v_subheader', $x);
		$this->load->view('admin/v_kategorijobdesk',$x);
	}

	function simpan_kategori(){
		$no=strip_tags($this->input->post('nomor'));
		$kategori=strip_tags($this->input->post('xkategori'));
		$filter_kategori=strip_tags($this->input->post('filter_kategori'));
		$this->m_jobdesk->simpan_kategori($no, $kategori, $filter_kategori);
		echo $this->session->set_flashdata('msg','success');
		redirect('admin/kategorijobdesk');
	}

	function update_kategori(){
		$kode=strip_tags($this->input->post('kode'));
		$no=strip_tags($this->input->post('nomor'));
		$kategori=strip_tags($this->input->post('xkategori'));
		$filter_kategori=strip_tags($this->input->post('filter_kategori'));
		$this->m_jobdesk->update_kategori($kode, $no, $kategori, $filter_kategori);
		echo $this->session->set_flashdata('msg','info');
		redirect('admin/kategorijobdesk');
	}
	function hapus_kategori(){
		$kode=strip_tags($this->input->post('kode'));
		$this->m_jobdesk->hapus_kategori($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/kategorijobdesk');
	}
	

}