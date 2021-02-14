<?php

session_start();
echo '<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
<a class="navbar-brand" href="index.php">iDiscuss</a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
  <span class="navbar-toggler-icon"></span>
</button>

<div class="collapse navbar-collapse" id="navbarSupportedContent">
  <ul class="navbar-nav mr-auto">
    <li class="nav-item">
      <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="about.php">About</a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Top Categories
      </a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdown">';

      $sql = "SELECT category_name, category_id FROM `categories` LIMIT 3";
      $result = mysqli_query($conn, $sql);
      while($row = mysqli_fetch_assoc($result)){
        echo '<a class="dropdown-item" href="threadlist.php?catid='. $row['category_id'] .'">'. $row['category_name'] .'</a>';
      }
      
      echo  '</div>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="contact.php">Contact Us</a>
    </li>
  </ul>';

  if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true){
  
  echo '<form class="form-inline my-2 my-lg-0" method="get" action="search.php">
    <input class="form-control mr-sm-2"  name="search"  type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-success my-2 my-sm-0" type="submit">Search</button> &nbsp;&nbsp;
      <p class="text-light my-0 mx-2"> Welcome '. $_SESSION['username'] .' </p>
      <a class="btn btn-outline-success" href="partials/_logout.php" role="button">Logout</a>
  </form>';
}
else{

  echo '<form class="form-inline my-2 my-lg-0" method="get" action="search.php" >
  <input class="form-control mr-sm-2"  name="search" type="search" placeholder="Search" aria-label="Search">
  <button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
</form>
<div class="mx-2">
  <button class="btn btn-outline-success" data-toggle="modal" data-target="#loginmodal">Login <i class="fas fa-sign-in-alt"></i></button>
  <button class="btn btn-outline-success" data-toggle="modal" data-target="#signupmodal">Signup <i class="fas fa-user-plus"></i></button>';

}

  echo '</div>
</div>
</nav>';

include '_loginmodal.php';
include '_signupmodal.php';
// include '_handlesignup.php';
// include '_handlelogin.php';

// Alert after creating the account
if(isset($_GET['signupsuccess']) && $_GET['signupsuccess']=="true"){
  echo '<div class="alert alert-success alert-dismissible fade show my-0" role="alert">
  <strong>Success!</strong> Your account has been created successfully and now you can login.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>';
// exit();
}

// Alert if server failed to create the account
if(isset($_GET['signupsuccess']) && $_GET['signupsuccess']=="false"){
  echo '<div class="alert alert-danger alert-dismissible fade show my-0" role="alert">
  <strong>Error! </strong> Passwords Do not match or username already exists.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>';
// exit();
}

// Alert if the user successfully logged in
if(isset($_GET['loginsuccess']) && $_GET['loginsuccess'] == "true"){
  echo '<div class="alert alert-success alert-dismissible fade show my-0" role="alert">
  <strong>Success! </strong> You are logged in successfully.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>';
// exit();
}

// Alert if the user failed to logging in
if(isset($_GET['loginsuccess']) && $_GET['loginsuccess'] == "false"){
  echo '<div class="alert alert-danger alert-dismissible fade show my-0" role="alert">
  <strong>Error! </strong> Invalid credentials.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>';
// exit();
}


?>