<?php
declare(strict_types=1);
function getSumNK(array $input, int $N, int $K): int
{
    $current = 0;
    $sum = 0;
    if ($K > 0) $K -= 1;

    if (count($input) == 0)
        return 0;
    elseif ((count($input) < ($N + $K))
        || ($N < 0) || ($K < 0))
        return -1;

    foreach ($input as $value) {
        if (gettype($value) !== "integer")
            return -1;
        elseif (($current < $K) && ($N !== 0)) {
            $current += 1;
            continue;
        }
        if (($current < ($N + $K)) || ($N == 0)) {
            $current += 1;
            $sum += $value;
        }
    }
    return $sum;
}