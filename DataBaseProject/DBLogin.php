<?php
$user = 'user';
$password = 'password';

$database = 'DB_Name';

$servername='localhost:3306';
$mysqli = new mysqli($servername, $user,
                $password, $database);


if ($mysqli->connect_error) {
    die('Connect Error (' .
    $mysqli->connect_errno . ') '.
    $mysqli->connect_error);
}

$sql = " SELECT * FROM S224DB_arielcs ORDER BY score DESC ";
$result = $mysqli->query($sql);
$mysqli->close();
?>
