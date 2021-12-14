<?php

function task1()
{
    try {
        if ($_SERVER ['REQUEST_METHOD'] != 'GET') echo die('Wrong Method');
        $pdo = new PDO('mysql:host=localhost;dbname=prof203;charset=utf8', 'root', NULL);
        $speciality = $_GET['speciality'];
        $query = "SELECT st.lastname, st.firstname, st.grid, st.year_start FROM `students` st
    LEFT JOIN `groups` gr ON st.grid=gr.grid
    LEFT JOIN `specialities` sp ON gr.speciality_id=sp.speciality_id
    WHERE sp.speciality_name = $speciality
    ORDER BY st.lastname";
        $prep = $pdo->prepare($query);
        $prep->execute([$speciality]);
        return (json_encode($prep->fetchAll()));
    } catch (PDOException $e) {
        return (NULL);
    }
}