<?php
include("conecta.php");
$opcao1=isset($_POST["opcao1"]) ? "1" : "0";
$opcao2=isset($_POST["opcao2"]) ? "1" : "0";
$opcao3=isset($_POST["opcao3"]) ? "1" : "0";

$comando = $pdo->prepare("INSERT INTO conducao (deitada,semi_sentada,sentada) VALUES ('$opcao1', '$opcao2', '$opcao3')");
$resultado = $comando->execute();
header("Location: ");



?>