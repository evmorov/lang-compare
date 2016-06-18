<?php

$arr = [1, 2, 3];
$reduced = array_reduce($arr, function ($carry, $item) {
    return $carry + $item;
});
print_r($reduced);