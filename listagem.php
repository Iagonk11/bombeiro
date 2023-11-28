<?php
include("conecta.php");
$nome = "";
if( isset($_GET["nome"])){
    $nome = $_GET["nome"];
    $comando = $pdo->prepare("SELECT * FROM ocorrencia where nome_paciente='$nome'");
}else{
    $comando = $pdo->prepare("SELECT * FROM ocorrencia");
}

    

$resultado = $comando->execute();

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listagem</title>
    <link href="css/entregas.css" rel="stylesheet"> 
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap');
        body{
            max-width: 100%;
            font-family: 'Poppins', sans-serif;
            display: flex;
            align-items: center;
            align-content: center;
            justify-content: center;
            justify-items: center;
            flex-direction: column;
            margin: 0 auto;
            margin-left: 0px;
            padding: 1px;
            background-color: #f3f3f3;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;

        }

        fieldset input{
            width: 18%;
        }

        .pesquisa input{
            width: 50%;
        }

        .usuario{
            width: 100%;
            display: flex;
            flex-direction: column;
        }

        .usuariot{
            width: 100%;
            border-collapse: collapse;
            border: 1px solid black;
            text-align: center;
            font-size:10px;
        }

       

        thead{
            background-color: #000;
            color: #fff
        }

        td img{
            margin-top: 5px;
            cursor: pointer
        }
    </style>

</head>
<body>
    
    <div class="paciente">
        <h2>Informações Ocorrência</h2>
        <form action="listagem.php" method="get">

            <fieldset class="pesquisa">
                <legend> Pesquisar Paciente </legend>
                
                        <input type="text" name="nome" placeholder="nome">
                        <input type="submit" class="botaoen" value="Pesquisar" style="width: 30%;">
                 
               </fieldset>
            </form>

            <br>

            <fieldset>
             <legend> Adicionar/Alterar Paciente </legend>
             <form action="listagem2.php" method="post">
                    <input type="text" id="data" name="data" placeholder="data">       
                    <input type="text" id="sexo" name="sexo" placeholder="sexo" >
                    <input type="text" id="hospital" name="hospital" placeholder="hospital">
                    <input type="text" id="nome" name="nome" placeholder="nome">
                    <input type="text" id="idade" name="idade" placeholder="idade">
                    <input type="text" id="rg" name="rg" placeholder="rg">
                    <input type="text" id="phone" name="phone" placeholder="phone">
                    <input type="text" id="local_ocorrencia" name="local_ocorrencia" placeholder="local_ocorrencia">
                    <input type="text" id="acompanhante" name="acompanhante" placeholder="acompanhante">
                    <input type="text" id="nome_acompanhante" name="nome_acompanhante" placeholder="nome_acompanhante">
                    <input type="text" id="idade_acompanhante" name="idade_acompanhante" placeholder="idade_acompanhante">
              
            </fieldset>
          
            <div class="botoesen">
            
            <input type="submit" class="botaoen" name="alterar" value="Alterar">
            <input type="submit" class="botaoen" name="inserir" value="Inserir">
            <input type="reset" value="Limpar" class="botaoen">
            <input type="submit" value="Excluir" name="excluir" class="botaoen">
        </div>
            </form>

            <div class="usuario">
                <table border="1" class="usuariot">
                    <thead>
                        <th>data</th>
                        <th>sexo</th>
                        <th>hospital</th>
                        <th>nome</th>
                        <th>idade</th>
                        <th>rg</th>
                        <th>phone</th>
                        <th>local_ocorrencia</th>
                        <th>nome_acompanhante</th>
                        <th>idade_acompanhante</th>
                        <th>--</th>
                    </thead>
                    <?php
                        while ($linhas = $comando->fetch()){
                            $data = $linhas["data_ocorrencia"];
                            $sexo = $linhas["sexo"];
                            $hospital = $linhas["nome_hospital"];
                            $nome = $linhas["nome_paciente"];
                            $idade = $linhas["idade_paciente"];
                            $rg= $linhas["registro_paciente"];
                            $phone= $linhas["telefone_paciente"];
                            $local_ocorrencia= $linhas["local_ocorrencia"];
                            $nome_acompanhante= $linhas["nome_acompanhante"];
                            $idade_acompanhante= $linhas["idade_acompanhante"];

                            echo("
                                <tr>
                                    <td>$data</td>
                                    <td>$sexo</td>
                                    <td>$hospital</td>
                                    <td>$nome</td>
                                    <td>$idade</td>
                                    <td>$rg</td>
                                    <td>$phone</td>
                                    <td>$local_ocorrencia</td>
                                    <td>$nome_acompanhante</td>
                                    <td>$idade_acompanhante</td>
                                    <td>
                                    <img src='image/lapis.png' width='25px' onclick=\"Editar('$data','$sexo','$hospital','$nome','$idade','$rg','$phone','$local_ocorrencia','$nome_acompanhante','$idade_acompanhante');\" >
                                    </td>
                                </tr>
                            ");
                        }
                    ?>
                </table>
            </div>
    </div>
<script>
    function Editar(txtdata, txtsexo, txthospital, txtnome, txtidade, txtrg, txtphone, txtlocal_ocorrencia, txtnome_acompanhante, txtidade_acompanhante){
        data.value = txtdata;
        sexo.value = txtsexo;
        hospital.value = txthospital;
        nome.value = txtnome;
        idade.value = txtidade;
        rg.value = txtrg;
        phone.value = txtphone;
        local_ocorrencia.value = txtlocal_ocorrencia;
        nome_acompanhante.value = txtnome_acompanhante;
        idade_acompanhante.value = txtidade_acompanhante;

    }

</script>
</body>
</html>