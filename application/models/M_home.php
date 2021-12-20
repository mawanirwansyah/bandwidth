<?php
class M_home extends CI_Model{
	
	function get_all_data_informasi(){
		$hsl=$this->db->query("SELECT * FROM tbl_home ORDER BY id ASC");
		return $hsl;
	}

	function get_all_informasi(){
		$hsl = "SELECT * FROM tbl_home ORDER BY tbl_home.id ASC";
        return $this->db->query($hsl)->result_array();
	}

	//UPDATE Informasi 3 P//

	function update_informasi($kode, $image ,$judul ,$isi, $link, $linky){
		$hsl=$this->db->query("UPDATE tbl_home SET image='$image', judul='$judul', isi='$isi', link='$link', linky='$linky' WHERE id='$kode'");
		return $hsl;
	}

	function update_informasi_tanpa_gambar($kode ,$judul ,$isi, $link, $linky){
		$hsl=$this->db->query("UPDATE tbl_home SET judul='$judul', isi='$isi', link='$link', linky='$linky' WHERE id='$kode'");
		return $hsl;
	}

	function get_gambar_informasi($kode){
		$hsl=$this->db->query("SELECT * FROM tbl_home WHERE id='$kode'");
		return $hsl;
	}

	//END UPDATE INFORMASI 3 P//

	function hapus_informasi($kode){
		$hsl=$this->db->query("DELETE FROM tbl_home WHERE id='$kode'");
		return $hsl;
	}

}