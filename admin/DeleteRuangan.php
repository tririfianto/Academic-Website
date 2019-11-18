<?php
include "db_connection.php";

 $ID_RUANGAN = $_GET['ID_RUANGAN']; 
 $query = "DELETE from ruangan WHERE ID_RUANGAN = '$ID_RUANGAN'" ;
 $hasil = mysqli_query($conn, $query);
 
 if ($hasil)
 {
    include "e_ruangan.php";
 }

?>