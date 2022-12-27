<?php
require_once dirname(__DIR__, 1).'/classes/DB.php';
require_once dirname(__DIR__, 1).'/classes/ImportExport.php';

$db = new DB;
$impExp = new ImportExport($db);
$impExp->Import();