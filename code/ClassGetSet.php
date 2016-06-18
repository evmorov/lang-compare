<?php

class AnimalE
{
    private $name;

    public function setName(string $name)
    {
        $this->name = $name;
    }

    public function getName() : string
    {
        return $this->name;
    }
}


$animal = new AnimalE();
$animal->setName("Kelya");
echo $animal->getName();

