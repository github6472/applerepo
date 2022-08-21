<?php

$con = mysqli_connect('localhost','root');

if($con){
    echo "Conection Successful";
}else{
    echo "No Conection";
}

mysqli_select_db($con, 'myappuserdata');

$user = $_POST['user'];
$email = $_POST['email'];
$mobile = $_POST['mobile'];
$comment = $_POST['comment'];

$query = " insert into userinfo (user, email, mobile, comment)
values ('$user', '$email', '$mobile', '$comment') ";

mysqli_query($con, $query);

header('location:index.html')


?>