<?php
class Home extends CI_Controller{
	function __construct(){
		parent::__construct();
		if(!isset($_SESSION['logged_in'])){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_pengunjung');
        $this->load->model('m_home');
		$this->load->library('upload');
	}


	function index(){
        $kode=$this->session->userdata('idadmin');
		$x['user']=$this->m_home->get_gambar_informasi($kode);
		$x['data']=$this->m_home->get_all_data_informasi();
        $x['visitor'] = $this->m_pengunjung->statistik_pengujung();
		$this->load->view('admin/v_subheader', $x);
		$this->load->view('admin/v_home', $x);
	}

    function update_informasi(){
            
            $config['upload_path'] = './assets/img/home/'; //path folder
            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
            $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

            $this->upload->initialize($config);
            if(!empty($_FILES['filefoto']['name']))
            {
                if ($this->upload->do_upload('filefoto'))
                {
                        $gbr = $this->upload->data();
                        //Compress Image
                        $config['image_library']='gd2';
                        $config['source_image']='./assets/img/home/'.$gbr['file_name'];
                        $config['create_thumb']= FALSE;
                        $config['maintain_ratio']= FALSE;
                        $config['quality']= '100%';
                        $config['width']= '100%';
                        $config['height']= '100%';
                        $config['new_image']= './assets/images/home/'.$gbr['file_name'];
                        $this->load->library('image_lib', $config);
                        $this->image_lib->resize();
                        
                        $kode=$this->input->post('kode');
                        $image=$gbr['file_name'];
                        $judul=$this->input->post('judul');
                        $isi=$this->input->post('isi');
                        $link=$this->input->post('link');
                        $linky=$this->input->post('linky');
                        $this->m_home->update_informasi($kode, $image, $judul, $isi, $link, $linky);
                        echo $this->session->set_flashdata('msg','info');
                        redirect('admin/home');                    
                }else{
                    echo $this->session->set_flashdata('msg','warning');
                    redirect('admin/home');
                }
                
            }else{
                $kode=$this->input->post('kode');
                $judul=$this->input->post('judul');
                $isi=$this->input->post('isi');
                $link=$this->input->post('link');
                $linky=$this->input->post('linky');              
                $this->m_home->update_informasi_tanpa_gambar($kode, $judul, $isi, $link, $linky);
                echo $this->session->set_flashdata('msg','warning');
                redirect('admin/home');
                
            } 

    }

    function hapus_informasi(){
    $kode=$this->input->post('kode');
    $data=$this->m_home->get_gambar_informasi($kode);
    $q=$data->row_array();
    $p=$q['image'];
    $path=base_url().'assets/img/home/'.$p;
    delete_files($path);
    $this->m_home->hapus_informasi($kode);
    echo $this->session->set_flashdata('msg','success-hapus');
    redirect(base_url('admin/home'));
    }

}