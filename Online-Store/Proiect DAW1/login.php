<?php //include('functions.php') 
if (!isset($_SESSION)) {
	session_start();
	}
require_once "conn.php";
if(isset($_POST['login_btn'])){
    $username = $_POST['username'];
    $parola = $_POST['password'];
    if(empty($username) || empty($password)){
        $message[] = "Nu ai completat toate campurile";
    }
    $sql = "SELECT * from `users` WHERE `username`= '".$username."'";
    if($result = mysqli_query($conn, $sql)){
		if(mysqli_num_rows($result) > 0){
		    while($row = mysqli_fetch_array($result)){
		        $username_db = $row['username'];
				$parola_db = $row['password'];
				$id_sesiune = $row['id']; 
				$is_admin = $row['user-type'];
                
		    }
		    mysqli_free_result($result);
		} else{
            ?>
            <script>
            alert("Datele introduse sunt incorecte");
            window.location.replace("./login.php");
            </script>
            <?php
		}
	} else{
		echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
	}
    if($parola == $parola_db){
        ?> 
        <script>
            alert("Bine ai venit,<?php echo $username; ?> !");
            
        </script>
        
        <?php
        session_start();
        $_SESSION["id_user"] = $id_sesiune;
        $_SESSION["nume_user"] = $username;
        if ($is_admin== 'admin') 
        {
        ?> 
        <script>
            window.location.replace("./admin.php");
        </script>
        <?php
        }
        ?> 
        <script>

            window.location.replace("./user.php");
        </script>
        <?php
    }else{
        ?> 
        <script>
            alert("Datele introduse sunt incorecte");
        </script>
        <?php
    }
    
}

                
    

?>
<!DOCTYPE html>
<html>
<head>
 <title>Register for user</title>
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
  <h2>Login</h2>
 </div>
 
 <form method="post" action="#">

  <?php //echo display_error(); ?>

  <div class="input-group">
   <label>Username</label>
   <input type="text" name="username" >
  </div>
  <div class="input-group">
   <label>Password</label>
   <input type="password" name="password">
  </div>
  <div class="input-group">
   <button type="submit" class="btn" name="login_btn">Login</button>
  </div>
  <p>
   Not yet a member? <a href="register.php">Sign up</a>
  </p>
 </form>


</body>
</html>