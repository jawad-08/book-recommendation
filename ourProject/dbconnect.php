<?php 
// session_start();
ob_start();
$conn = mysqli_connect("localhost","root","") or die (mysqli_error($conn));
mysqli_select_db($conn, "recbooks") or die(mysqli_error($conn));
?>
