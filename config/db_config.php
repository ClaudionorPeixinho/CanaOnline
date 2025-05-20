<?php
/**
 * Database Configuration File
 * 
 * This file contains the database connection credentials.
 * It should be stored outside of the web root directory for security.
 * In a production environment, these values should be set from environment variables.
 */

// In a production environment, you would use environment variables:
// $db_host = getenv('DB_HOST') ?: 'localhost';
// $db_user = getenv('DB_USER') ?: 'root';
// $db_pass = getenv('DB_PASS') ?: '';
// $db_name = getenv('DB_NAME') ?: 'canaonline';

// For development purposes:
$db_host = 'localhost';
$db_user = 'root';
$db_pass = '';
$db_name = 'canaonline';

// Do not expose variables globally
return [
    'host' => $db_host,
    'user' => $db_user,
    'pass' => $db_pass,
    'name' => $db_name
];
?>