<?php
declare(strict_types=1);
function getBMI(int $height, float $weight)
{
    if (($height < 10 or $height > 300)
        or ($weight < 1.0 or $weight > 300.0))
        return null;
    else {
        $bmi = 10000 * $weight / ($height ** 2);
        return round($bmi, 2);
    }
}