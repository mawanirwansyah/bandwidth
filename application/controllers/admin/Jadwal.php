<?php
class Jadwal extends CI_Controller{
	function __construct(){
		parent::__construct();
		if(!isset($_SESSION['logged_in'])){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_jadwal');
        $this->load->model('m_pengunjung');
		$this->load->library('upload');
	}

	function index(){
		$x['data']=$this->m_jadwal->get_all_jadwal();        
        $x['visitor'] = $this->m_pengunjung->statistik_pengujung();
		$this->load->view('admin/v_subheader', $x);
		$this->load->view('admin/v_jadwal',$x);
	}

	function simpan_kategori(){
		$nama_assessor=strip_tags($this->input->post('nama_assessor'));
		$seksi_terkait=strip_tags($this->input->post('seksi_terkait'));
		$tanggal_mulai=strip_tags($this->input->post('tanggal_mulai'));
		$tanggal_selesai=strip_tags($this->input->post('tanggal_selesai'));
		$this->m_jadwal->simpan_kategori($nama_assessor, $seksi_terkait, $tanggal_mulai, $tanggal_selesai);
		echo $this->session->set_flashdata('msg','success');
		redirect('admin/jadwal');
	}

	function update_kategori(){
		$kode=strip_tags($this->input->post('kode'));
		$nama_assessor=strip_tags($this->input->post('nama_assessor'));
		$seksi_terkait=strip_tags($this->input->post('seksi_terkait'));
		$tanggal_mulai=strip_tags($this->input->post('tanggal_mulai'));
		$tanggal_selesai=strip_tags($this->input->post('tanggal_selesai'));
		$this->m_jadwal->update_kategori($kode, $nama_assessor, $seksi_terkait, $tanggal_mulai, $tanggal_selesai);
		echo $this->session->set_flashdata('msg','info');
		redirect('admin/jadwal');
	}
	
	function hapus_kategori(){
		$kode=strip_tags($this->input->post('kode'));
		$this->m_jadwal->hapus_kategori($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/jadwal');
	}
	

}