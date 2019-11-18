<?php
include "db_connection.php";

$NIM_MHS = $_POST['NIM_MHS'];
$ID_MATKUL = $_POST['ID_MATKUL'];
$NILAI = $_POST['NILAI'];


//query for update data in database
 $query = "UPDATE nilai SET NILAI='$NILAI' where NIM_MHS='$NIM_MHS' AND ID_MATKUL='$ID_MATKUL'" ;
 $hasil = mysqli_query($conn, $query);
 //see the result
if ($hasil) 
{
    include "e_nilai.php";
}
?>