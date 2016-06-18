<?php
$arr = [1, 5, 10, 20];
$filtered = array_filter($arr, function ($n) {
    return $n % 2 == 0;
});
print_r($filtered);