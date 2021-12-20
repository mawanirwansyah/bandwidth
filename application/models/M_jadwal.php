<?php
class M_jadwal extends CI_Model{

	function get_all_jadwal(){
		$query = "SELECT * FROM tbl_jadwal_assessment ORDER BY tbl_jadwal_assessment.tanggal_mulai DESC";
        return $this->db->query($query)->result_array();
	} 

	function get_all_data_jadwal(){
		$query = "SELECT * FROM tbl_jadwal_assessment ORDER BY tbl_jadwal_assessment.id_jadwal_assessment ASC";
        return $this->db->query($query)->result_array();
	}
	
	function simpan_kategori($nama_assessor, $seksi_terkait, $tanggal_mulai, $tanggal_selesai){
		$hsl=$this->db->query("INSERT INTO tbl_jadwal_assessment(nama_assessor, seksi_terkait, tanggal_mulai, tanggal_selesai) VALUES('$nama_assessor', '$seksi_terkait', '$tanggal_mulai', '$tanggal_selesai' )");
		return $hsl;
	}

	function update_kategori($kode, $nama_assessor, $seksi_terkait, $tanggal_mulai, $tanggal_selesai){
		$hsl=$this->db->query("UPDATE tbl_jadwal_assessment SET nama_assessor='$nama_assessor', seksi_terkait='$seksi_terkait', tanggal_mulai='$tanggal_mulai', tanggal_selesai='$tanggal_selesai' WHERE id_jadwal_assessment='$kode'");
		return $hsl;
	}

	function hapus_kategori($kode){
		$hsl=$this->db->query("DELETE FROM tbl_jadwal_assessment WHERE id_jadwal_assessment='$kode'");
		return $hsl;
	}
	
}