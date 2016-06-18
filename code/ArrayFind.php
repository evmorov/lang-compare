<?php

$arr = [1, 5, 10, 20];
$first = 0;
foreach ($arr as $n) {
    if ($n % 2 == 0) {
        $first = $n;
        break;
    }
}
var_dump($first);