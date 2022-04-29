<?php

class SimpleCalc
{
    public static function add(float $a, float $b): float
    {
        return $a + $b;
    }

    public static function multiply(float $a, float $b): float
    {
        return $a * $b;
    }

    public static function substract(float $a, float $b): float
    {
        return $a - $b;
    }

    public static function divide(float $a, float $b): float
    {
        return round($a / $b, 2);
    }
}