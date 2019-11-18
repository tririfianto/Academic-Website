<?php
include "db_connection.php";

 $ID_MATKUL = $_POST['ID_MATKUL'];
 $NAMA_MATKUL = $_POST['NAMA_MATKUL'];
 $SKS_MATKUL = $_POST['SKS_MATKUL'];
$SEMESTER = $_POST['SEMESTER'];

//query for update data in database
 $query = "UPDATE mata_kuliah SET NAMA_MATKUL='$NAMA_MATKUL' ,SKS_MATKUL='$SKS_MATKUL',SEMESTER='$SEMESTER' WHERE ID_MATKUL='$ID_MATKUL'" ;
 $hasil = mysqli_query($conn, $query);
 //see the result
 if ($hasil) {
    include "e_matakuliah.php";
		}

?>