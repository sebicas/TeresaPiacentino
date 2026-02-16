<?php

// Include PEAR Libs
require_once 'DB.php';
require_once 'includes/functions.php';

// Database configuration (supports Docker environment variables)
$db_host = getenv('MYSQL_HOST') ?: 'localhost';
$db_user = getenv('MYSQL_USER') ?: 'teresapi';
$db_pass = getenv('MYSQL_PASSWORD') ?: 'WtKPvPjB9AjwtyPf';
$db_name = getenv('MYSQL_DATABASE') ?: 'teresapi_12all';

// Connect to MySQL
$db =& DB::connect("mysqli://{$db_user}:{$db_pass}@{$db_host}/{$db_name}");
$db->setFetchMode(DB_FETCHMODE_ASSOC);
if (PEAR::isError($db))
	die($db->getMessage());

// Read Users
$data =& $db->getAll('SELECT id, cdate, email, first_name, last_name, INET_NTOA(ip) as ip FROM em_subscriber');
if (PEAR::isError($data))
	die($data->getMessage());

// Parse Records
foreach ($data as $id => $record) {

	// Reading Country Code
	$record['country_code'] =& $db->getOne("SELECT val FROM em_list_field_value WHERE relid = ?", $record['id']);
	if (PEAR::isError($data))
		die($data->getMessage());

	// Display Results
	echo "<PRE>";
	print_r($record);

	$Status = AddSubscriberToList($record);

	print_r($Status);

	echo "</PRE>";

}

?>