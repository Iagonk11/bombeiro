<?php
include("conecta.php");
$opcao1=isset($_POST["opcao1"]) ? "1" : "0";
$opcao2=isset($_POST["opcao2"]) ? "1" : "0";
$opcao3=isset($_POST["opcao3"]) ? "1" : "0";
$opcao4=isset($_POST["opcao4"]) ? "1" : "0";
$opcao5=isset($_POST["opcao5"]) ? "1" : "0";
$opcao6=isset($_POST["opcao6"]) ? "1" : "0";
$opcao7=isset($_POST["opcao7"]) ? "1" : "0";
$opcao8=isset($_POST["opcao8"]) ? "1" : "0";
$opcao9=isset($_POST["opcao9"]) ? "1" : "0";
$opcao10=isset($_POST["opcao10"]) ? "1" : "0";

$comando = $pdo->prepare("INSERT INTO vitima_era (ciclista,condutor_moto,gestante,banco_frente,pas_moto,condutor_carro,clinico,trauma,banco_tras,pedestre) VALUES ('$opcao1', '$opcao2', '$opcao3', '$opcao4', '$opcao5', '$opcao6', '$opcao7', '$opcao8', '$opcao9', '$opcao10')");
$resultado = $comando->execute();
header("Location: ");

?>

