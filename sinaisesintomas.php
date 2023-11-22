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
$opcao12=isset($_POST["opcao12"]) ? "1" : "0";
$opcao13=isset($_POST["opcao13"]) ? "1" : "0";
$opcao14=isset($_POST["opcao14"]) ? "1" : "0";
$opcao15=isset($_POST["opcao15"]) ? "1" : "0";
$opcao16=isset($_POST["opcao16"]) ? "1" : "0";
$opcao17=isset($_POST["opcao17"]) ? "1" : "0";
$opcao18=isset($_POST["opcao18"]) ? "1" : "0";
$opcao19=isset($_POST["opcao19"]) ? "1" : "0";
$opcao20=isset($_POST["opcao20"]) ? "1" : "0";
$opcao21=isset($_POST["opcao21"]) ? "1" : "0";
$opcao22=isset($_POST["opcao22"]) ? "1" : "0";
$opcao23= $_POST["opcao23"];
$opcao24= $_POST["opcao24"];

$comando = $pdo->prepare("INSERT INTO sinais_sintomas (abdomen_sensivel_rigido,afundamento_cranio,agitacao,amnesia,angina_de_peito,apineia,bradicardia,enfizema_subcotaneo,bradipneia,cefaleia,convulsao,decorticacao,deformidade,estatese_de_jugular,desmaio,desvio_de_traqueia,dispneia_menor2m,dor_local,face_palida,bronco_aspirando,descerebracao,cianose,edema) VALUES ('$opcao1', '$opcao2', '$opcao3', '$opcao4', '$opcao5', '$opcao6', '$opcao7', '$opcao8', '$opcao9', '$opcao10', '$opcao12', '$opcao13', '$opcao14', '$opcao15', '$opcao16', '$opcao17', '$opcao18', '$opcao19', '$opcao20', '$opcao21', '$opcao22', '$opcao23', '$opcao24')");
$resultado = $comando->execute();
header("Location: ");



?>