<?php
$hostname = "localhost";
$user_db = "root";//adjust according to your mysql setting
$pass_db = ""; //adjust according to your mysql setting, i use no password here
$dbName = "db_webakademis_php";
//$conn = mysqli_connect($hostname, $user_db, $pass_db, $dbName)
//or die ("Connect Failed !! :".mysqli_connect_error());
$conn = mysqli_connect($hostname, $user_db, $pass_db);
if ($conn){
    mysqli_select_db($conn,$dbName);
}

/*if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}*/
//mysql_connect($hostname, $user_db, $pass_db);
//mysqli_select_db($dbName)
//or die ("Connect Failed !! :".mysql_error());
?>
