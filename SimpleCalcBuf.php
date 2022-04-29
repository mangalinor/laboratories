<?php

class SimpleCalcBuf
{
    public float $result;

    function __construct(float $input = 0)
    {
        $this->result = $input;
        return $this;
    }

    public function add(float $a)
    {
        $this->result += $a;
        return $this;
    }

    public function multiply(float $a)
    {
        $this->result *= $a;
        return $this;
    }

    public function substract(float $a)
    {
        $this->result -= $a;
        return $this;
    }

    public function divide(float $a, int $value = 2)
    {
        $this->result = round($this->result/$a, $value);
        return $this;
    }

    public function getValue()
    {
        return $this->result;
    }
}