<?php
require './connection.php';

$res = $db->computer->distinct('processor');
$outproc[] = array();
unset($outproc[0]);

foreach ($res as $value) {
    $outproc[] .= $value;
}

?>