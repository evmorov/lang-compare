<?php

$output = [];
exec("php --version", $output);
echo $output[0];