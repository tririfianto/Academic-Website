<?php
include "db_connection.php";

 $ID_RUANGAN = $_POST['ID_RUANGAN'];
 $NAMA_RUANGAN = $_POST['NAMA_RUANGAN'];

//query for update data in database
 $query = "UPDATE ruangan SET NAMA_RUANGAN='$NAMA_RUANGAN' WHERE ID_RUANGAN='$ID_RUANGAN'" ;
 $hasil = mysqli_query($conn, $query);
 //see the result
 if ($hasil) {
    include "e_ruangan.php";
		}
?>