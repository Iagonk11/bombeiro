<?php
    include("conecta.php");

    $data =$_POST["data_ocorrencia"];
    $sexo =$_POST["sexo"];
    $hospital =$_POST["nome_hospital"];
    $nome =$_POST["nome_paciente"];
    $idade =$_POST["idade_paciente"];
    $rg =$_POST["registro_paciente"];
    $phone =$_POST["telefone_paciente"];
    $local_ocorrencia =$_POST["local_ocorrencia"];
    $nome_acompanhante =$_POST["nome_acompanhante"];
    $idade_acompanhante =$_POST["idade_acompanhante"];

    if(isset($_POST["inserir"]))
    {
        $comando = $pdo->prepare("INSERT INTO ocorrencia VALUES ('$data', '$sexo', '$hospital','$nome','$idade','$rg','$phone','$local_ocorrencia','$acompanhante', '$nome_acompanhante', '$idade_acompanhante')");
        $resultado = $comando->execute();
    
        // para voltar no forms
        header("Location: adm.php");
    }
    if(isset($_POST["excluir"]))
    {
        $comando = $pdo->prepare("DELETE FROM ocorrencia where registro_paciente='$rg'");
        $resultado = $comando->execute();
        header("Location: adm.php");
        }
    if(isset($_POST["alterar"]))
    {
        $comando = $pdo->prepare("UPDATE ocorrencia SET data_ocorrencia='$data', sexo='$sexo', nome_hospital='$hospital',
         nome_paciente='$nome', idade_paciente='$idade',registro_paciente='$rg', telefone_paciente='$phone',
          local_ocorrencia='$local_ocorrencia', nome_acompanhante='$nome_acompanhante', 
          idade_acompanhante='$idade_acompanhante' WHERE registro_paciente='$rg'");
        $resultado = $comando->execute();
        header("Location: adm.php");
        }
?>