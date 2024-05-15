<?php
$servername = "localhost:3306";
$username = "arielcs";
$password = "Mi33Km34";
$dbname = "S224DB_arielcs";

$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
echo "Connected succeded";
?>