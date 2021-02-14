<?php


$error = "false";
if($_SERVER['REQUEST_METHOD'] == "POST"){
    include '_dbconnect.php';
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM `users` where username='$username'";
    $result = mysqli_query($conn, $sql);
    $numrows = mysqli_num_rows($result);
    if($numrows == 1){
        $row = mysqli_fetch_assoc($result);
            if(password_verify($password, $row['password'])){
                session_start();
                $_SESSION['loggedin'] = true;
                $_SESSION['sno'] = $row['sno'];
                $_SESSION['username'] = $username;
                echo "Logged in";
                header("Location: /forum/index.php?loginsuccess=true");
                exit();
            }
            else{
                $error = "Invalid credentials";
            }
        }
        header("Location: /forum/index.php?loginsuccess=false&error=$error");
    }

?>