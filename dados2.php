<?php

    include("conecta.php");
    
    $usb = $_POST["usb"];
    $ocorrencia = $_POST["ocorrencia"];
    $desp = $_POST["desp"];
    $h_ch = $_POST["h_ch"];
    $km_final = $_POST["km_final"];

    $comando = $pdo->prepare("UPDATE cadastros SET numero_usb='$usb', numero_ocorrencia='$email', desp='$usuario', h_ch='$senha', km_final='$cep' WHERE id_cadastro=$id_cadastro");

    $resultado = $comando->execute();
    header("Location: principal.html");

?>