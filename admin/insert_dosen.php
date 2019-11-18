<?php
session_start();
$id_dosen=$_POST["id_dosen"]; //menangkap data yang di parsing
$nama_dosen=$_POST["nama_dosen"]; //manangkap data yang di parsing

include "db_connection.php";

$rs=mysqli_fetch_array(mysqli_query($conn, "select * from dosen where id_dosen='$id_dosen'"));
if ($rs)
{
	echo "<script>alert('ID Dosen Sudah Ada');</script>";
	include "i_dosen.php";
}
else
{
	$query = "insert into dosen(id_dosen,nama_dosen) values ('$id_dosen','$nama_dosen')";
	$hasil = mysqli_query($conn, $query);
}


if ($hasil)
{
	include "sdosen.php";
}
?>
