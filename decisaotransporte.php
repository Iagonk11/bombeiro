<?php
include("conecta.php");
$opcao1=isset($_POST["opcao1"]) ? "1" : "0";
$opcao2=isset($_POST["opcao2"]) ? "1" : "0";
$opcao3=isset($_POST["opcao3"]) ? "1" : "0";
$opcao4=isset($_POST["opcao4"]) ? "1" : "0";

$comando = $pdo->prepare("INSERT INTO transporte (critico,potencialmente_instavel,instavel,estavel) VALUES ('$opcao1', '$opcao2', '$opcao3','$opcao4')");
$resultado = $comando->execute();
header("Location: ");



?>