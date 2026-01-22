<?php
$host = 'localhost'; // Remove the port if not necessary
$user = 'root';
$pass = ''; // Add your MySQL password if it's set
$db = 'php';

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
