<?php

class AnimalG
{
    public function walk()
    {
        echo "I'm walking";
    }
}

class Dog extends AnimalG
{
    public function sing()
    {
        echo "Bark!";
    }
}

$dog = new Dog();
$dog->walk();

