<?php

class AnimalB
{
    private $name;

    public function __construct(string $name)
    {
        $this->name = $name;
    }

    public function walk()
    {
        echo "My name is {$this->name} and I'm walking";
    }
}

$animal = new AnimalB("Kelya");
$animal->walk();