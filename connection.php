<?php

// Enter your database details here
$localhost = 'localhost'; // host name
$username = 'root'; // username
$password = ''; // password
$database = 'cmsdata'; // database name

// Establish database connection
$conn = mysqli_connect($localhost, $username, $password, $database);

// Check if the connection was successful
if (!$conn) {
    die('Connection failed: ' . mysqli_connect_error());
}

?>
