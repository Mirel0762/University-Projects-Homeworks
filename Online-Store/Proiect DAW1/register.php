<?php //include('functions.php');
require_once "conn.php";
if(isset($_POST['register_btn'])){

    $username= $_POST['username'];
    $email=$_POST['email'];
    $password_1=$_POST['password_1'];
    $password_2=$_POST['password_2'];
    $user = "user";
    if(empty($username) || empty($email) || empty($password_1) || empty($password_2)){
        $message[] = "Completeaza  toate campurile";}
  
   
    if(isset($_POST['username']) && isset($_POST['email']) && isset($_POST['password_1']) && isset($_POST['password_2'])){
        if($password_1 == $password_2){
            $sql = "INSERT INTO `users`(`username`, `email`, `user-type` ,`password`) VALUES('".$username."','".$email."','".$user."' ,'".$password_1."')";
            if ($conn->query($sql) === TRUE) {
                ?> 
                <script>
                    //window.location.replace("./index.php");
                    alert("s-a creat cu succes");
                    window.location.replace("./login.php");
                </script>
                <?php
                
            } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }else{
            echo display_error();
            ?> 
                <script>
                    //window.location.replace("./index.php");
                    alert("Eroare,parolele nu sunt identice!");
                </script>
                <?php
        }
        
    }

}

?>
<!DOCTYPE html>
<html>
<head>
 <title>Registration system PHP and MySQL</title>
 <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<style>
body {
  background-image: url('imagini/wp.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
 <div class="header">
  <h2>Register</h2>
 </div>
 
 <form method="post" action="#">

  <?php //echo display_error(); ?>

  <div class="input-group">
   <label>Username</label>
   <input type="text" name="username" >
  </div>
  <div class="input-group">
   <label>Email</label>
   <input type="email" name="email" >
  </div>
  <div class="input-group">
   <label>Password</label>
   <input type="password" name="password_1">
  </div>
  <div class="input-group">
   <label>Confirm password</label>
   <input type="password" name="password_2">
  </div>
  <div class="input-group">
   <button type="submit" class="btn" name="register_btn">Register</button>
  </div>
  <p>
   Already a member? <a href="login.php">Sign in</a>
  </p>
 </form>
</body>
</html>