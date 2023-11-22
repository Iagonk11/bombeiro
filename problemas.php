<?php
include("conecta.php");
$op1 = $_POST["op1"];
$op2 = $_POST["op2"];
$op3=isset($_POST["op3"]) ? "1" : "0";
$op4 = $_POST["op4"];
$op5 = $_POST["op5"];
$op6 = $_POST["op6"];

$comando = $pdo->prepare("INSERT INTO problemas (respiratorio, obstetrico, diabetes, transporte, psiquiatrico, outros) VALUES ('$op1', '$op2','$op3', '$op4', '$op5', '$op6')" );
$resultado = $comando->execute();
header("Location:  ");

?>