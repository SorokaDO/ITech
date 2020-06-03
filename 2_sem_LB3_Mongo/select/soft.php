<?php
require './connection.php';

$res = $db->computer->distinct('software');
$outsoft[] = array();
unset($outsoft[0]);

foreach ($res as $value) {
    $outsoft[] .= $value;
}

?>