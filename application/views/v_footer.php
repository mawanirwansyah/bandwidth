<!-- ======= Footer ======= -->
<footer id="footer">
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
  ?>
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 footer-contact">
                    <h3><?= $namasingkatan; ?><span>.</span></h3>
                    <p>
                        <?= $alamat; ?><br>
                        <?= $negara; ?><br>
                        <?= $pobox; ?><br>
                        <strong>Kode Pos:</strong> <?= $kodepos; ?> <br>
                        <strong>Phone :</strong> <?= $telepon; ?><br>
                        <strong>Email :</strong> <?= $email; ?><br>
                    </p>
                </div>

                <div class="col-lg-3 col-md-6 footer-links">
                    <h4>Useful Links</h4>
                    <ul>
                        <li><i class="bx bx-chevron-right"></i> <a href="<?php echo base_url('') ?>">Home</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="<?php echo base_url('struktur') ?>">Organisasi
                                Chart</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a
                                href="<?php echo base_url('informasi5r') ?>">Informasi 5R</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a
                                href="<?php echo base_url('informasi3p') ?>">Informasi 3 Pilar</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="<?php echo base_url('contact') ?>">Contact</a>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-3 col-md-6 footer-links">
                    <h4>Our Social Networks</h4>
                    <p>Silahkan mengikuti aktivitas kami dari media sosial dibawah ini </p>
                    <div class="social-links mt-3">
                        <a href="<?= $twitter; ?>" class="twitter" target="_blank"><i class="bx bxl-twitter"></i></a>
                        <a href="<?= $facebook; ?>" class="facebook" target="_blank"><i class="bx bxl-facebook"></i></a>
                        <a href="<?= $instagram; ?>" class="instagram" target="_blank"><i
                                class="bx bxl-instagram"></i></a>
                        <a href="<?= $youtube; ?>" class="youtube" target="_blank"><i class="bx bxl-youtube"></i></a>
                        <a href="<?= $linkedin; ?>" class="linkedin" target="_blank"><i class="bx bxl-linkedin"></i></a>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="container py-4">
        <div class="copyright">
            &copy; Copyright <strong><span><?= $namapenuh; ?></span></strong>. All Rights Reserved
        </div>
    </div>
    <?php endforeach; ?>
</footer><!-- End Footer -->

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="<?php  echo assets_url().'theme/vendor/aos/aos.js'?>"></script>
<script src="<?php  echo assets_url().'theme/vendor/bootstrap/js/bootstrap.bundle.min.js'?>"></script>
<script src="<?php  echo assets_url().'theme/vendor/glightbox/js/glightbox.min.js'?>"></script>
<script src="<?php  echo assets_url().'theme/vendor/isotope-layout/isotope.pkgd.min.js'?>"></script>
<script src="<?php  echo assets_url().'theme/vendor/php-email-form/validate.js'?>"></script>
<script src="<?php  echo assets_url().'theme/vendor/purecounter/purecounter.js'?>"></script>
<script src="<?php  echo assets_url().'theme/vendor/swiper/swiper-bundle.min.js'?>"></script>
<script src="<?php  echo assets_url().'theme/vendor/waypoints/noframework.waypoints.js'?>"></script>
<script src="<?php  echo assets_url().'theme/js/jquery.min.js'?>"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>

<!-- Template Main JS File -->
<script src="<?php  echo assets_url().'theme/js/main.js'?>"></script>