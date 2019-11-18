<?php
session_start();
$id_ruangan=$_POST["id_ruangan"]; //manangkap data yang di parsing
$nama_ruangan=$_POST["nama_ruangan"];

include "db_connection.php";
$rs=mysqli_fetch_array(mysqli_query($conn, "select * from ruangan where id_ruangan='$id_ruangan'"));
if ($rs)
{
	echo "<script>alert('Data Sudah Ada');</script>";
	include "i_ruangan.php";
}
else
{
	$query = "insert into ruangan(id_ruangan,nama_ruangan) values ('$id_ruangan','$nama_ruangan')";
	$hasil = mysqli_query($conn, $query);
}


if ($hasil)
{
	include "sruangan.php";
}
?>


