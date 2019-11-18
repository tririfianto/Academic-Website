<?php
include "db_connection.php";


 $NIM_MHS = $_GET['NIM_MHS']; 
 $query = "DELETE from mahasiswa WHERE NIM_MHS = '$NIM_MHS'" ;
 $hasil = mysqli_query($conn, $query);
 
 if ($hasil)
 {
    include "e_mahasiswa.php";
 }

?>