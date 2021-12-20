<?php
class Inbox extends CI_Controller{
	function __construct(){
		parent::__construct();
		if(!isset($_SESSION['logged_in'])){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_contact');
		$this->load->model('m_pengunjung');
	}

	function index(){
		$this->m_contact->update_status_kontak();
		$x['data']=$this->m_contact->get_all_inbox();
		$x['visitor'] = $this->m_pengunjung->statistik_pengujung();
		$this->load->view('admin/v_subheader', $x);
		$this->load->view('admin/v_inbox',$x);
	}

	function hapus_inbox(){
		$kode=$this->input->post('kode');
		$this->m_contact->hapus_kontak($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/inbox');
	}
}