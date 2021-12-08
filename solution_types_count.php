<?php
declare(strict_types=1);
function typesCounter(...$arguments): ?array
{
    $count = array(
        'boolean' => 0,
        'integer' => 0,
        'float' => 0,
        'string' => 0,
        'object' => 0,
        'array' => 0
    );
    foreach ($arguments as $argument) {
        $current = gettype($argument);
        if (array_key_exists($current, $count))
            $count[$current] += 1;
        else if (($current == 'real') || ($current == 'double')) $count['float'] += 1;
        else return null;
    }
    return $count;
}