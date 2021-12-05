<?php
declare(strict_types=1);
function wordsCount(string $sourceString): array
{
    $word = "";
    $count = array();

    $sourceString = mb_convert_case($sourceString, MB_CASE_LOWER, 'UTF-8');
    $sourceString = preg_replace('/\s+/',' ',$sourceString);
    $sourceString = str_replace(array("-", ",", ".", ";", ":", "“", "’", "»", "«"), "", $sourceString). " ";
    if (strlen($sourceString) == 0) return $count;
    foreach (str_split($sourceString) as $letter) {
        if ($letter !== " ") $word = $word. "$letter";
        else if ($word !== "") {
            if (array_key_exists($word, $count)) $count[$word] += 1;
            else $count[$word] = 1;
            $word = "";
        }
    ksort($count, SORT_STRING);
    }
    return $count;
}