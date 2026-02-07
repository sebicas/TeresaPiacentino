<?php

// Include PEAR Libs
require_once 'DB.php';
require_once 'includes/functions.php';

// Connect to MySQL
$db =& DB::connect('mysqli://teresapi_teresap:46rflHkV@mysql/teresapi_12all');
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