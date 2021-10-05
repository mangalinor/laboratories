<?php
//Task 1
if (array_key_exists('HTTP_X_ACCESS_TOKEN', $_SERVER) == false) {
    print_r("<br>" . 'TOKEN DOES NOT EXIST');
    die();
}
if ($_SERVER['HTTP_X_ACCESS_TOKEN'] !== 'SECRET_TOKEN') {
    print_r("<br>" . 'INCORRECT TOKEN');
    die();
}
//Task 2
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    print_r("<br>" . 'INCORRECT METHOD');
    die();
}
//Task 3
$_ALLOWED = array('page1', 'page2', 'page3');
if (array_key_exists('page', $_GET))
    print_r("<br>" . 'REQUESTED PAGE [' . htmlentities($_GET['page']) . ']');
else {
    print_r("<br>" . 'NO PAGE REQUESTED');
    die();
}
if (!in_array($_GET['page'], $_ALLOWED)) {
    print_r("<br>" . 'PAGE DOES NOT EXIST');
    die();
}
//Task 4
if (array_key_exists('CONTENT_TYPE', $_SERVER) == false
    || $_SERVER['CONTENT_TYPE'] !== 'application/x-www-form-urlencoded') {
    print_r("<br>" . 'INCORRECT DATA TYPE');
    die();
}
//Task 5
if (count($_POST) == 0) {
    print_r("<br>" . 'DATA NOT SPECIFIED');
    die;
} else
    print_r("<br>" . count($_POST) . ' VARIABLES TRANSFERRED THROUGH POST');
//Task 6
foreach ($_POST as $key => $value)
    print_r("<br>" . 'Variable[' . htmlentities($key) . ']: ' . htmlentities($value));
