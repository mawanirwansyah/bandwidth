<?php 
class Contact extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_contact');
		$this->load->model('m_footer');
	}

	function index(){
		$data['allFooter'] = $this->m_footer->get_all_footer();
		$this->load->view('v_header', $data);
		$this->load->view('v_contact');
        $this->load->view('v_footer', $data);
	}

	function kirim_pesan(){
		$nama=htmlspecialchars($this->input->post('nama',TRUE),ENT_QUOTES);
		$email=htmlspecialchars($this->input->post('email',TRUE),ENT_QUOTES);
		$pesan=htmlspecialchars(trim($this->input->post('pesan',TRUE)),ENT_QUOTES);
		$this->m_contact->kirim_pesan($nama,$email,$pesan);
		echo $this->session->set_flashdata('msg',"<div class='alert alert-info'>Terima kasih telah menghubungi kami.</div>");
		redirect('contact');
	}
}