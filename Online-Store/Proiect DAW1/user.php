<?php 
if (!isset($_SESSION)) {
	session_start();
}

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./bootstrap-5.0.2-dist/css/bootstrap.css">
        <link rel="stylesheet" href="style1.css">
        <script src="./bootstrap-5.0.2-dist/js/bootstrap.js"></script> 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

        <!-- <link rel="stylesheet" href="./style.css"> -->
        
        <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&family=Dosis:wght@200&family=Montserrat:wght@200&family=Sacramento&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Tangerine&display=swap" rel="stylesheet">
        <title>QuickPhone</title>
    </head>
    <body>
    <header class="site-header">
  <div class="site-identity">
    <a href="#"><img src="imagini/logo2.png" /></a>
    <h1><a href="#">QuickPhone</a></h1>
  </div>  
  <nav class="site-navigation">
    <ul class="nav">
      <li><a href="home.php">Acasa</a></li> 
      <li><a href="#">News</a></li> 
      <li><a href="contact.php">Contact</a></li> 
      <?php
        if (isset($_SESSION["id_user"])) {
            echo '<li><a href="logout.php">Log out</a></li>';
            echo '<li>' . $_SESSION["nume_user"] . '</li>';
        }
      ?>
    </ul>
  </nav>
</header>

    <br><br>

    
<div class="card-deck"> 
    <div class="row">


    <?php 
        require_once "conn.php";
        $sql = 'SELECT * FROM produse ';
        
    if($result = mysqli_query($conn, $sql)){  
        if(mysqli_num_rows($result) > 0){
            
            while($row = mysqli_fetch_array($result)){
                
                $prod_nume = $row['denumire'];
                // $prod_descriere = $row['descriere_prod'];
                $prod_pret = $row['pret'];
                // $id_produs= $row['id_prod'];
                // $tip_vanzare = $row['tip_vanzare'];
                ?> 
       <div class=" card col-md-3 p-3">
       <div class=" " style="width: 22rem" style="display: inline-block;">
            <img class="card-img-top" src="data:image/jpg;charset=utf8;base64, 
            <?php echo base64_encode($row['poza_prod']); ?>" style="height: 15rem; width:20rem;">
            <div class="card-block ">
            <form action="#" method="POST">
                <div class="card-body body-for-card">
                    <h5 class="card-title " style=" font-size: 30px;font-family: 'Dancing Script', cursive;" 
                    name="<?php echo $prod_nume?>"><?php echo $prod_nume; ?></h5>
                    <!-- <input type="hidden" name="nume_produs" value="<?php //echo $id_produs;?>"> -->
                    <p class="card-text " style="font-family:'Trebuchet MS', sans-serif;font-size: 16px;">
                        <?php  echo $prod_pret . " RON"; ?>
                        <br>
                    </p>
                </div>
                <div class="card-footer " style="font-family:'Trebuchet MS', sans-serif;font-size: 16px;text-align: center;background-color: white;">
                    <p class="text-card">
                    <!-- Pret: 
                        <?php  //echo $prod_pret; ?>
                        lei/<?php //echo $tip_vanzare; ?> </p> -->
                        <input type="submit" class="btn btn-primary " name="introducere_submit_button" value="Adauga in cos" />
                </div>
                </form>
            </div>
            
        </div>
        </div>
         
        
            
    
            <?php
            
        }
        
            // mysqli_free_result($result);
        } else{
            echo "Nu am gasit niciun produs.";
            die();
        }
    } else{
        echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
    }
        

        
    ?>

</div>
</div>

</body>
</html>