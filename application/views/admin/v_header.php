<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SSM | Information</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="shorcut icon" type="text/css" href="<?php echo base_url() . 'assets/images/favicon.png' ?>">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/bootstrap/css/bootstrap.min.css' ?>">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/font-awesome/css/font-awesome.min.css' ?>">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/plugins/datatables/dataTables.bootstrap.css' ?>">
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/plugins/daterangepicker/daterangepicker.css' ?>">
  <!-- Ionicons -->
  <!-- jvectormap -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/plugins/jvectormap/jquery-jvectormap-1.2.2.css' ?>">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/plugins/datepicker/datepicker3.css' ?>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/dist/css/AdminLTE.min.css' ?>">
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/plugins/daterangepicker/daterangepicker.css' ?>">
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/plugins/timepicker/bootstrap-timepicker.min.css' ?>">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/dist/css/skins/_all-skins.min.css' ?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/plugins/toast/jquery.toast.min.css' ?>" />
  <!--Counter Inbox-->
  <?php
  $query = $this->db->query("SELECT * FROM tbl_inbox WHERE inbox_status='1'");
  $jum_pesan = $query->num_rows();
  ?>
  <header class="main-header">

    <!-- Logo -->
    <a href="" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini">SSM</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg">SI-SSM</span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success"><?php echo $jum_pesan; ?></span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">Anda memiliki <?php echo $jum_pesan; ?> pesan</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <?php
                  $inbox = $this->db->query("SELECT tbl_inbox.*,DATE_FORMAT(inbox_tanggal,'%d %M %Y') AS tanggal FROM tbl_inbox WHERE inbox_status='1' ORDER BY inbox_id DESC LIMIT 5");
                  foreach ($inbox->result_array() as $in) :
                    $inbox_id = $in['inbox_id'];
                    $inbox_nama = $in['inbox_nama'];
                    $inbox_tgl = $in['tanggal'];
                    $inbox_pesan = $in['inbox_pesan'];
                  ?>
                    <li>
                      <!-- start message -->
                      <a href="<?php echo base_url() . 'admin/inbox' ?>">
                        <div class="pull-left">
                          <img src="<?php echo base_url() . 'assets/images/user_blank.png' ?>" class="img-circle" alt="User Image">
                        </div>
                        <h4>
                          <?php echo $inbox_nama; ?>
                          <small><i class="fa fa-clock-o"></i> <?php echo $inbox_tgl; ?></small>
                        </h4>
                        <p><?php echo $inbox_pesan; ?></p>
                      </a>
                    </li>
                    <!-- end message -->
                  <?php endforeach; ?>
                </ul>
              </li>
              <li class="footer"><a href="<?php echo base_url() . 'admin/inbox' ?>">Lihat Semua Pesan</a></li>
            </ul>
          </li>

          <?php
          $id_admin = $this->session->userdata('idadmin');
          $q = $this->db->query("SELECT * FROM tbl_pengguna WHERE pengguna_id='$id_admin'");
          $c = $q->row_array();
          ?>
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="<?php echo base_url() . 'assets/images/' . $c['pengguna_photo']; ?>" class="user-image" alt="">
              <span class="hidden-xs"><?php echo $c['pengguna_nama']; ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="<?php echo base_url() . 'assets/images/' . $c['pengguna_photo']; ?>" class="img-circle" alt="">

                <p>
                  <?php echo $c['pengguna_nama']; ?>
                  <?php if ($c['pengguna_level'] == '1') : ?>
                    <small>Administrator</small>
                  <?php else : ?>
                    <small>Author</small>
                  <?php endif; ?>
                </p>
              </li>
              <!-- Menu Body -->

              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-right">
                  <a href="<?php echo base_url() . 'administrator/logout' ?>" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="<?php echo base_url() . '' ?>" target="_blank" title="Lihat Website"><i class="fa fa-globe"></i></a>
          </li>
        </ul>
      </div>

    </nav>

  </header>
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