<?php

include "db_connection.php";

 $ID_DOSEN = $_GET['ID_DOSEN']; 
 $query = "DELETE from admin WHERE ID_DOSEN = '$ID_DOSEN'" ;
 $hasil = mysqli_query($conn, $query);
 
 if ($hasil)
 {
    include "e_admin.php";
 }

?>