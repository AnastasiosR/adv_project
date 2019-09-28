<?php
$servername = getenv('dbhost');
//$servername = "localhost";
$username = getenv('dbuser');
$password = getenv('dbpass');
$db = getenv('dbname');

// Create connection
$con = mysqli_connect($servername, $username, $password,$db);

// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}


?>