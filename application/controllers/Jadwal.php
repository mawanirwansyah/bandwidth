<?php
class Jadwal extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('m_jadwal');
        $this->load->model('m_footer');
    }

    function index()
    {
        $data['allJadwal'] = $this->m_jadwal->get_all_jadwal();
        $data['nama_assessor'] = $this->db->get('tbl_jadwal_assessment')->result_array();
        $data['allFooter'] = $this->m_footer->get_all_footer();
        $this->load->view('v_header', $data);
        $this->load->view('v_jadwal', $data);
        $this->load->view('v_footer', $data);
    }

    function getjadwal()
    {
        $data = $this->m_jadwal->get_all_data_jadwal();
        foreach ($data as $row) {
            $title = $row['nama_assessor']." → ".$row['seksi_terkait'];
            $start = $row['tanggal_mulai'];
            $end = $row['tanggal_selesai'];

            $jadwal[] = array(
                'title' => $title,
                'start' => $start,
                'end' => $end
            );
        }

        echo json_encode($jadwal);
    }
}