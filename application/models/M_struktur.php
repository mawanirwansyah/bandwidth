<?php
class M_struktur extends CI_Model
{

	function get_all_data_informasi()
	{
		$hsl = $this->db->query("SELECT * FROM tbl_struktur ORDER BY no ASC");
		return $hsl;
	}

	function get_all_kategori()
	{
		$hsl = $this->db->query("SELECT * FROM tbl_kategoristruktur");
		return $hsl;
	}

	function get_all_struktur()
	{
		$query = "SELECT * FROM tbl_struktur ORDER BY tbl_struktur.no ASC";
		return $this->db->query($query)->result_array();
	}

	//ADD Informasi 3 P//

	function simpan_informasi($no, $image, $title, $filter_kategori)
	{
		$hsl = $this->db->query("INSERT INTO tbl_struktur (no,image,title,filter_kategori) VALUES ('$no','$image','$title','$filter_kategori')");
		return $hsl;
	}

	function simpan_informasi_tanpa_gambar($no, $title, $filter_kategori)
	{
		$hsl = $this->db->query("INSERT INTO tbl_struktur (no,title,filter_kategori) VALUES ('$no','$title','$filter_kategori')");
		return $hsl;
	}

	//UPDATE Informasi Jobdesk//

	function update_informasi($kode, $no, $image, $title, $filter_kategori)
	{
		$hsl = $this->db->query("UPDATE tbl_struktur SET no='$no',image='$image', title='$title', filter_kategori='$filter_kategori' WHERE id_struktur='$kode'");
		return $hsl;
	}

	function update_informasi_tanpa_gambar($kode, $no, $title, $filter_kategori)
	{
		$hsl = $this->db->query("UPDATE tbl_struktur SET no='$no', title='$title', filter_kategori='$filter_kategori'  WHERE id_struktur='$kode'");
		return $hsl;
	}

	function get_gambar_informasi($kode)
	{
		$hsl = $this->db->query("SELECT * FROM tbl_struktur WHERE id_struktur='$kode'");
		return $hsl;
	}

	//END UPDATE INFORMASI Jobdesk//

	function hapus_informasi($kode)
	{
		$hsl = $this->db->query("DELETE FROM tbl_struktur WHERE id_struktur='$kode'");
		return $hsl;
	}

	//END HAPUS INFORMASI Jobdesk//

	function simpan_kategori($no, $kategori, $filter_kategori)
	{
		$hsl = $this->db->query("INSERT INTO tbl_kategoristruktur(no, kategori, filter_kategori) VALUES('$no', '$kategori', '$filter_kategori')");
		return $hsl;
	}
	function update_kategori($kode, $no, $kategori, $filter_kategori)
	{
		$hsl = $this->db->query("UPDATE tbl_kategoristruktur SET no='$no', kategori='$kategori', filter_kategori='$filter_kategori' WHERE id_kategori='$kode'");
		return $hsl;
	}
	function hapus_kategori($kode)
	{
		$hsl = $this->db->query("DELETE FROM tbl_kategoristruktur WHERE id_kategori='$kode'");
		return $hsl;
	}
}
