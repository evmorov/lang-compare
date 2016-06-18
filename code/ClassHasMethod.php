<?php

class AnimalF
{
    public function walk()
    {
        echo "I'm walking";
    }
}

$animal = new AnimalF();
$hasMethod = method_exists($animal, "walk");
var_dump($hasMethod);
