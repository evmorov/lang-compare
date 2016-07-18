<?php

try {
    throw new Exception();
} catch (Exception $e) {
    echo "Can't divide\n";
} finally {
    echo "But that's ok\n";
}
