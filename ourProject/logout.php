<?php
session_start();
// session_destroy($_SESSION["username"]);
$_SESSION["username"] = "";
header("Location: main.php");
?>