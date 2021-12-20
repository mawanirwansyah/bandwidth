<?php
class Information5r extends CI_Controller{
	function __construct(){
		parent::__construct();
		if(!isset($_SESSION['logged_in'])){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_informasi5r');
        $this->load->model('m_pengunjung');
		$this->load->library('upload');
	}


	function index(){
        $kode=$this->session->userdata('idadmin');
		$x['user']=$this->m_informasi5r->get_gambar_informasi($kode);
		$x['data']=$this->m_informasi5r->get_all_data_informasi();
        $x['allKategori']= $this->m_informasi5r->get_all_kategori();
        $x['visitor'] = $this->m_pengunjung->statistik_pengujung();
		$this->load->view('admin/v_subheader', $x);
		$this->load->view('admin/v_informasi5r',$x);
	}

    function simpan_information(){
        $config['upload_path'] = './assets/img/informasi5r/'; //path folder
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
                    $config['source_image']='./assets/img/informasi5r/'.$gbr['file_name'];
                    $config['create_thumb']= FALSE;
                    $config['maintain_ratio']= FALSE;
                    $config['quality']= '100%';
                    $config['width']= '100%';
                    $config['height']= '100%';
                    $config['new_image']= './assets/img/informasi5r/'.$gbr['file_name'];
                    $this->load->library('image_lib', $config);
                    $this->image_lib->resize();

                    $no=$this->input->post('nomor');
                    $image=$gbr['file_name'];
                    $title=$this->input->post('title');
                    $filter_kategori=$this->input->post('filter_kategori');                     
                    $this->m_informasi5r->simpan_informasi($no, $image, $title, $filter_kategori);
                    echo $this->session->set_flashdata('msg','success');
                    redirect('admin/information5r');                                        
            }else{
                echo $this->session->set_flashdata('msg','warning');
                redirect('admin/information5r');
            }
             
        }else{
            $no=$this->input->post('nomor');
            $title=$this->input->post('title');
            $filter_kategori=$this->input->post('filter_kategori'); 
            $this->m_informasi5r->simpan_informasi_tanpa_gambar($no, $title, $filter_kategori);
            echo $this->session->set_flashdata('msg','success');
            redirect('admin/information5r');
            } 

    }

    function update_informasi(){
            
            $config['upload_path'] = './assets/img/informasi5r/'; //path folder
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
                        $config['source_image']='./assets/img/informasi5r/'.$gbr['file_name'];
                        $config['create_thumb']= FALSE;
                        $config['maintain_ratio']= FALSE;
                        $config['quality']= '100%';
                        $config['width']= '100%';
                        $config['height']= '100%';
                        $config['new_image']= './assets/images/informasi5r/'.$gbr['file_name'];
                        $this->load->library('image_lib', $config);
                        $this->image_lib->resize();

                        $image=$gbr['file_name'];
                        $kode=$this->input->post('kode');
                        $no=$this->input->post('nomor');
                        $title=$this->input->post('title');
                        $filter_kategori=$this->input->post('filter_kategori');
                        $this->m_informasi5r->update_informasi($kode,$no,$image,$title,$filter_kategori);
                        echo $this->session->set_flashdata('msg','info');
                        redirect('admin/information5r');                    
                }else{
                    echo $this->session->set_flashdata('msg','warning');
                    redirect('admin/information5r');
                }
                
            }else{
                $kode=$this->input->post('kode');
                $no=$this->input->post('nomor');
                $title=$this->input->post('title');
                $filter_kategori=$this->input->post('filter_kategori');                
                $this->m_informasi5r->update_informasi_tanpa_gambar($kode,$no,$title,$filter_kategori);
                echo $this->session->set_flashdata('msg','warning');
                redirect('admin/information5r');
                
            } 

    }

    function hapus_informasi(){
    $kode=$this->input->post('kode');
    $data=$this->m_informasi5r->get_gambar_informasi($kode);
    $q=$data->row_array();
    $p=$q['image'];
    $path=base_url().'assets/img/informasi5r/'.$p;
    delete_files($path);
    $this->m_informasi5r->hapus_informasi($kode);
    echo $this->session->set_flashdata('msg','success-hapus');
    redirect(base_url('admin/information5r'));
    }

}