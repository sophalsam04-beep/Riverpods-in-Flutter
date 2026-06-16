<?php

$users = [
    [
        "id" => 1,
        "name" => "Sam sophal",
        "email" => "sophal@gmail.com"
    ],
    [
        "id" => 2,
        "name" => "Un virak",
        "email" => "virak_uhs@gmail.com"
    ],
    [
        "id" => 2,
        "name" => "Sok sombo",
        "email" => "sombo@gmail.com"
    ],[
        "id" => 2,
        "name" => "Ny sokna",
        "email" => "nysokna@gmail.com"
    ],[
        "id" => 2,
        "name" => "Vy morokot",
        "email" => "morokot@gmail.com"
    ],[
        "id" => 2,
        "name" => "Sang phanna",
        "email" => "panna@gmail.com"
    ]
];

header('Content-Type: application/json');
echo json_encode($users);

?>
