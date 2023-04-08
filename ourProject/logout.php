<?php
ob_start();
session_start();
session_destroy();
ob_clean();
$_SESSION["username"] = "";
header("Location: main.php");
?>