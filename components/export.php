<?php 
require_once dirname(__DIR__, 1).'/classes/ImportExport.php';
require_once dirname(__DIR__, 1).'/classes/DB.php';

$db = new DB;
$imExp = new ImportExport($db);
$imExp->Export();