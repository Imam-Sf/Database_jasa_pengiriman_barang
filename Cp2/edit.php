<!DOCTYPE html>
<html>
<head>
	<title>Update</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<a href="index.php">Lihat Semua Data</a>

	<br/>
	<h3>Edit data</h3>

	<?php
    require_once 'koneksi.php';
    $d=$_GET['d'];
    $con=mysqli_query($koneksi, "SELECT*FROM tabel_barang where Id_barang='$d'");
    while ($data =mysqli_fetch_array($con)) {
    ?>
	<form action="update.php" method="post">
		<table>
			<tr>
				<td>Id_barang</td>
				<td>
					<input type="text" name="Id_barang" value="<?php echo $data['Id_barang'] ?>" readonly>
				</td>
			</tr>
			<tr>
				<td>Nama</td>
				<td><input type="text" name="Nama_barang" value="<?php echo $data['Nama_barang'] ?>"></td>
			</tr>
			<tr>
				<td>alamat</td>
				<td><input type="text" name="Kategori_barang" value="<?php echo $data['Kategori_barang'] ?>"></td>
			</tr>
      		<tr>
				<td></td>
				<td><input type="submit" value="Simpan"></td>
			</tr>
		</table>
	</form>
	<?php } ?>
	  
</body>
</html>