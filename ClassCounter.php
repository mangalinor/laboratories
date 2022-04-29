<?php

class ClassCounter
{
    private static int $obj_counter = 0;
    private static int $call_counter = 0;

    public function __construct()
    {
        self::$obj_counter += 1;
    }

    public function __destruct()
    {
        self::$obj_counter -= 1;
    }

    public static function getObjectsNum(): int
    {
        return self::$obj_counter;
    }

    public static function getMethodCallNum(): int
    {
        return self::$call_counter;
    }

    public function __call(string $name, array $arguments)
    {
        if ($name = 'callMethod')
        {
            self::$call_counter += 1;
        }
    }
}