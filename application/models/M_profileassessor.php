<?php
class M_profileassessor extends CI_Model
{

	function get_all_data_informasi()
	{
		$hsl = $this->db->query("SELECT * FROM tbl_profileassessor ORDER BY no ASC");
		return $hsl;
	}

	function get_all_profileassessor()
	{
		$query = "SELECT * FROM tbl_profileassessor ORDER BY tbl_profileassessor.no ASC";
		return $this->db->query($query)->result_array();
	}

	//ADD Informasi 3 P//

	function simpan_informasi($no, $image, $nama_assessor, $jabatan_assessor)
	{
		$hsl = $this->db->query("INSERT INTO tbl_profileassessor (no,image,nama_assessor,jabatan_assessor) VALUES ('$no','$image','$nama_assessor','$jabatan_assessor')");
		return $hsl;
	}

	function simpan_informasi_tanpa_gambar($no, $nama_assessor, $jabatan_assessor)
	{
		$hsl = $this->db->query("INSERT INTO tbl_profileassessor (no,nama_assessor,jabatan_assessor) VALUES ('$no','$nama_assessor','$jabatan_assessor')");
		return $hsl;
	}

	//UPDATE Informasi Jobdesk//

	function update_informasi($kode, $no, $image, $nama_assessor, $jabatan_assessor)
	{
		$hsl = $this->db->query("UPDATE tbl_profileassessor SET no='$no',image='$image', nama_assessor='$nama_assessor', jabatan_assessor='$jabatan_assessor' WHERE id_profileassessor='$kode'");
		return $hsl;
	}

	function update_informasi_tanpa_gambar($kode, $no, $nama_assessor, $jabatan_assessor)
	{
		$hsl = $this->db->query("UPDATE tbl_profileassessor SET no='$no', nama_assessor='$nama_assessor', jabatan_assessor='$jabatan_assessor'  WHERE id_profileassessor='$kode'");
		return $hsl;
	}

	function get_gambar_informasi($kode)
	{
		$hsl = $this->db->query("SELECT * FROM tbl_profileassessor WHERE id_profileassessor='$kode'");
		return $hsl;
	}

	//END UPDATE INFORMASI Jobdesk//

	function hapus_informasi($kode)
	{
		$hsl = $this->db->query("DELETE FROM tbl_profileassessor WHERE id_profileassessor='$kode'");
		return $hsl;
	}
}
