<?php

function sweets(bool $buy, string... $brands)
{
    if ($buy)
        var_dump($brands);
}

sweets(true, "snickers", "twix", "bounty");