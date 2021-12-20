<?php
class Score extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if (!isset($_SESSION['logged_in'])) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('m_score');
		$this->load->model('m_pengunjung');
		$this->load->library('upload');
	}


	function index()
	{
		$x['data'] = $this->m_score->get_all_score();
		$x['visitor'] = $this->m_pengunjung->statistik_pengujung();
		$this->load->view('admin/v_subheader', $x);
		$this->load->view('admin/v_score', $x);
	}

	function simpan_kategori()
	{
		$seksi = strip_tags($this->input->post('seksi'));
		$score = strip_tags($this->input->post('score'));
		$score = str_replace(",", ".", $score);
		$score = str_replace(" ", ".", $score);
		$this->m_score->simpan_kategori($seksi, $score);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('admin/score');
	}

	function update_kategori()
	{
		$kode = strip_tags($this->input->post('kode'));
		$seksi = strip_tags($this->input->post('seksi'));
		$score = strip_tags($this->input->post('score'));
		$score = str_replace(",", ".", $score);
		$score = str_replace(" ", ".", $score);
		$this->m_score->update_kategori($kode, $seksi, $score);
		echo $this->session->set_flashdata('msg', 'info');
		redirect('admin/score');
	}

	function hapus_kategori()
	{
		$kode = strip_tags($this->input->post('kode'));
		$this->m_score->hapus_kategori($kode);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('admin/score');
	}
}
