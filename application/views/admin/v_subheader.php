<!--Counter Inbox-->
<?php
$query = $this->db->query("SELECT * FROM tbl_inbox WHERE inbox_status='1'");
$jum_pesan = $query->num_rows();
$query1 = $this->db->query("SELECT * FROM tbl_komentar WHERE komentar_status='0'");
$jum_komentar = $query1->num_rows();
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SSM | ADMINISTRATOR</title>
  <!-- Tell the browser to be responsive to screen width -->
  <link rel="shorcut icon" type="text/css" href="<?php echo base_url() . 'assets/images/favicon.png' ?>">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/bootstrap/css/bootstrap.min.css' ?>">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/font-awesome/css/font-awesome.min.css' ?>">
  <!-- Ionicons -->
  <!-- jvectormap -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/plugins/jvectormap/jquery-jvectormap-1.2.2.css' ?>">
  <!-- daterange picker -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/plugins/daterangepicker/daterangepicker.css' ?>">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/plugins/datepicker/datepicker3.css' ?>">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/plugins/iCheck/all.css' ?>">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/plugins/colorpicker/bootstrap-colorpicker.min.css' ?>">
  <!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/plugins/timepicker/bootstrap-timepicker.min.css' ?>">
  <!-- Select2 -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/plugins/select2/select2.min.css' ?>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/dist/css/AdminLTE.min.css' ?>">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/dist/css/skins/_all-skins.min.css' ?>">
  <?php
  /* Mengambil query report*/
  foreach ($visitor as $result) {
    $bulan[] = $result->tgl; //ambil bulan
    $value[] = (float) $result->jumlah; //ambil nilai
  }
  /* end mengambil query*/

  ?>

</head>

<body class="hold-transition skin-blue sidebar-mini">
  <div class="wrapper">

    <!--Header-->
    <?php
    $this->load->view('admin/v_header');
    ?>

    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
      <!-- sidebar: style can be found in sidebar.less -->
      <section class="sidebar">

        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
          <li class="header">Menu Utama</li>
          <li>
            <a href="<?php echo base_url() . 'admin/dashboard' ?>">
              <i class="fa fa-home"></i> <span>Dashboard</span>
              <span class="pull-right-container">
                <small class="label pull-right"></small>
              </span>
            </a>
          </li>

          <li>
            <a href="#">
              <i class="fa fa-building"></i>
              <span>Struktur</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li><a href="<?php echo base_url() . 'admin/struktur' ?>"><i class="fa fa-building-o"></i> Struktur</a></li>
              <li><a href="<?php echo base_url() . 'admin/kategoristruktur' ?>"><i class="fa fa-list-ol"></i> Kategori Struktur</a></li>
            </ul>
          </li>

          <li>
            <a href="#">
              <i class="fa fa-building"></i>
              <span>Jobdesk</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li><a href="<?php echo base_url() . 'admin/jobdesk' ?>"><i class="fa fa-building-o"></i> Jobdesk </a></li>
              <li><a href="<?php echo base_url() . 'admin/kategorijobdesk' ?>"><i class="fa fa-list-ol"></i> Kategori Jobdesk</a></li>
            </ul>
          </li>

          <li>
            <a href="#">
              <i class="fa fa-building"></i>
              <span>5 R</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li><a href="<?php echo base_url() . 'admin/information5r' ?>"><i class="fa fa-building-o"></i> Informasi 5 R</a></li>
              <li><a href="<?php echo base_url() . 'admin/kategori5r' ?>"><i class="fa fa-list-ol"></i> Kategori 5 R</a></li>
            </ul>
          </li>

          <li>
            <a href="#">
              <i class="fa fa-building"></i>
              <span>3 Pilar</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li><a href="<?php echo base_url() . 'admin/information3p' ?>"><i class="fa fa-building-o"></i> Informasi 3 Pilar</a></li>
              <li><a href="<?php echo base_url() . 'admin/kategori3p' ?>"><i class="fa fa-list-ol"></i> Kategori 3 Pilar</a></li>
            </ul>
          </li>

          <li>
            <a href="<?php echo base_url() . 'admin/profileassessor' ?>">
              <i class="fa fa-users"></i> <span>Profile Assessor</span>
              <span class="pull-right-container">
                <small class="label pull-right"></small>
              </span>
            </a>
          </li>

          <li class="treeview">
            <a href="#">
              <i class="fa fa-newspaper-o"></i>
              <span>Post</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li><a href="<?php echo base_url() . 'admin/tulisan/add_tulisan' ?>"><i class="fa fa-thumb-tack"></i> Add New</a></li>
              <li><a href="<?php echo base_url() . 'admin/tulisan' ?>"><i class="fa fa-list"></i> Post Lists</a></li>
              <li><a href="<?php echo base_url() . 'admin/kategori' ?>"><i class="fa fa-wrench"></i> Kategori</a></li>
            </ul>
          </li>

          <li>
            <a href="<?php echo base_url() . 'admin/jadwal' ?>">
              <i class="fa fa-calendar"></i> <span>Jadwal</span>
              <span class="pull-right-container">
                <small class="label pull-right"></small>
              </span>
            </a>
          </li>

          <li>
            <a href="<?php echo base_url() . 'admin/score' ?>">
              <i class="fa fa-check"></i> <span>Score</span>
              <span class="pull-right-container">
                <small class="label pull-right"></small>
              </span>
            </a>
          </li>

          <li>
            <a href="<?php echo base_url() . 'admin/inbox' ?>">
              <i class="fa fa-envelope"></i> <span>Inbox</span>
              <span class="pull-right-container">
                <small class="label pull-right bg-green"><?php echo $jum_pesan; ?></small>
              </span>
            </a>
          </li>

          <li>
            <a href="<?php echo base_url() . 'admin/pengguna' ?>">
              <i class="fa fa-user"></i> <span>Pengguna</span>
              <span class="pull-right-container">
                <small class="label pull-right"></small>
              </span>
            </a>
          </li>

          <li>
            <a href="<?php echo base_url() . 'administrator/logout' ?>">
              <i class="fa fa-sign-out"></i> <span>Sign Out</span>
              <span class="pull-right-container">
                <small class="label pull-right"></small>
              </span>
            </a>
          </li>


        </ul>
      </section>
      <!-- /.sidebar -->
    </aside>