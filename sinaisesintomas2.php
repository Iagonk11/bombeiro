<?php

    include("conecta.php");
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
    $opcao19= $_POST["opcao19"];
    $opcao20= $_POST["opcao20"];
    $opcao21= $_POST["opcao21"];
    $opcao22= $_POST["opcao22"];

    $comando = $pdo->prepare("UPDATE sinais_sintomas SET hipertensao ='$opcao2', hipotensao='$opcao3', nauseas_vomitos='$opcao4', nasoragia='$opcao5', obito='$opcao6', otorreia='$opcao7', otorragia='$opcao8', taquipneia='$opcao9', o_v_a_c_e='$opcao10', priaprismo='$opcao11', prurido_pele='$opcao12', sede='$opcao13', sinal_batile='$opcao14', sinal_guaxinim='$opcao15', sudorese='$opcao16',taquicardia='$opcao17',tontura='$opcao18',pupilas='$opcao19',parada='$opcao20', hemorragia='$opcao21', outros='$opcao22' Where hipertensao = NULL ");
    $resultado = $comando->execute();
    header("Location: sucesso.html");

?>