<?php

class AnimalC
{
    public function walk()
    {
        echo "I'm walking";
    }
}

$animal = new AnimalC();
$animal->walk();