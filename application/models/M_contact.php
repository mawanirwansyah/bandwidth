<?php
class M_contact extends CI_Model{

	function kirim_pesan($nama,$email,$pesan){
		$hsl=$this->db->query("INSERT INTO tbl_inbox(inbox_nama,inbox_email,inbox_pesan) VALUES ('$nama','$email','$pesan')");
		return $hsl;
	}

	function get_all_inbox(){
		$hsl=$this->db->query("SELECT * FROM tbl_inbox ORDER BY inbox_tanggal DESC");
		return $hsl;
	}

	function hapus_kontak($kode){
		$hsl=$this->db->query("DELETE FROM tbl_inbox WHERE inbox_id='$kode'");
		return $hsl;
	}

	function update_status_kontak(){
		$hsl=$this->db->query("UPDATE tbl_inbox SET inbox_status='0'");
		return $hsl;
	}
}