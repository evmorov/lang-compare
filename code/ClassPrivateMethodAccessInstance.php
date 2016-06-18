<?php

class AnimalJ
{
    private $name;

    public function __construct(string $name)
    {
        $this->name = $name;
        $this->greet();
    }

    private function greet()
    {
        echo "Hello! My name is " . $this->name;
    }
}


new AnimalJ("Kelya");

