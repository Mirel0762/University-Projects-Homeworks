<?php
    require_once "conn.php";

    $id_produs = $_POST["id_produs"];
    $username= $_POST["username"];

    $sql = "UPDATTE SET produse WHERE id_produs=$id_produs" and username=$username;
    if (mysqli_query($conn, $sql)){
        header("location: admin.php");
    }
    else{
        echo "Produsul nu a putut fi sters";
    }

    // UPDATE produse SET denumire='lalalallalaa', pret_produs=7
?>
