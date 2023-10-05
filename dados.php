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

    if(Isset($_POST["acompanhante"])) {
        $acompanhante = 1;
        $comando = $pdo->prepare("INSERT INTO ocorrencia('data',sexo,nome_hospital,nome_paciente,registro_paciente,idade_paciente,telefone_paciente,local_paciente,nome_acompanhante,idade_acompanhante) VALUES('$data','$sexo','$hospital','$nome','$idade','$rg','$phone','$local_ocorrencia','$nome_acompanhante','$idade_acompanhante')");
    }
  
    else
    { 
        $acompanhante = 0;
        $comando = $pdo->prepare("INSERT INTO ocorrencia('data',sexo,nome_hospital,nome_paciente,registro_paciente,idade_paciente,telefone_paciente,local_paciente,nome_acompanhante,idade_acompanhante) VALUES('$data','$sexo','$hospital','$nome','$idade','$rg','$phone','$local_ocorrencia')");
    }

    $resultado = $comando->execute();
    header("Location: dados2.html");

?>