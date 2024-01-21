<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: *');

header('Content-Type:application/json');
include '../database/Database.php';
include '../vendor/autoload.php';

use \Firebase\JWT\JWT;

$obj = new Database();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $data = json_decode(file_get_contents("php://input", true));
    $username = htmlentities($data->username);
    $password = htmlentities($data->password);

    $obj->select('user', '*', null, "username='{$username}'", null, null);
    $datas = $obj->getResult();
    if($datas){
        foreach ($datas as $data) {
        $id = $data['id'];
        $email = $data['email'];
        $lname = $data['lastname'];
        $fname = $data['firstname'];
        // $password=$data['password'];
        if (!($password == $data['password'])) {
            echo json_encode([
                'status' => 0,
                'message' => 'Invalid credentials',
            ]);
        } else {
            
            echo json_encode([
                'status' => 1,
                'message' => 'Login Successfully',
            ]);
        }
    }}else{
        echo json_encode([
            'status' => 0,
            'message' => 'Invalid credentials',
        ]);
    }
    
} else {
    echo json_encode([
        'status' => 2,
        'message' => 'Access Denied',
    ]);
}
