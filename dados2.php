<?php

    include("conecta.php");
    $usb = $_POST["usb"];
    $desp = $_POST["desp"];
    $h_ch = $_POST["h_ch"];
    $km_final = $_POST["km_final"];
    $op1=isset($_POST["op1"]) ? "1" : "0";
    $op2=isset($_POST["op2"]) ? "1" : "0";
    $rg = $_POST["rg"];

    $comando = $pdo->prepare("UPDATE ocorrencia SET numero_usb='$usb', desp='$desp', h_ch='$h_ch', km_final='$km_final', cod_ir='$op1', cod_ps='$op2' Where registro_paciente = '$rg' ");
    $resultado = $comando->execute();
    header("Location: principal.php");

?>