<?php
error_reporting(error_reporting() & ~E_NOTICE);
session_start();
include "../config/koneksi.php";
if (isset($_POST['submit'])) {


    $temp = explode(".", $_FILES["image"]["name"]);
    $newfilename = round(microtime(true)) . '.' . end($temp);
    $target = "../image/" . $newfilename;
    $sqlmisi = "UPDATE content SET content = '" . $_POST["lapislegit"] . "' WHERE type='isilapislegit'";

    if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
        $sql = "UPDATE content SET content = '" . $_POST["lapislegit"] . "', image='$newfilename' WHERE type='isilapislegit'";
    } else {
        $sql = "UPDATE content SET content = '" . $_POST["lapislegit"] . "', image= '" . $_POST["tempimage"] . "' WHERE type='isilapislegit'";
    }

    if ($conn->query($sql) === TRUE && $conn->query($sqlapisegit) === TRUE) {
        echo "<script>alert('Success!');window.location.href='lapislegit.php';
        </script>";
    } else echo "gagal";
    $conn->close();

}
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
</head>

<body class="container">
    <div id="content">
        <?php
        $ambildata = mysqli_query($conn, "SELECT * FROM content WHERE type='isilapislegit'");
        ?>
        <form method="POST" enctype="multipart/form-data">
            <div class="justify-content-center pl-3 pr-3 pt-5 pb-5">
                <h4 style="text-align: center;">Edit Lapis Legit</h4>
            </div>
            <?php
            if ($tampil = mysqli_fetch_array($ambildata)) { ?>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Lapis Legit</label>
                    <div class="col-sm-10">
                        <textarea type="textarea" class="form-control" name="lapislegit" style="width:500px; height:300px;"><?php echo $tampil['content'] ?></textarea>
                    </div>
                </div>
                <div>
                    <input type="file" name="image" value="<?php echo $tampil['image'] ?>">
                    <input value="<?php echo $tampil['image'] ?>" type="hidden" class="form-control" name="tempimage">
                    <p>
                        <?php

                        echo $tampil['image'] ?> </p>
                </div>
            <?php } ?>
            <button type="submit" class="btn btn-primary mb-2" name="submit">Submit</button>


        </form>
</body>

</html>