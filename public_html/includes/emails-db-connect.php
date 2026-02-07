<?php

// Include PEAR Libs
require_once 'DB.php';
require_once '/home/vsites/teresapiacentino.com/public_html/includes/functions.php';

// Connect to MySQL
$db =& DB::connect('mysqli://teresapi:WtKPvPjB9AjwtyPf@mysql/teresapi_lista');
$db->setFetchMode(DB_FETCHMODE_ASSOC);
if (PEAR::isError($db))
	die($db->getMessage());

?>