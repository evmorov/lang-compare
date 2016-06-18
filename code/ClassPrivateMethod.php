<?php

class AnimalI
{
    public function eat(string $food)
    {
        if ($this->isMeat($food))
            echo "Om nom nom";
    }

    private function isMeat(string $food) : bool
    {
        return strcmp($food, "meat") == 0;
    }
}

(new AnimalI())->eat("meat");
