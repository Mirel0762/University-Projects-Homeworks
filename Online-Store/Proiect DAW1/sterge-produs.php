<?php
    require_once "conn.php";

    $id_produs = $_POST["id_produs"];

    $sql = "DELETE FROM produse WHERE id_produs=$id_produs";
    if (mysqli_query($conn, $sql)){
        header("location: admin.php");
    }
    else{
        echo "Produsul nu a putut fi sters";
    }

?>
