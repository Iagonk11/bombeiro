<?php
    include("conecta.php");

    $data =$_POST["data"];
    $sexo =$_POST["sexo"];
    $hospital =$_POST["hospital"];
    $nome =$_POST["nome"];
    $idade =$_POST["idade"];
    $rg =$_POST["rg"];
    $phone =$_POST["phone"];
    $local_ocorrencia =$_POST["local_ocorrencia"];
    $acompanhante =$_POST["acompanhante"];
    $nome_acompanhante =$_POST["nome_acompanhante"];
    $idade_acompanhante =$_POST["idade_acompanhante"];

    if(isset($_POST["inserir"]))
    {
        $comando = $pdo->prepare("INSERT INTO ocorrencia VALUES ('$data', '$sexo', '$hospital','$nome','$idade','$rg','$phone','$local_ocorrencia','$acompanhante', '$nome_acompanhante', '$idade_acompanhante')");
        $resultado = $comando->execute();
    
        // para voltar no forms
        header("Location: listagem.php");
    }
    if(isset($_POST["excluir"]))
    {
        $comando = $pdo->prepare("DELETE FROM ocorrencia where registro_paciente='$rg'");
        $resultado = $comando->execute();
        header("Location: listagem.php");
        }
    if(isset($_POST["alterar"]))
    {
        $comando = $pdo->prepare("UPDATE ocorrencia SET data_ocorrencia='$data', sexo='$sexo', nome_hospital='$hospital', nome_paciente='$nome', idade_paciente='$idade',registro_paciente='$rg', telefone_paciente='$phone', local_ocorrencia='$local_ocorrencia', nome_acompanhante='$nome_acompanhante', idade_acompanhante='$idade_acompanhante' WHERE registro_paciente='$rg'");
        $resultado = $comando->execute();
        header("Location: listagem.php");
        }
?>