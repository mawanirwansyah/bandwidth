<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Import extends CI_Controller {

        public function index()
        {
            $data['title'] = 'Import Excel';
            $data['tbl_score'] = $this->db->get('tbl_score')->result();
            $this->load->view('admin/index', $data);
        }

        public function create()
        {
            $data['title'] = "Upload File Excel";
            $this->load->view('admin/create', $data);
        }

        public function excel()
        {
            if(isset($_FILES["file"]["name"])){
                  // upload
                $file_tmp  = $_FILES['file']['tmp_name'];
                $file_name = $_FILES['file']['name'];
                $file_size = $_FILES['file']['size'];
                $file_type = $_FILES['file']['type'];
                // move_uploaded_file($file_tmp,"uploads/".$file_name); // simpan filenya di folder uploads
                
                $object = PHPExcel_IOFactory::load($file_tmp);
        
                foreach($object->getWorksheetIterator() as $worksheet){
        
                    $highestRow = $worksheet->getHighestRow();
                    $highestColumn = $worksheet->getHighestColumn();
        
                    for($row=4; $row<=$highestRow; $row++){
        
                        $download = $worksheet->getCellByColumnAndRow(0, $row)->getValue();
                        $upload = $worksheet->getCellByColumnAndRow(1, $row)->getValue();
                        $tanggal = $worksheet->getCellByColumnAndRow(2, $row)->getValue();
                        $nama = $worksheet->getCellByColumnAndRow(3, $row)->getValue();

                        $data= array(
                            'download'          => $download,
                            'upload'          => $upload,
                            'tanggal'         =>$tanggal,
                            'nama'          =>$nama,
                        );
        
                    } 
        
                }

                $this->db->insert_batch('tbl_score', $data);        
                $message = array(
                    'message'=>'<div class="alert alert-success">Import file excel berhasil disimpan di database</div>',
                );                
                $this->session->set_flashdata($message);
                redirect('admin/import');
            }
            else
            {
                 $message = array(
                    'message'=>'<div class="alert alert-danger">Import file gagal, coba lagi</div>',
                );
                
                $this->session->set_flashdata($message);
                redirect('import');
            }
        }

    }

    /* End of file Import.php */
    /* Location: ./application/controllers/Import.php */