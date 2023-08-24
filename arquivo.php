<?php

$op1 = "Não";
$op2 = $_POST["op2"];
$op3 = $_POST["op3"];
$op4 = $_POST["op4"];
$op5 = $_POST["op5"];
$op6 = $_POST["op6"]; 

    if(isset($_POST["op1"])){
        $op1 = "Sim";}
    
include("conecta.php");


$dados = [];  // Variável usada para guardar os dados acima no formato JSON.


$comando = $pdo->prepare("INSERT INTO problemas(Psiquiatrico, Obstetrico, Respiratorio, Transporte, Diabetes, Outro)VALUES('$op1','$op2', '$op3', '$op4', '$op5', '$op6')" );
    $resultado = $comando->execute();
// O trecho abaixo pode estar dentro de um WHILE para guardar a resposta de um SELECT por exemplo
// Neste exemplo estamos apenas devolvendo o que o usuário digitou no formulário
$resposta = 
      [
            "op1" => $op1,
            "op2"  => $op2,
            "op3"  => $op3,
            "op4"  => $op4,
            "op5"  => $op5,
            "op6 "  => $op6,
      ];

array_push($dados, $resposta);
// Até aqui ficaria dentro do WHILE.



// Ao sair do WHILE enviamos de volta para a função JavaScript no formato JSON:
$json_texto = json_encode(["dados" => $dados]);
echo($json_texto);  // Será retornado para dentro do "success" do arquivo index.html

?>