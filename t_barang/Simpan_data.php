<?php
	require 'KoneksiDB.php';

	if (isset($_POST['submit'])) {
		# code...
	$nama_brg		= $_POST['nama_barang'];
	$kategori_brg	= $_POST['kategori_barang'];


	$sql = "INSERT INTO tabel_barang (Nama_barang, Kategori_barang) VALUES ('$nama_brg', '$kategori_brg')";

	if (mysqli_query($conn, $sql)) {
    	echo "Berhasil";
	}else{
    	echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
}
?>