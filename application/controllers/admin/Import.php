<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Import extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        if (!isset($_SESSION['logged_in'])) {
            $url = base_url('administrator');
            redirect($url);
        };
        $this->load->model('m_bandwidth'); // load model m_index
        $this->load->library('Excel'); //load librari excel
    }

    public function index()
    {
        $data['data'] = $this->m_bandwidth->getData(); // ambil data dari M_Index
        $this->load->view('admin/v_subheader');
        $this->load->view('admin/index', $data);
    }

    public function importExcel()
    {
        $fileName = $_FILES['file']['name'];

        $config['upload_path'] = './assets/'; //path upload
        $config['file_name'] = $fileName;  // nama file
        $config['allowed_types'] = 'xls|xlsx|csv'; //tipe file yang diperbolehkan
        $config['max_size'] = 10000; // maksimal sizze

        $this->load->library('upload'); //meload librari upload
        $this->upload->initialize($config);

        if (!$this->upload->do_upload('file')) {
            echo $this->upload->display_errors();
            exit();
        }

        $inputFileName = './assets/' . $fileName;

        try {
            $inputFileType = PHPExcel_IOFactory::identify($inputFileName);
            $objReader = PHPExcel_IOFactory::createReader($inputFileType);
            $objPHPExcel = $objReader->load($inputFileName);
        } catch (Exception $e) {
            die('Error loading file "' . pathinfo($inputFileName, PATHINFO_BASENAME) . '": ' . $e->getMessage());
        }

        $sheet = $objPHPExcel->getSheet(0);
        $highestRow = $sheet->getHighestRow();
        $highestColumn = $sheet->getHighestColumn();

        $libur = tanggalMerah();
        for ($row = 2; $row <= $highestRow; $row++) {                  //  Read a row of data into an array                 
            $rowData = $sheet->rangeToArray(
                'A' . $row . ':' . $highestColumn . $row,
                NULL,
                TRUE,
                FALSE
            );

            // Sesuaikan key array dengan nama kolom di database   
            // $unix_date = ($rowData[0][2] - 25569) * 86400;
            $unixDate = DateTime::createFromFormat('m/d/Y H:i A', $rowData[0][2]);
            $findKbps = ' Kbps';
            $posDl = strpos($rowData[0][0], $findKbps);
            $posUl = strpos($rowData[0][1], $findKbps);
            if ($posDl === false) {
                $dl = $rowData[0][0];
            } else {
                // $dl = floatval(str_replace($findKbps, '', $rowData[0][0])) / 1000;
                $dl = 1;
            }
            if ($posUl === false) {
                $ul = $rowData[0][1];
            } else {
                // $ul = floatval(str_replace($findKbps, '', $rowData[0][1])) / 1000;
                $ul = 1;
            }
            $data = array(
                "download" => $dl,
                "upload" => $ul,
                // "tanggal" => gmdate('Y-m-d', $unix_date),
                "tanggal" => $unixDate->format('Y-m-d'),
                "nama" => $rowData[0][3]
            );
            $value = $unixDate->format('Ymd');
            $isLibur = true;

            if (isset($libur[$value])) {
                // echo "tanggal merah " . $array[$value]["deskripsi"];
                $isLibur = false;

                //check tanggal merah berdasarkan hari minggu
            } elseif (date("D", strtotime($value)) === "Sun") {
                // echo "tanggal merah hari minggu";
                $isLibur = false;

                //bukan tanggal merah
            }

            if ($isLibur) {
                if ($unixDate->format('H') >= '08' && $unixDate->format('H') <= '17') {
                    $insert = $this->db->insert("tbl_score", $data);
                }
            }
        }

        redirect('admin/import');
    }
}
