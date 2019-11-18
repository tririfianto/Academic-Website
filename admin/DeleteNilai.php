<?php
include "db_connection.php";

 $NIM_MHS = $_GET['NIM_MHS']; 
 $ID_MATKUL = $_GET['ID_MATKUL']; 
 $query = "DELETE from nilai WHERE NIM_MHS = '$NIM_MHS' and ID_MATKUL='$ID_MATKUL'" ;
 $hasil = mysqli_query($conn, $query);
 
 if ($hasil)
 {
    include "e_nilai.php";
 }

?>