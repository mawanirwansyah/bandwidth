<?php
class M_score extends CI_Model
{

	function get_all_score()
	{
		$hsl = $this->db->query("SELECT * FROM tbl_score");
		return $hsl;
	}

	// function get_all_data_score(){
	// 	$query = "SELECT * FROM tbl_score WHERE nama='astinet_isp' ORDER BY tbl_score.tanggal ASC";
	//     return $this->db->query($query)->result_array();
	// }

	function get_all_data_score()
	{
		$query = "SELECT  ROUND(SUM(download)/COUNT(download), 1) AS total_download, ROUND(SUM(upload)/COUNT(upload), 1) 
		AS total_upload, DATE_FORMAT(tanggal, '%Y-%m-%d') AS tanggal FROM tbl_score WHERE nama='Astinet_ISP' GROUP BY tbl_score.tanggal ORDER BY tbl_score.tanggal ASC";
		return $this->db->query($query)->result_array();
	}

	function get_all_data_medan()
	{
		$query = "SELECT  ROUND(SUM(download)/COUNT(download), 1) AS total_download, ROUND(SUM(upload)/COUNT(upload), 1) 
		AS total_upload, DATE_FORMAT(tanggal, '%Y-%m-%d') AS tanggal FROM tbl_score WHERE nama='Astinet_IMO' GROUP BY tbl_score.tanggal ORDER BY tbl_score.tanggal ASC";
		return $this->db->query($query)->result_array();
	}

	function get_all_data_jakarta()
	{
		$query = "SELECT  ROUND(SUM(download)/COUNT(download), 1) AS total_download, ROUND(SUM(upload)/COUNT(upload), 1) 
		AS total_upload, DATE_FORMAT(tanggal, '%Y-%m-%d') AS tanggal FROM tbl_score WHERE nama='Astinet_IJO' GROUP BY tbl_score.tanggal ORDER BY tbl_score.tanggal ASC";
		return $this->db->query($query)->result_array();
	}

	function get_all_data_paritohan()
	{
		$query = "SELECT  ROUND(SUM(download)/COUNT(download), 1) AS total_download, ROUND(SUM(upload)/COUNT(upload), 1) 
		AS total_upload, DATE_FORMAT(tanggal, '%Y-%m-%d') AS tanggal FROM tbl_score WHERE nama='Astinet_IPP' GROUP BY tbl_score.tanggal ORDER BY tbl_score.tanggal ASC";
		return $this->db->query($query)->result_array();
	}

	function get_all_data_tg()
	{
		$query = "SELECT  ROUND(SUM(download)/COUNT(download), 1) AS total_download, ROUND(SUM(upload)/COUNT(upload), 1) 
		AS total_upload, DATE_FORMAT(tanggal, '%Y-%m-%d') AS tanggal FROM tbl_score WHERE nama='Astinet_TG' GROUP BY tbl_score.tanggal ORDER BY tbl_score.tanggal ASC";
		return $this->db->query($query)->result_array();
	}
	function get_all_data_iisp()
	{
		$query = "SELECT  ROUND(SUM(download)/COUNT(download), 1) AS total_download, ROUND(SUM(upload)/COUNT(upload), 1) 
		AS total_upload, DATE_FORMAT(tanggal, '%Y-%m-%d') AS tanggal FROM tbl_score WHERE nama='Indosat_ISP' GROUP BY tbl_score.tanggal ORDER BY tbl_score.tanggal ASC";
		return $this->db->query($query)->result_array();
	}

	function simpan_kategori($seksi, $score)
	{
		$hsl = $this->db->query("INSERT INTO tbl_score(seksi, score) VALUES('$seksi', '$score')");
		return $hsl;
	}

	function update_kategori($kode, $seksi, $score)
	{
		$hsl = $this->db->query("UPDATE tbl_score SET seksi='$seksi', score='$score' WHERE id_score='$kode'");
		return $hsl;
	}

	function hapus_kategori($kode)
	{
		$hsl = $this->db->query("DELETE FROM tbl_score WHERE id_score='$kode'");
		return $hsl;
	}

	function get_kategori_byid($id_score)
	{
		$hsl = $this->db->query("SELECT * FROM tbl_score WHERE id_score='$id_score'");
		return $hsl;
	}
}
