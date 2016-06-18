<?php

class AnimalH
{
    public function walk()
    {
        $this->bark();
        $this->guard();
        echo "I'm walking\n";
    }

    public function bark()
    {
        echo "Wuf!\n";
    }

    private function guard()
    {
        echo "WUUUF!\n";
    }
}


(new AnimalH())->walk();

