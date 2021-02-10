<?php 
$servername = "localhost";
$username = "root";
$password = "";
$table = "elerinmosa";

$conn = new mysqli($servername, $username, $password,$table);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?> 
