<?php
include "db_connection.php";

 $ID_MENGAJAR = $_POST['ID_MENGAJAR'];
 $ID_DOSEN = $_POST['ID_DOSEN'];
 $ID_MATKUL = $_POST['ID_MATKUL'];


//query for update data in database
 $query = "UPDATE mengajar SET ID_DOSEN='$ID_DOSEN' WHERE ID_MENGAJAR='$ID_MENGAJAR' AND ID_MATKUL='$ID_MATKUL'" ;
 $hasil = mysqli_query($conn, $query);
 //see the result
 if ($hasil) {
    include "e_mengajar.php";
		}


?>