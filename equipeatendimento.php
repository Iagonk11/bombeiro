<?php
include("conecta.php");
$opcao1= $_POST ["opcao1"];
$opcao2= $_POST ["opcao2"];
$opcao3= $_POST ["opcao3"];
$opcao4= $_POST ["opcao4"];
$opcao5= $_POST ["opcao5"];

$comando = $pdo->prepare("INSERT INTO equipeatendimento (m,s1,s2,s3,demandante) VALUES ('$opcao1', '$opcao2', '$opcao3','$opcao4','$opcao5')");
$resultado = $comando->execute();
header("Location: sucesso.html");



?>