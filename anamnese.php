<?php
include("conecta.php");
$opcao1= $_POST ["opcao1"];
$opcao2=isset($_POST["opcao2"]) ? "1" : "0";
$opcao3= $_POST ["opcao3"];
$opcao4=isset($_POST["opcao4"]) ? "1" : "0";

$comando = $pdo->prepare("INSERT INTO anamnese (oque_aconteceu,aconteceu_outras_vezes,quanto_tempo_aconteceu,possui_problema_saude) VALUES ('$opcao1', '$opcao2', '$opcao3','$opcao4')");
$resultado = $comando->execute();
header("Location: sucesso.html");



?>