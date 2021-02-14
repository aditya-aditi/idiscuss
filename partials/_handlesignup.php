<?php

$showError = "false";
if($_SERVER['REQUEST_METHOD'] == "POST"){
    include '_dbconnect.php';
    $username = $_POST['username'];
    $password = $_POST['password'];
    $cpassword = $_POST['cpassword'];

    // Check whether this username exists or not
    $existsSql = "SELECT * FROM `users` WHERE username = '$username' ";
    $result = mysqli_query($conn, $existsSql);
    $numrows = mysqli_num_rows($result);
    if($numrows > 0){
        $showError = "Username already exists";
    }
    else{
        if($password == $cpassword){
            $hash = password_hash($password, PASSWORD_DEFAULT);
            $sql = "INSERT INTO `users` (`username`, `password`) VALUES ('$username', '$hash')";
            $result = mysqli_query($conn, $sql);
            if($result){
                $showAlert = true;
                header("Location: /forum/index.php?signupsuccess=true");
                exit();
            }
        }
        else{
            $showError = "Passwords Do not match";
        }
    }
    
    header("Location: /forum/index.php?signupsuccess=false&error=$showError");
}

?>