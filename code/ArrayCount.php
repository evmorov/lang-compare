<?php

$arr = [1, 11, 111];
$count = 0;
foreach ($arr as $n)
    if ($n > 10)
        $count++;
var_dump($count);