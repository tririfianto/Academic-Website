<?php
include "db_connection.php";

 $ID_MENGAJAR = $_GET['ID_MENGAJAR']; 
 $ID_MATKUL = $_GET['ID_MATKUL']; 
 
 $query = "DELETE from mengajar WHERE ID_MENGAJAR = '$ID_MENGAJAR' AND ID_MATKUL='$ID_MATKUL'" ;
 $hasil = mysqli_query($conn, $query);
 
 if ($hasil)
 {
    include "e_mengajar.php";
 }

?>