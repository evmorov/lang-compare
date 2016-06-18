<?php

$arr = [1, 5, 10, 20];
$mapped = array_map(function ($n) {
    return $n * 2;
}, $arr);
print_r($mapped);