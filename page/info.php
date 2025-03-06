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
    <title>UPTD Puskesmas Cilacap Utara I</title>
</head>

<body>
    <header>

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">UPTD Puskesmas Cilacap Utara I</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="home.php">Beranda <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Profile
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="visimisi.php">Visi dan Misi</a>
                            <a class="dropdown-item" href="struktur.php">Struktur Organisasi</a>
                            <a class="dropdown-item" href="kepsek.php">Maklumat Pelayanan</a>
                            <a class="dropdown-item" href="sejarah_sekolah.php">Daftar Kelurahan</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Program
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="desa_siaga.php">Desa Siaga Aktif</a>
                            <a class="dropdown-item" href="guru.php">Posyandu</a>
                            <a class="dropdown-item" href="guru.php">Pemeriksaan Kesehatan Anak Sekolah</a>
                            <a class="dropdown-item" href="guru.php">PHBS</a>
                            <a class="dropdown-item" href="guru.php">GERMAS</a>
                        </div>
                    </li>


                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            UKM
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="prestasi.php">UKM Essensial</a>
                            <ul>
                            <li><a href="#">Promosi Kesehatan</a></li>
                            <li><a href="#">Kesehatan Lingkungan</a></li>
                            <li><a href="#">Gizi Masyarakat</a></li>
                            <li><a href="#">Pencegahan & Penanggulangan Penyakit</a></li>
                            <li><a href="#">Kesehatan Keluarga</a></li>
                            </ul>
                            <a class="dropdown-item" href="ekskul.php">UKM Penegembangan</a>
                            <ul>
                            <li><a href="#">Upaya Kesehatan Kerja</a></li>
                            <li><a href="#">Upaya Kesehatan Tradisional</a></li>
                            <li><a href="#">Upaya Kesehatan Gigi Sekolah</a></li>
                            </ul>
                        </div>
                    </li>
                
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Inovasi
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="foto.php">Lapis Legit</a>
                            <a class="dropdown-item" href="video.php">Pinisi</a>
                            <a class="dropdown-item" href="video.php">Lamborghini</a>
                        </div>
                    </li>

                </ul>
                <form class="nav-item active">
                    <?php
                    if ($admin === "true") {
                        echo " <a class='nav-link' href='logout.php'>Logout<span class='sr-only'>(current)</span></a>";
                    } else {
                        echo " <a class='nav-link' href='login.html'>login Admin<span class='sr-only'>(current)</span></a>";
                    }
                    ?>
                </form>
            </div>
        </nav>

        <div class="atas">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner container">
                    <?php
                    $ambildata = mysqli_query($conn, "SELECT * FROM content WHERE type='isifoto'");
                    $i = "false";
                    while ($tampil = mysqli_fetch_array($ambildata)) {
                        if ($i === "false") echo "<div class='carousel-item active'>";
                        else echo "<div class='carousel-item'>";
                        $i = "true";
                        echo "
                        <img class='d-block w-100' src='../image/$tampil[image]' width='350' height='500' alt='$tampil[content]'>
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
            <marquee style="color:  blue"><b> Selamat Datang Di Website Promosi Kesehatan UPTD Puskesmas Cilacap Utara I</b>
            </marquee>
        </div>
    </header>

    <!-- Workingspace -->
    <main class="container">
        <h4 style="text-align: center;">Informasi</h4>
        <h4 style="text-align: center;">UPTD Puskesmas Cilacap Utara I</h4>
        <div class="edit" style="float: right;">
            <?php if ("true" === $admin) {
                $idinfo = $tampil["id"];
                echo
                "<button id='btn2'><a href='tambah_info.php'>Tambah Informasi</a></button>";
            }
            ?>
        </div>
        <table class="table table-bordered table-sm table-">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Informasi</th>
                    <th scope="col">Hari, Tanggal</th>
                    <th scope="col">Waktu</th>
                    <?php if ("true" === $admin) echo " <th scope='col'>Edit</th>"; ?>
                </tr>
            </thead>
            <tbody>
                <?php
                $no = 1;
                $ambildata = mysqli_query($conn, "SELECT * FROM info");
                while ($tampil = mysqli_fetch_array($ambildata)) {
                    echo "
                        <tr>
                            <td>$no</td>
                            <td>$tampil[informasi]</td>
                            <td>$tampil[tgl]</td>
                            <td>$tampil[jam]</td>
                           ";
                    if ("true" === $admin) {
                        $idinfo = $tampil["id"];
                        echo "<td> <div class='edit' style='float: right;'>";
                        echo "<button id='btn2'><a href='edit_info.php?idinfo=$idinfo'>Edit</a></button></div>";
                        echo "
                        <div class='edit' style='float: right;'>";
                        echo
                        "<button id='btn2'><a href='hapus_info.php?idinfo=$idinfo'>Hapus</a></button></div>";
                        echo " </td>";
                    }
                    echo "
                              
                        </tr>";
                    $no++;
                }
                ?>
            </tbody>
        </table>
    </main>

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
                            <a href="https://ppdbsd001tanjungselor.000webhostapp.com/">PPDB</a>
                        </li>
                        <li>
                            <a href="info.php">Info Sekolah</a>
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
                            <address>Jln. Kol. H. Soetadji No. 42 RT. 6 Tanjung Selor Hilir, Tanjung Selor, Kabupaten Bulungan, Kalimantan Utara, 77214</address>
                            </p>
                        </li>
                        <li>
                            <p><strong>Phone : </strong>0552 - 21375<br /></p>
                        </li>
                        <li>
                            <p><strong>Email:</strong><a href="mailto:sdnsatu_tanjungselor@yahoo.com">sdnsatu_tanjungselor@yahoo.com</a></p>
                        </li>
                    </ul>

                </div>
                <!-- Grid column -->

            </div>
            <!-- Grid row -->

        </div>
        <!-- Footer Links -->

        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">© 2020 Copyright: Rini Fajarwati & Kusuma Angreni
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
</body>

</html>