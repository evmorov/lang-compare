<?php

class AnimalD
{

    private $toy;

    public function take(string $toy)
    {
        $this->toy = $toy;
    }

    public function play()
    {
        echo "I'm playing with " . $this->toy;
    }
}


$animal = new AnimalD();
$animal->take("a ball");
$animal->play();
