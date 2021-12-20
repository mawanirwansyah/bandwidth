<?php
class Profileassessor extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        if (!isset($_SESSION['logged_in'])) {
            $url = base_url('administrator');
            redirect($url);
        };
        $this->load->model('m_profileassessor');
        $this->load->model('m_pengunjung');
        $this->load->library('upload');
    }


    function index()
    {
        $kode = $this->session->userdata('idadmin');
        $x['user'] = $this->m_profileassessor->get_gambar_informasi($kode);
        $x['data'] = $this->m_profileassessor->get_all_data_informasi();
        $x['visitor'] = $this->m_pengunjung->statistik_pengujung();
        $this->load->view('admin/v_subheader', $x);
        $this->load->view('admin/v_profileassessor', $x);
    }

    function simpan_information()
    {
        $config['upload_path'] = './assets/img/profileassessor/'; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

        $this->upload->initialize($config);
        if (!empty($_FILES['filefoto']['name'])) {
            if ($this->upload->do_upload('filefoto')) {
                $gbr = $this->upload->data();
                //Compress Image
                $config['image_library'] = 'gd2';
                $config['source_image'] = './assets/img/profileassessor/' . $gbr['file_name'];
                $config['create_thumb'] = FALSE;
                $config['maintain_ratio'] = FALSE;
                $config['quality'] = '100%';
                $config['width'] = '100%';
                $config['height'] = '100%';
                $config['new_image'] = './assets/img/profileassessor/' . $gbr['file_name'];
                $this->load->library('image_lib', $config);
                $this->image_lib->resize();

                $no = $this->input->post('nomor');
                $image = $gbr['file_name'];
                $nama_assessor = $this->input->post('nama_assessor');
                $jabatan_assessor = $this->input->post('jabatan_assessor');
                $this->m_profileassessor->simpan_informasi($no, $image, $nama_assessor, $jabatan_assessor);
                echo $this->session->set_flashdata('msg', 'success');
                redirect('admin/profileassessor');
            } else {
                echo $this->session->set_flashdata('msg', 'warning');
                redirect('admin/profileassessor');
            }
        } else {
            $no = $this->input->post('nomor');
            $nama_assessor = $this->input->post('nama_assessor');
            $jabatan_assessor = $this->input->post('jabatan_assessor');
            $this->m_profileassessor->simpan_informasi_tanpa_gambar($no, $nama_assessor, $jabatan_assessor);
            echo $this->session->set_flashdata('msg', 'success');
            redirect('admin/profileassessor');
        }
    }

    function update_informasi()
    {

        $config['upload_path'] = './assets/img/profileassessor/'; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

        $this->upload->initialize($config);
        if (!empty($_FILES['filefoto']['name'])) {
            if ($this->upload->do_upload('filefoto')) {
                $gbr = $this->upload->data();
                //Compress Image
                $config['image_library'] = 'gd2';
                $config['source_image'] = './assets/img/profileassessor/' . $gbr['file_name'];
                $config['create_thumb'] = FALSE;
                $config['maintain_ratio'] = FALSE;
                $config['quality'] = '100%';
                $config['width'] = '100%';
                $config['height'] = '100%';
                $config['new_image'] = './assets/img/profileassessor/' . $gbr['file_name'];
                $this->load->library('image_lib', $config);
                $this->image_lib->resize();


                $kode = $this->input->post('kode');
                $no = $this->input->post('nomor');
                $image = $gbr['file_name'];
                $nama_assessor = $this->input->post('nama_assessor');
                $jabatan_assessor = $this->input->post('jabatan_assessor');
                $this->m_profileassessor->update_informasi($kode, $no, $image, $nama_assessor, $jabatan_assessor);
                echo $this->session->set_flashdata('msg', 'info');
                redirect('admin/struktur');
            } else {
                echo $this->session->set_flashdata('msg', 'warning');
                redirect('admin/profileassessor');
            }
        } else {
            $kode = $this->input->post('kode');
            $no = $this->input->post('nomor');
            $nama_assessor = $this->input->post('nama_assessor');
            $jabatan_assessor = $this->input->post('jabatan_assessor');
            $this->m_profileassessor->update_informasi_tanpa_gambar($kode, $no, $nama_assessor, $jabatan_assessor);
            echo $this->session->set_flashdata('msg', 'warning');
            redirect('admin/profileassessor');
        }
    }

    function hapus_informasi()
    {
        $kode = $this->input->post('kode');
        $data = $this->m_profileassessor->get_gambar_informasi($kode);
        $q = $data->row_array();
        $p = $q['image'];
        $path = base_url() . 'assets/img/profileassessor/' . $p;
        delete_files($path);
        $this->m_profileassessor->hapus_informasi($kode);
        echo $this->session->set_flashdata('msg', 'success-hapus');
        redirect(base_url('admin/profileassessor'));
    }
}
