<?php
include "db_connection.php";

 $ID_MATKUL = $_GET['ID_MATKUL']; 
 $query = "DELETE from mata_kuliah WHERE ID_MATKUL = '$ID_MATKUL'" ;
 $hasil = mysqli_query($conn, $query);
 
 if ($hasil)
 {
    include "e_matakuliah.php";
 }

?>