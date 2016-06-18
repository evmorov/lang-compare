<?php

function divide(int $a, int $b) : float
{
    if ($a == 0)
        return 0;
    return $a / $b;
}

echo divide(0, 10) . "\n";
echo divide(10, 5) . "\n";
echo divide(5, 10) . "\n";
