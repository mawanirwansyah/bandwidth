	<!DOCTYPE html>
	<html lang="en">

	<head>
	    <meta charset="utf-8">
	    <meta content="width=device-width, initial-scale=1.0" name="viewport">

	    <title>Inalum Information SSM </title>
	    <meta content="" name="description">
	    <meta content="" name="keywords">

	    <!-- Favicons -->
	    <link href="theme/img/favicon.png" rel="icon">
	    <link href="theme/img/apple-touch-icon.png" rel="apple-touch-icon">

	    <!-- Google Fonts -->
	    <link
		href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
		rel="stylesheet">

	    <!-- Vendor CSS Files -->
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	    integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	    <link href="<?php  echo assets_url().'theme/vendor/aos/aos.css'?>" rel="stylesheet">
	    <link href="<?php  echo assets_url().'theme/vendor/bootstrap/css/bootstrap.min.css'?>" rel="stylesheet">
	    <link href="<?php  echo assets_url().'theme/vendor/bootstrap-icons/bootstrap-icons.css'?>" rel="stylesheet">
	    <link href="<?php  echo assets_url().'theme/vendor/boxicons/css/boxicons.min.css'?>" rel="stylesheet">
	    <link href="<?php  echo assets_url().'theme/vendor/glightbox/css/glightbox.min.css'?>" rel="stylesheet">
	    <link href="<?php  echo assets_url().'theme/vendor/swiper/swiper-bundle.min.css'?>" rel="stylesheet">
	    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="<?php echo assets_url().'assets/font-awesome/css/font-awesome.min.css'?>">
	
	    <!-- Template Main CSS File -->
	    <link href="<?php  echo assets_url().'theme/css/style.css'?>" rel="stylesheet">

	    <!-- fullcalendar css  -->
	    <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.css' rel='stylesheet' />
	    <script src="<?php  echo assets_url().'theme/js/jquery.min.js'?>"></script>
	</head>

	<body>

	    <!-- ======= Top Bar ======= -->
	    <section id="topbar" class="d-flex align-items-center">
	        <?php foreach ($allFooter as $f) :
        $namasingkatan = $f['namasingkatan'];
        $alamat = $f['alamat'];
        $negara = $f['negara'];
        $pobox = $f['pobox'];
        $kodepos = $f['kodepos'];
        $telepon = $f['telepon'];
        $email = $f['email'];
        $twitter = $f['twitter'];
        $facebook = $f['facebook'];
        $instagram = $f['instagram'];
        $youtube = $f['youtube'];
        $linkedin = $f['linkedin'];
        $namapenuh = $f['namapenuh'];
        $namaaplikasi = $f['nama_aplikasi'];
      ?>
	        <div class="container d-flex justify-content-center justify-content-md-between">
	            <div class="contact-info d-flex align-items-center">
	                <i class="bi bi-envelope d-flex align-items-center"><a href="mailto:<?= $email; ?>"><?= $email; ?></a></i>
	                <i class="bi bi-telephone d-flex align-items-center ms-4"><span><?= $telepon; ?></span></i>
	            </div>
	            <div class="social-links d-none d-md-flex align-items-center">
	                <a href="<?= $twitter; ?>" class="twitter" target="_blank"><i class="bi bi-twitter"></i></a>
	                <a href="<?= $facebook; ?>" class="facebook" target="_blank"><i class="bi bi-facebook"></i></a>
	                <a href="<?= $instagram; ?>" class="instagram" target="_blank"><i class="bi bi-instagram"></i></a>
	                <a href="<?= $youtube; ?>" class="youtube" target="_blank"><i class="bi bi-youtube"></i></i></a>
	                <a href="<?= $linkedin; ?>" class="linkedin" target="_blank"><i class="bi bi-linkedin"></i></i></a>
					<a href="<?php echo base_url('administrator'); ?>" class="administrator" target="_blank"><i class="bi bi-lock"></i></i></a>
	            </div>
	        </div>
	    </section>

	    <!-- ======= Header ======= -->
	    <header id="header" class="d-flex align-items-center">
	        <div class="container d-flex align-items-center justify-content-between">

	            <h1 class="logo"><a href="<?php echo base_url('') ?>"><?= $namaaplikasi; ?><span>.</span></a></h1>
	            <?php endforeach; ?>
	            <!-- Uncomment below if you prefer to use an image logo -->
	            <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt=""></a>-->

	            <nav id="navbar" class="navbar">
	                <ul>
	                    <li><a href="<?php echo base_url('home') ?>">Home</a></li>
	                    <li class="dropdown"><a href="#"><span>Grafik Bandwidth</span><i class="bi bi-chevron-down"></i></a>
	                        <ul>
	                            <li><a href="<?php echo base_url('score') ?>">Bandwidth Astinet ISP</a></li>
								<li><a href="<?php echo base_url('iisp') ?>">Bandwidth Indosat ISP</a></li>
								<li><a href="<?php echo base_url('ijo') ?>">Bandwidth Astinet IJO</a></li>
	                            <li><a href="<?php echo base_url('ipp') ?>">Bandwidth Astinet IPP</a></li>								
								<li><a href="<?php echo base_url('imo') ?>">Bandwidth Astinet IMO</a></li>	
								<li><a href="<?php echo base_url('tg') ?>">Bandwidth Astinet TG</a></li>
	                        </ul>
	                    </li>
	                    <li><a href="<?php echo base_url('contact') ?>">Contact</a></li>
	                </ul>
	                <i class="bi bi-list mobile-nav-toggle"></i>
	            </nav><!-- .navbar -->

	        </div>
	    </header>
<!-- End Header -->