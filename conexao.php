<?php
/**
 * Database Connection File
 * 
 * This file handles the database connection using credentials from the config file.
 * It provides a centralized connection that can be included in other files.
 */

// Load the database configuration
$db_config = require_once __DIR__ . '/config/db_config.php';

// Create the connection
$conn = mysqli_connect(
    $db_config['host'], 
    $db_config['user'], 
    $db_config['pass'], 
    $db_config['name']
);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// For backward compatibility with existing code
$mysqli = $conn;

// Return the connection
return $conn;
?>