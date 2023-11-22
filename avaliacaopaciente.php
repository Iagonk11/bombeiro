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
$opcao11=isset($_POST["opcao11"]) ? "1" : "0";
$opcao12=isset($_POST["opcao12"]) ? "1" : "0";
$opcao13=isset($_POST["opcao13"]) ? "1" : "0";
$opcao14=isset($_POST["opcao14"]) ? "1" : "0";
$opcao15=isset($_POST["opcao15"]) ? "1" : "0";
$opcao16=isset($_POST["opcao16"]) ? "1" : "0";
$opcao17=isset($_POST["opcao17"]) ? "1" : "0";
$opcao18=isset($_POST["opcao18"]) ? "1" : "0";
$opcao19=isset($_POST["opcao19"]) ? "1" : "0";
$opcao20=isset($_POST["opcao20"]) ? "1" : "0";
$outro= $_POST["outro"];

$comando = $pdo->prepare("INSERT INTO avaliacaopaciente (causadoanimais,meiodetransporte,desmoronamento,emergencia,queda_altura2m,tentativasuicidio,queda_propria_altura,afogamento,agressao,atropelamento,choque_eletrico,desabamento,domestico,esportivo,intoxicacao,queda_bicicleta,queda_moto,queda_menor_2m,trabalho,transferencia,outro) VALUES ('$opcao1', '$opcao2', '$opcao3', '$opcao4', '$opcao5', '$opcao6', '$opcao7', '$opcao8', '$opcao9', '$opcao10', '$opcao11', '$opcao12', '$opcao13', '$opcao14', '$opcao15', '$opcao16', '$opcao17', '$opcao18', '$opcao19', '$opcao20', '$outro')");
$resultado = $comando->execute();
header("Location: sucesso.html");



?>