<?php

include("conecta.php");

$rg = $_POST["rg"];
$nome = $_POST["nome"];
$phone = $_POST["phone"];
$idade = $_POST["idade"];
$idade_acompanhante = $_POST["idade_acompanhante"];
$nome_acompanhante = $_POST["nome_acompanhante"];

if(isset($_POST["Excluir"]))
{
$comando = $pdo->prepare("DELETE FROM ocorrencia where registro_paciente='$rg'");
$resultado = $comando->execute();
header("Location: adm.html");
}

if(isset($_POST["Atualizar"]))
{
$comando = $pdo->prepare("UPDATE ocorrencia SET nome_paciente='$nome',telefone_paciente='$phone',idade_paciente='$idade',idade_acompanhante='$idade_acompanhante',nome_acompanhante='$nome_acompanhante' WHERE registro_paciente='$rg'");
$resultado = $comando->execute();
header("Location: adm.html");
}

if( isset($_POST["Listar"])){
    $comando = $pdo->prepare("SELECT * FROM ocorrencia where registro_paciente='$rg'");

    while ($linhas = $comando->fetch())
    {
        
            $n = $linhas["nome"];
            $i = $linhas["idade"];
            $p = $linhas["phone"];
            $i_a = $linhas["idade_acompanhante"];
            $
            $rg = $linhas["registro_paciente"];
            echo($rg);
            $n_a = $linhas["nome_acompanhante"];
            if($rg>0)
            {
            echo("<br> <b>$rg</b> $n $i $p $i_a $n_a <br> <br>");
            }
            else
            {
                header("Location: ");
            }
    }
}
?>