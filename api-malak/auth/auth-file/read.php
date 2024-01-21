<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET');
header('Access-Control-Allow-Headers: *');

header('Content-Type:application/json');
include '../database/Database.php';
include '../vendor/autoload.php';

use \Firebase\JWT\JWT;

$obj = new Database();

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    

    $obj->select('afcon_2023', '*', null, null, null, null);
    $datas = $obj->getResult();
    if($datas){
        echo json_encode($datas);
           
        
    }else{
        echo json_encode([
            'status' => 0,
            'message' => 'error',
        ]);
    }
    
} else {
    echo json_encode([
        'status' => 2,
        'message' => 'Access Denied',
    ]);
}
