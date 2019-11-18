<?php
include "db_connection.php";

 $ID_MATKUL = $_GET['ID_MATKUL']; 
 $ID_RUANGAN = $_GET['ID_RUANGAN']; 
 $query = "DELETE from jadwal WHERE ID_MATKUL = '$ID_MATKUL' AND ID_RUANGAN = '$ID_RUANGAN'" ;
 $hasil = mysqli_query($conn, $query);
 
 if ($hasil)
 {
    include "e_jadwal.php";
 }

?>