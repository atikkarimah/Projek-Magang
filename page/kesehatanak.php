<?php
error_reporting(error_reporting() & ~E_NOTICE);
session_start();
$admin = $_SESSION['auth'];
include "../config/koneksi.php";
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../css/global.css">
    <title>PROMKES UPTD Puskesmas Cilacap Utara I</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        .dropdown-submenu {
            position: relative;
        }

        .dropdown-submenu .dropdown-menu {
            top: 0;
            left: 100%;
            margin-top: -1px;
        }
    </style>
</head>

<body>
    <header>

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
                <img width="25%" src='../image/icon.png' style="box-shadow: none;">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active" style="margin: 0px 1.5em;">
                        <a class="nav-link" href="home.php">Beranda <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item dropdown" style="margin: 0px 1.5em;">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Profile
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="visimisi.php">Visi dan Misi</a>
                            <a class="dropdown-item" href="struktur.php">Struktur Organisasi</a>
                            <a class="dropdown-item" href="maklumat.php">Maklumat Pelayanan</a>
                            <a class="dropdown-item" href="kelurahan.php">Wilayah Kerja</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown" style="margin: 0px 1.5em;">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Program
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="desa_siaga.php">Desa Siaga Aktif</a>
                            <a class="dropdown-item" href="posyandu.php">Posyandu</a>
                            <a class="dropdown-item" href="kesehatanak.php">Pemeriksaan Kesehatan Anak Sekolah</a>
                            <a class="dropdown-item" href="phbs.php">PHBS</a>
                            <a class="dropdown-item" href="germas.php">GERMAS</a>
                        </div>
                    </li>


                    <li class="nav-item dropdown" style="margin: 0px 1.5em;">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            UKM
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="width: 15em !important;">
                                <div class="dropdown-submenu">
                                    <a class="dropdown-item" href="#">
                                        <div class="row">
                                            <div class="col-md-10">
                                                UKM Essensial
                                            </div>
                                            <div class="col-md-2">
                                                <i class='fas'>&#xf105;</i>
                                            </div>
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="promosi_kesehatan.php">Promosi Kesehatan</a></li>
                                        <li><a class="dropdown-item" href="kesehatan_lingkungan.php">Kesehatan Lingkungan</a></li>
                                        <li><a class="dropdown-item" href="gizi_masyarakat.php">Gizi Masyarakat</a></li>
                                        <li><a class="dropdown-item" href="pencegahan_penyakit.php">Pencegahan & Penanggulangan Penyakit</a></li>
                                        <li><a class="dropdown-item" href="kesehatan_keluarga.php">Kesehatan Keluarga</a></li>
                                    </ul>
                                </div>
                                <div class="dropdown-submenu">
                                    <a class="dropdown-item" href="ekskul.php">
                                        <div class="row">
                                            <div class="col-md-10">
                                                UKM Pengembangan
                                            </div>
                                            <div class="col-md-2">
                                                <i class='fas'>&#xf105;</i>
                                            </div>
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="upaya_keskerja.php">Upaya Kesehatan Kerja</a></li>
                                        <li><a class="dropdown-item" href="uk_tradisional.php">Upaya Kesehatan Tradisional</a></li>
                                        <li><a class="dropdown-item" href="uk_gigisekolah.php">Upaya Kesehatan Gigi Sekolah</a></li>
                                    </ul>
                                </div>
                            </div>
                    </li>
                
                    </li>

                    <li class="nav-item dropdown" style="margin: 0px 1.5em;">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Inovasi
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="lapislegit.php">Lapis Legit</a>
                            <a class="dropdown-item" href="pinisi.php">Pinisi</a>
                            <a class="dropdown-item" href="lamborghini.php">Lamborghini</a>
                            <a class="dropdown-item" href="sugesti.php">Sugesti</a>
                        </div>
                    </li>
                    
                </ul>
                <form class="nav-item active">
                    <?php
                    if ($admin === "true") {
                        echo " <a class='nav-link' href='logout.php'>Logout<span class='sr-only'>(current)</span></a>";
                    } else {
                        echo " <a class='nav-link btn btn-primary' style='border-radius: 50px;' href='login.html'>login Admin<span class='sr-only'>(current)</span></a>";
                    }
                    ?>
                </form>
            </div>
        </nav>

        <div class="atas" style="margin: 0px 1.5em;">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner container">
                    <?php
                    $ambildata = mysqli_query($conn, "SELECT * FROM content WHERE id='12'");
                    $i = "false";
                    while ($tampil = mysqli_fetch_array($ambildata)) {
                        if ($i === "false") echo "<div class='carousel-item active'>";
                        else echo "<div class='carousel-item'>";
                        $i = "true";
                        echo "
                        <img class='d-block w-100' src='../image/$tampil[image]' width='900' height='200' alt='$tampil[content]'>
                    </div>
                    ";
                    }
                    ?>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <div class="tulisan">
            <marquee style="color:  blue"><b>Selamat Datang di Website Promosi Kesehatan Puskesmas Cilacap Utara I</b>
            </marquee>
        </div>
    </header>

    <!-- Workingspace -->
    <div class="container-costum">
        <div class="justify-content-center pl-3 pr-3 pt-5 pb-5">
            <h4 style="text-align: center;">Pemeriksaan Kesehatan Anak Sekolah</h4>
            <h4 style="text-align: center;">UPTD Puskesmas Cilacap Utara I</h4>
            <?php
            include "../config/koneksi.php";
            $ambildata = mysqli_query($conn, "SELECT * FROM content WHERE id='32'");
            while ($tampil = mysqli_fetch_array($ambildata)) {
                echo "
                <img class='card-img-top' src='../image/$tampil[image]' width = '400px' height='550px' alt=''>
                <div class='card' style='text-align: center;>   
                    <h5 class='card-title'>$tampil[title]</h5>
                    <p style='text-align: justify;'>$tampil[content]</p>
                </div> ";
            ?>
            <?php } ?>
        </div>

        <main class="container">
        <div class="content row workingspace">
            <div class="col-6">
            <h4 style="text-align: center;">Penjaringan dan Pemeriksaaan Kesehatan</h4>
                <?php
                $ambildata = mysqli_query($conn, "SELECT * FROM content WHERE id='79'");
                while ($tampil = mysqli_fetch_array($ambildata)) {
                    echo "
                        <img src='../image/$tampil[image]' alt='workingspace' class='img-fluid'>
                     ";
                }
                ?>
            </div>
            <div class="col-6">
            <h4 style="text-align: center;">Penjaringan dan Pemeriksaaan Kesehatan</h4>
                <?php
                $ambildata = mysqli_query($conn, "SELECT * FROM content WHERE id='80'");
                while ($tampil = mysqli_fetch_array($ambildata)) {
                    echo "
                    <img src='../image/$tampil[image]' alt='workingspace' class='img-fluid'>
                     ";
                }
                ?>
                <?php if ("true" === $admin) {
                    $idedit = 'isikelurahan';
                    echo
                    "<button id='btn2'><a href='edit_sejarah.php?idkelurahan=$idkelurahan'>Edit</a></button>";
                }
                ?>
            </div>
        </div>           
    

    </div>
    <!-- Akhir Workingspace -->

    <!-- Footer -->
    <footer class="page-footer font-small blue pt-4">

        <!-- Footer Links -->
        <div class="container-fluid text-center text-md-left">

            <!-- Grid row -->
            <div class="row">

                <!-- Grid column -->
                <div class="col-md-5 mt-md-0 mt-3">

                    <!-- Content -->
                    <h5 class="text-uppercase">About Us</h5>
                    <?php
                    include "../config/koneksi.php";
                    $ambildata = mysqli_query($conn, "SELECT * FROM content WHERE title='About'");
                    while ($tampil = mysqli_fetch_array($ambildata)) {
                        echo "
                             <p style='text-align:justify'>$tampil[content]</p>
                        ";
                    }
                    ?>
                    <?php if ("true" === $admin) {
                        $idedit = 'footer_about';
                        echo
                        "<button id='btn2'><a href='edit_footer.php?idedit=$idedit'>Edit</a></button>";
                    } 
                    ?>
                </div>
                <!-- Grid column -->

                <hr class="clearfix w-100 d-md-none pb-3">

                <!-- Grid column -->
                <div class="col-md-3 mb-md-0 mb-3">

                    <!-- Links -->
                    <h5 class="text-uppercase">Useful Links</h5>

                    <ul class="list-unstyled">
                    <li>
                            <a href="profile.php" class="link-footer-custom">Profil Pengelola</a>
                        </li>
                        <li>
                            <a href="video.php" class="link-footer-custom">Video</a>
                        </li>
                        <li>
                            <a href="https://www.instagram.com/puskesmascilut1/" class="link-footer-custom">Instagram</a>
                        </li>
                        <li>
                            <a href="https://www.youtube.com/@uptdpuskesmascilacaputara1158" class="link-footer-custom">Youtube</a>
                        </li>
                    </ul>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-3 mb-md-0 mb-3">

                    <!-- Links -->
                    <h5 class="text-uppercase">Contact Us</h5>

                    <ul class="list-unstyled">
                        <li>
                            <p>
                            <address>Jl. Perintis Kemerdekaan No.01 Gumilir, Cilacap Utara</address>
                            </p>
                        </li>
                        <li>
                            <p><strong>Phone : </strong>0552 - 21375<br /></p>
                        </li>
                        <li>
                        <p>Email: puskesmascilacaputarasatu@gmail.com</a></p>
                        </li>
                    </ul>
                </div>
                <!-- Grid column -->

            </div>
            <!-- Grid row -->

        </div>
        <!-- Footer Links -->

        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">© 2020 Copyright: anrkrmh
            <a href="https://mdbootstrap.com/"> MDBootstrap.com</a>
        </div>
        <!-- Copyright -->

    </footer>
    <!-- Footer -->

    <!-- Akhir Footer -->

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
    </script>

<script>
        // Tambahkan script ini untuk menangani dropdown pada hover
        $(document).ready(function() {
            // Menangani hover untuk tampilkan submenu
            $('.dropdown-submenu').hover(function() {
                $(this).children('.dropdown-menu').toggle();
            });

            // Menangani klik pada submenu agar tetap terbuka setelah dipilih
            $('.dropdown-submenu a.dropdown-item').on('click', function(e) {
                e.stopPropagation();
            });
        });
    </script>
</body>

</html>