<?php

// Include PEAR Libs
require_once 'DB.php';

// Database configuration (supports Docker environment variables)
$db_host = getenv('MYSQL_HOST') ?: 'localhost';
$db_user = getenv('MYSQL_USER') ?: 'teresapi';
$db_pass = getenv('MYSQL_PASSWORD') ?: 'WtKPvPjB9AjwtyPf';
$db_name = getenv('MYSQL_DATABASE') ?: 'teresapi_base';

// Connect to MySQL
$db =& DB::connect("mysqli://{$db_user}:{$db_pass}@{$db_host}/{$db_name}");
$db->setFetchMode(DB_FETCHMODE_ASSOC);
if (PEAR::isError($db))
	die($db->getMessage());

?>