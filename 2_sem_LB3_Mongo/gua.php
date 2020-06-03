<?php

require 'connection.php';


$cond=array("guarantee"=> array('$eq' => 'no'));
$cursor = $db->computer->find($cond);
$result = iterator_to_array($cursor);




foreach ($result as $key => $value) {
    echo "Номер: " .$value['number'].'</br>';
	echo "Процессор: " .$value['processor'].'</br>';
}
