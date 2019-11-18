<?php
session_start();
$id_matkul=$_POST["id_matkul"];
$id_ruangan=$_POST["id_ruangan"]; //manangkap data yang di parsing
$hari=$_POST["hari"];
$jam=$_POST["jam"];
$status = $_POST["status"];

include "db_connection.php";

$rs=mysqli_fetch_array(mysqli_query($conn, "select * from jadwal where id_matkul='$id_matkul' and id_ruangan='$id_ruangan'"));
$a=mysqli_fetch_array(mysqli_query($conn, "select * from mata_kuliah where id_matkul = '$id_matkul '"));
$b=mysqli_fetch_array(mysqli_query($conn, "select * from ruangan where id_ruangan = '$id_ruangan '"));
if ($rs)
{
	echo "<script>alert('Data Sudah Ada');</script>";
	include "i_jadwal.php";
}
else
{
	if($a AND $b)
	{
		$query = "insert into jadwal(id_ruangan,id_matkul,hari,jam,STATUS) values ('$id_ruangan','$id_matkul','$hari','$jam','$status')";
		$hasil = mysqli_query($conn, $query); 
	}
	else
	{
		echo "<script>alert('Data Mata Kuliah atau Ruangan Tidak ada di Tabel');</script>";
		include "i_jadwal.php";
	}
}


if ($hasil)
{
	include "sjadwal.php";
}
?>
