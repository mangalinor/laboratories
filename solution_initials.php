<?php
declare(strict_types=1);
function getInitials(string $FIO): ?string
{
    if (str_word_count($FIO, 0, "АаБбВвГгДдЕеЁёЖжЗзИиЙйКкЛлМмНнОоПпРрСсТтУуФфХхЦцЧчШшЩщЪъЫыЬьЭэЮюЯя") < 2) return null;
    else {
        $FIO = mb_convert_case($FIO, MB_CASE_TITLE, 'UTF-8');
        $OUT_FIO = mb_str_split($FIO);
        $WORK_FIO[] = '';
        $flag = true;
        foreach ($OUT_FIO as $key => $value) {
            if ($value == ' ') {
                if ($flag) $WORK_FIO[] = ' ';
                $flag = false;
                $WORK_FIO[] = $OUT_FIO[$key + 1] . '.';
            } elseif ($flag) $WORK_FIO[] = $value;
            elseif ($value == '-') $WORK_FIO[] = '-' . $OUT_FIO[$key + 1] . '.';
        }
        return implode($WORK_FIO);
    }
}
