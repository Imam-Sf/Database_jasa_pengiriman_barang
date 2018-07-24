<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Tabel Barang</title>
  </head>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <body>

    <a href="input.php"><button type="button" name="button" class="btn btn-primary">Tambah Data</button></a>

    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="table-responsive">
              <table border="1">
                <tr>
                  <td>Id_barang</td>
                  <td>Nama_barang</td>
                  <td>Kategori_barang</td>
                  <td colspan="2">Aksi</td>
                </tr>
                <?php
                  require_once 'koneksi.php';
                  $con=mysqli_query($koneksi, "SELECT*FROM tabel_barang");
                  while ($data =mysqli_fetch_array($con)) {
                  ?>
                  <tr>
                    <td><?php echo $data['Id_barang']?></td>
                    <td><?php echo $data['Nama_barang']?></td>
                    <td><?php echo $data['Kategori_barang']?></td>
                    <td><a href="delete.php?d=<?= $data['Id_barang'] ?>">Hapus</a>
                        || <a href="edit.php?d=<?= $data['Id_barang'] ?>">Edit</a></td>
                  </tr>
                <?php } ?>
              </table>
             </div>
        </div>
      </div>
    </div>

  </body>
</html>