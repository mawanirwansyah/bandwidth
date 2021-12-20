<?php
class M_informasi5r extends CI_Model{

	function get_all_data_informasi(){
		$hsl=$this->db->query("SELECT * FROM tbl_informasi5r ORDER BY no ASC");
		return $hsl;
	}

	function get_all_kategori(){
		$hsl=$this->db->query("SELECT * FROM tbl_kategori5r");
		return $hsl;
	}

	function get_all_informasi(){
		$hsl = "SELECT * FROM tbl_informasi5r ORDER BY tbl_informasi5r.no ASC";
        return $this->db->query($hsl)->result_array();
	}

	//ADD Informasi 3 P//

	function simpan_informasi($no,$image,$title,$filter_kategori){
		$hsl=$this->db->query("INSERT INTO tbl_informasi5r (no,image,title,filter_kategori) VALUES ('$no','$image','$title','$filter_kategori')");
		return $hsl;
	}

	function simpan_informasi_tanpa_gambar($no,$title,$filter_kategori){
		$hsl=$this->db->query("INSERT INTO tbl_informasi5r (no,title,filter_kategori) VALUES ('$no','$title','$filter_kategori')");
		return $hsl;
	}

	//UPDATE Informasi 3 P//

	function update_informasi($kode,$no,$image,$title,$filter_kategori){
		$hsl=$this->db->query("UPDATE tbl_informasi5r SET no='$no',image='$image', title='$title', filter_kategori='$filter_kategori' WHERE id_informasi='$kode'");
		return $hsl;
	}

	function update_informasi_tanpa_gambar($kode, $no, $title, $filter_kategori){
		$hsl=$this->db->query("UPDATE tbl_informasi5r SET no='$no', title='$title', filter_kategori='$filter_kategori'  WHERE id_informasi='$kode'");
		return $hsl;
	}

	function get_gambar_informasi($kode){
		$hsl=$this->db->query("SELECT * FROM tbl_informasi5r WHERE id_informasi='$kode'");
		return $hsl;
	}

	//END UPDATE INFORMASI 3 P//

	function hapus_informasi($kode){
		$hsl=$this->db->query("DELETE FROM tbl_informasi5r WHERE id_informasi='$kode'");
		return $hsl;
	}

	//END HAPUS INFORMASI 3 P//

	function simpan_kategori($no, $kategori, $filter_kategori){
		$hsl=$this->db->query("INSERT INTO tbl_kategori5r(no, kategori, filter_kategori) VALUES('$no', '$kategori', '$filter_kategori')");
		return $hsl;
	}
	function update_kategori($kode,$no, $kategori, $filter_kategori){
		$hsl=$this->db->query("UPDATE tbl_kategori5r SET no='$no', kategori='$kategori', filter_kategori='$filter_kategori' WHERE id_kategori='$kode'");
		return $hsl;
	}
	function hapus_kategori($kode){
		$hsl=$this->db->query("DELETE FROM tbl_kategori5r WHERE id_kategori='$kode'");
		return $hsl;
	}
	
	function get_kategori_byid($kategori_id){
		$hsl=$this->db->query("SELECT * FROM tbl_kategori5r WHERE id_kategori='$id_kategori'");
		return $hsl;
	}

}