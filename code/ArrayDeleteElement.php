<?php

$arr = ["a", "b", "c"];
$key = array_search("b", $arr);
unset($arr[$key]);
print_r($arr);
