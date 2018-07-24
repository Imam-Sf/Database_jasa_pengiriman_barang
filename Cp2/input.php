<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Tambah data</title>
  </head>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
  <body>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <form action="input.php" method="post">
            <div class="form-group">
              <input type="text" class="form-control" name="Nama_barang" placeholder="Nama_barang">
            </div>
            <div class="form-group">
              <input type="text" class="form-control" name="Kategori_barang" placeholder="Kategori_barang">
            </div>
            <div class="form-group">
              <input type="submit" name="submit" value="Simpan" class="btn btn-success">
            </div>
          </form>
        </div>
      </div>
    </div>
    <?php
  require_once 'koneksi.php';
  if (isset($_POST['submit'])) {
  $Nama_barang=$_POST['Nama_barang'];
  $Kategori_barang=$_POST['Kategori_barang'];
  
  if ($Nama_barang==null || $Kategori_barang==null) {
    echo "silahkan lengkapi data";
  }else {
    $con= mysqli_query($koneksi, "INSERT INTO tabel_barang (Nama_barang, Kategori_barang) values ('$Nama_barang', '$Kategori_barang')");
  }
    if ($con) {
      echo "data berhasil ditambahkan";
      header("refresh:1 ; index.php");
    }else{
      echo "salah";
    }
  }
 ?>
  </body>
</html>