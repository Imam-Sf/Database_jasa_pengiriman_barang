<?php
require_once "koneksi.php";
$Id_barang = $_POST['Id_barang'];
$Nama_barang = $_POST['Nama_barang'];
$Kategori_barang = $_POST['Kategori_barang'];
  $u=mysqli_query($koneksi, "UPDATE tabel_barang SET Nama_barang='$Nama_barang', Kategori_barang='$Kategori_barang' where Id_barang='$Id_barang'");
  if ($u) {
    echo "<script>alert('terima kasih, data berhasil di edit');window.location='index.php'</script>";
  }else {
    echo "<script>alert('maaf, data gagal diedit');window.location='index.php'</script>";
  }
 ?>