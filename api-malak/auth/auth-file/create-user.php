<?php

//    add headers

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: *');

header('Content-Type:application/json');
include '../database/Database.php';
$obj = new Database();

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $data = json_decode(file_get_contents("php://input"));
    $email =$data->email;
    $lname =$data->lastname;
    $fname = $data->firstname;
    $username = $data->username;
    $password = $data->password;
    
    // check user by email
    $obj->select("user", "username", null, "username='{$username}'", null, null);
    $is_email = $obj->getResult();
    if (isset($is_email[0]['username']) == $username) {
        echo json_encode([
            'status' => 2,
            'message' => 'user already Exists',
        ]);
    }else{
        $obj->insert('user', ['username' => $username, 'firstname' => $fname, 'lastname' => $lname, 'password' => $password, 'email' => $email, ]);
        $data = $obj->getResult();
        if ($data[0] == 1) {
            echo json_encode([
                'status' => 1,
                'message' => 'User add Successfully',
            ]);
        } else {
            echo json_encode([
                'status' => 0,
                'message' => 'Server Problem',
            ]);
        }
    }
   
} else {
    echo json_encode([
        'status' => 0,
        'message' => 'Access Denied',
    ]);
}
