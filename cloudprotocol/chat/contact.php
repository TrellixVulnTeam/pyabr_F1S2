<?php

require 'config.php';

$username = $_POST['username'];
$password = hash('ripemd160',$_POST['password']);

$sql = "SELECT password FROM users WHERE username='$username'";
$result = mysqli_query($conn,$sql);
$array = mysqli_fetch_array ($result);

if (isset($array)){
    if ($array[0]==$password){
        $sql = "SELECT * FROM contacts WHERE me='$username'";
        $result = $conn->query($sql);
        $arrylist=array();
        $array=$result->fetch_all(MYSQLI_ASSOC);
        echo json_encode($array);
    }
}

?>