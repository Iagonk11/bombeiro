<?php

    include("conecta.php");
    
    $data = $_POST["data"];
    $sexo = $_POST["sexo"];
    $hospital = $_POST["hospital"];
    $nome = $_POST["nome"];
    $idade = $_POST["idade"];
    $rg = $_POST["rg"];
    $phone = $_POST["phone"];
    $local_ocorrencia = $_POST["local_ocorrencia"];
    $nome_acompanhante = $_POST["nome_acompanhante"];
    $idade_acompanhante = $_POST["idade_acompanhante"];
    $usb = $_POST["usb"];
    $id_ocorrencia = $_POST["id_ocorrencia"];
    $desp = $_POST["desp"];
    $h_ch = $_POST["h_ch"];
    $km_final = $_POST["km_final"];
    $op1=isset($_POST["op1"]) ? "1" : "0";
    $op2=isset($_POST["op2"]) ? "1" : "0";

    if(Isset($_POST["acompanhante"])) {
        $acompanhante = 1;
        $comando = $pdo->prepare("INSERT INTO ocorrencia(data_ocorrencia,sexo,nome_hospital,nome_paciente,registro_paciente,idade_paciente,telefone_paciente,local_ocorrencia,nome_acompanhante,idade_acompanhante,numero_usb,desp,h_ch,km_final,cod_ir,cod_ps) VALUES('$data','$sexo','$hospital','$nome','$rg','$idade','$phone','$local_ocorrencia','$nome_acompanhante','$idade_acompanhante', '$usb','desp','h_ch','km_final','cod_ir','cod_ps')");
    }
  
    else
    { 
        $acompanhante = 0;
        $comando = $pdo->prepare("INSERT INTO ocorrencia(data_ocorrencia,sexo,nome_hospital,nome_paciente,registro_paciente,idade_paciente,telefone_paciente,local_ocorrencia,nome_acompanhante,idade_acompanhante,numero_usb,desp,h_ch,km_final,cod_ir,cod_ps) VALUES('$data','$sexo','$hospital','$nome','$rg','$idade','$phone','$local_ocorrencia',NULL, NULL, '$usb','desp','h_ch','km_final','cod_ir','cod_ps')");
    }

    session_start();

    $_SESSION['id_ocorrencia'] = $pdo->lastInsertId();
    $_SESSION['data'] = $data;
    $_SESSION['sexo'] = $sexo;
    $_SESSION['hospital'] = $hospital;
    $_SESSION['nome_paciente'] = $nome;
    $_SESSION['idade'] = $idade;
    $_SESSION['rg'] = $rg;
    $_SESSION['phone'] = $phone;
    $_SESSION['local_ocorrencia'] = $local_ocorrencia;
    $_SESSION['nome_acompanhante'] = $nome_acompanhante;
    $_SESSION['idade_acompanhante'] = $idade_acompanhante;

    $resultado = $comando->execute();
    header("Location: dados2.html");

?>