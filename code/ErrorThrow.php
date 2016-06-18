<?php

try {
    throw new Exception("An error!");
} catch (Exception $e) {
    echo $e->getMessage();
}

