<?php
session_start();
$id_dosen=$_POST["id_dosen"]; //menangkap data yang di parsing
$username=$_POST["username"];
$password=$_POST["password"];

include "db_connection.php";

$rs=mysqli_fetch_array(mysqli_query($conn, "select * from admin where id_dosen='$id_dosen'"));
$rs2=mysqli_fetch_array(mysqli_query($conn, "select * from admin where username='$username'"));
if ($rs2)
{
	echo "<script>alert('Username yang digunakan sudah dipakai oleh yang lain');</script>";
	include "i_admin.php";
}
if ($rs)
{
	echo "<script>alert('ID Dosen Sudah Ada');</script>";
	include "i_admin.php";
}
else
{

	$query = "insert into admin(id_dosen,username,password_admin) values ('$id_dosen','$username','$password')";
	//echo $query;
	$hasil = mysqli_query($conn, $query);
}


if ($hasil)
{
	include "sadmin.php";
}
?>
