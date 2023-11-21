<?php
include("conecta.php");
$opcao1=isset($_POST["causadoanimais"]) ? "1" : "0";
$opcao2=isset($_POST["meiotransporte"]) ? "1" : "0";
$opcao3=isset($_POST["causadoanimais"]) ? "1" : "0";
$opcao4=isset($_POST["causadocultura"]) ? "1" : "0";
$opcao5=isset($_POST["causadotecnologia"]) ? "1" : "0";
$opcao6=isset($_POST["causadofisica"]) ? "1" : "0";
$opcao7=isset($_POST["causadomaterial"]) ? "1" : "0";
$opcao8=isset($_POST["causadonaturalidade"]) ? "1" : "0";
$opcao9=isset($_POST["causadoforestal"]) ? "1" : "0";
$opcao10=isset($_POST["causadofluvial"]) ? "1" : "0";
$opcao11=isset($_POST["causadofluxo"]) ? "1" : "0";
$opcao12=isset($_POST["causadofluxo"]) ? "1" : "0";

$comando = $pdo->prepare("INSERT INTO tipo_ocorrencia VALUES ('$asp', '$ini', '$dir', '$cont', '$rautek', '$guedel','$va', '$dea', '$riscos', '$fer', '$cura', '$compr','$escr', '$ocu', '$quei', '$sim', '$pont', '$imo','$infd', '$infe', '$supd', '$supe', '$maca', '$rig','$pon', '$capa', '$rcp', '$rola', '$rolam', '$tom','$choq', '$canu', '$colar', '$tamanho', '$ked', '$ttf','$vent', '$oxi', '$rean', '$auxi', '$poli', '$samu','$cit', '$outro')");
$resultado = $comando->execute();
header("Location:materiais.html");



?>