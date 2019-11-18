<?php
include "db_connection.php";

$ID_RUANGAN = $_POST['ID_RUANGAN'];
$ID_MATKUL = $_POST['ID_MATKUL'];
$JAM = $_POST['JAM'];
$HARI = $_POST['HARI'];

//query for update data in database
 $query = "UPDATE jadwal SET HARI='$HARI',JAM='$JAM' where ID_RUANGAN='$ID_RUANGAN' AND ID_MATKUL='$ID_MATKUL'" ;
 $hasil = mysqli_query($conn, $query);
 //see the result
if ($hasil) 
{
    include "e_jadwal.php";
}
?>