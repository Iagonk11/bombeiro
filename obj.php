<?php
include("conecta.php");
$opcao1= $_POST ["opcao1"];

$comando = $pdo->prepare("INSERT INTO objrecolhido (descricao) VALUES ('$opcao1')");
$resultado = $comando->execute();
header("Location: sucesso.html");



?>