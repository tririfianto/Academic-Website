<?php
session_start();
$nim_mhs=$_POST["nim_mhs"]; //menangkap data yang di parsing
$nama_mhs=$_POST["nama_mhs"]; //manangkap data yang di parsing
$password=$_POST["password"];

include "db_connection.php";

$rs=mysqli_fetch_array(mysqli_query($conn, "select * from mahasiswa where nim_mhs='$nim_mhs'"));
if ($rs)
{
	echo "<script>alert('NIM Sudah Ada');</script>";
	include "i_mahasiswa.php";
}
else
{
	$query = "insert into mahasiswa(nim_mhs,nama_mhs,password) values ('$nim_mhs','$nama_mhs','$password')";
	$hasil = mysqli_query($conn, $query);
}


if ($hasil)
{
	include "smahasiswa.php";
}
?>

