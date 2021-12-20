<?php 
class Blog extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_tulisan');
		$this->load->model('m_footer');
		$this->load->model('m_pengunjung');
        $this->m_pengunjung->count_visitor();
	}

	function index(){
		$jum=$this->m_tulisan->berita();
        $page=$this->uri->segment(3);
        if(!$page):
            $offset = 0;
        else:
            $offset = $page;
        endif;
        $limit=6;
        $con['base_url'] = base_url(). 'blog/index/';
        $con['total_rows'] = $jum->num_rows();
        $con['per_page'] = $limit;
        $con['uri_segment'] = 3;
        $con['first_link'] = 'Awal';
        $con['last_link'] = 'Akhir';
        $con['next_link'] = 'Next >>';
        $con['prev_link'] = '<< Prev';
        $this->pagination->initialize($con);
        $x['page'] =$this->pagination->create_links();
		$x['data']=$this->m_tulisan->berita_perpage($offset,$limit);
		$x['allFooter'] = $this->m_footer->get_all_footer();
		$this->load->view('v_header', $x);
		$this->load->view('v_blog', $x);
		$this->load->view('v_footer',  $x);
	}

	function detail($slug){
		$data=$this->m_tulisan->get_berita_by_slug($slug);
		$q=$data->row_array();
		$kode=$q['tulisan_id'];
		$this->m_tulisan->count_views($kode);
		$x['rate']=$this->m_tulisan->cek_ip_rate($kode);
		$x['data']=$this->m_tulisan->get_berita_by_slug($slug);
		$x['populer']=$this->m_tulisan->get_tulisan_populer();
		$x['terbaru']=$this->m_tulisan->get_tulisan_terbaru();
		$x['kat']=$this->m_tulisan->get_kategori_for_blog();
		$x['allFooter'] = $this->m_footer->get_all_footer();
		$x['allFooter'] = $this->m_footer->get_all_footer();
		$this->load->view('v_header', $x);
		$this->load->view('v_blog_detail', $x);
		$this->load->view('v_footer',  $x);
	}

	function kategori(){
		$kategori_id=$this->uri->segment(3);
		$jum=$this->m_tulisan->get_tulisan_by_kategori($kategori_id);
        $page=$this->uri->segment(4);
        if(!$page):
            $offset = 0;
        else:
            $offset = $page;
        endif;
        $limit=5;
        $config['base_url'] = base_url() . 'blog/kategori/'.$kategori_id.'/';
        $config['total_rows'] = $jum->num_rows();
        $config['per_page'] = $limit;
        $config['uri_segment'] = 4;
        $config['first_link'] = 'Awal';
        $config['last_link'] = 'Akhir';
        $config['next_link'] = 'Next >>';
        $config['prev_link'] = '<< Prev';
        $this->pagination->initialize($config);
        $x['page'] =$this->pagination->create_links();
		$x['data']=$this->m_tulisan->get_tulisan_by_kategori_perpage($kategori_id,$offset,$limit);
		$this->load->view('v_blog',   $x);
	}

	function search(){
		$keyword=str_replace("'", "", $this->input->post('xfilter',TRUE));
		$x['data']=$this->m_tulisan->search_tulisan($keyword);
		$this->load->view('v_blog',   $x);
	}

	function good($slug){
		$data=$this->m_tulisan->get_berita_by_slug($slug);
		if($data->num_rows() > 0){
			$q=$data->row_array();
			$kode=$q['tulisan_id'];
			$this->m_tulisan->count_good($kode);
			redirect('artikel/'.$slug);
		}else{
			redirect('artikel/'.$slug);
		}
	}

	function like($slug){
		$data=$this->m_tulisan->get_berita_by_slug($slug);
		if($data->num_rows() > 0){
			$q=$data->row_array();
			$kode=$q['tulisan_id'];
			$this->m_tulisan->count_like($kode);
			redirect('artikel/'.$slug);
		}else{
			redirect('artikel/'.$slug);
		}
	}

	function love($slug){
		$data=$this->m_tulisan->get_berita_by_slug($slug);
		if($data->num_rows() > 0){
			$q=$data->row_array();
			$kode=$q['tulisan_id'];
			$this->m_tulisan->count_love($kode);
			redirect('artikel/'.$slug);
		}else{
			redirect('artikel/'.$slug);
		}
	}

	function genius($slug){
		$data=$this->m_tulisan->get_berita_by_slug($slug);
		if($data->num_rows() > 0){
			$q=$data->row_array();
			$kode=$q['tulisan_id'];
			$this->m_tulisan->count_genius($kode);
			redirect('artikel/'.$slug);
		}else{
			redirect('artikel/'.$slug);
		}
	}


}