<?php

$select = isset($_GET["pesq"])?$_GET["pesq"]:"xxxxx";
$numero = isset($_GET["numero"])?$_GET["numero"]:0;
$paciente = isset($_GET["paciente"])?$_GET["paciente"]:"xxxxx";
$local = isset($_GET["local"])?$_GET["local"]:"xxxxx";
$hospital = isset($_GET["hospital"])?$_GET["hospital"]:"xxxxx";
$data = isset($_GET["data"])?$_GET["data"]:"1900-02-02";

include("conecta.php");
if($select == "N° da ocorrência"){
    $comando = $pdo->prepare("SELECT * FROM ocorrencia where id_ocorrencia='$numero'");
}
else if($select == "Nome"){
    $comando = $pdo->prepare("SELECT * FROM ocorrencia where nome_paciente LIKE '%$paciente%'");
}
else if($select == "Local"){
    $comando = $pdo->prepare("SELECT * FROM ocorrencia where `local_ocorrencia` LIKE '%$local%'");
}
else if($select == "Hospital"){
    $comando = $pdo->prepare("SELECT * FROM ocorrencia where `nome_hospital` LIKE '%$hospital%'");
}
else if($select == "Data"){
    $comando = $pdo->prepare("SELECT * FROM ocorrencia where `data_ocorrencia`='$data'");
}





else{
    $comando = $pdo->prepare("SELECT * FROM ocorrencia where id_ocorrencia=0");
}

$resultado = $comando->execute();



include('conecta.php');
    if(isset($_POST['entrar'])){
        $email = $_POST['email'];
        $senha = $_POST['senha'];
        $cpf = $_POST['cpf'];

include('conecta.php');
    $comando = $pdo->prepare("SELECT * from voluntario WHERE email='$email' and senha='$senha' and cpf='$cpf'" );
    $resultado = $comando->execute();
    $n = 0;
    while ($linhas = $comando->fetch())
    {
        $n = $n-1;
    }
    if($n == 0){
        header("Location: login.php?login=0");
    }
    }
    if(isset($_POST["cadastro"])){
        header("Location: principal.php");}

?>


<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>pesquisa</title>
    
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            display: flex;
            align-items: center;
            align-content: center;
            flex-direction: column;
            color: rgb(255, 255, 255);
            text-shadow: 2px 2px 4px rgba(255, 255, 255, 0.5);

        }

        .pesquisas {
            width: 80%;
        }

        fieldset input {
            width: 18%
        }

        .pesquisa input {
            width: 40%
        }

        .usuario {
            width: 100%;
            background-color: #ffffff9d;
            color: black;

        }

        .usuariot {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid black;
            text-align: center;
        }

        thead {
            background: linear-gradient(0deg, rgba(78, 4, 4, 1) 0%, rgba(218, 21, 21, 1) 100%);
            color: #fff
        }

        td img {
            margin-top: 5px;
            cursor: pointer
        }

        .botaoen {
            width: 10%;
            height: 32px;
            background-color: #c52020;
            color: #fff;
            cursor: pointer;
            font-size: 14px;
            font-weight: 600;
            font-family: 'Poppins', sans-serif;
            border: none;
            border-radius: 5px;
            transition: .4s;
            margin-left: 50px;

        }

        .pesq 
        {
            width: 20%;
            height: 36px;
            font-size: 14px;
            font-family: 'Poppins', sans-serif;
            margin-left: 10px;
            
        }

        .inpute{
            display: none;
            width: 60%;
            height: 30px;
            font-size: 14px;
            font-family: 'Poppins', sans-serif;
            margin-left: 10px;
        }
        #i1{
            display: block
        }

        .pesquisa{
            width: 100%;
            display: flex;
            flex-direction: row;
            justify-content: space-around;
        }

        legend{
            font-size: 20px;
            color: #000;
        }
        
    </style>

</head>

<body>

    <div class="pesquisas">
        <h2>Histórico de ocorrência - Bombeiros voluntários</h2>
        <form action="pesquisa.php" method="get">

            <fieldset class="pesquisa">
                <legend> Pesquisar paciente </legend>
                Pesquisar por:
                <select name="pesq" id="pesq" class="pesq" onclick="Input();">
                    <option value="N° da ocorrência">N° da ocorrência</option>
                    <option value="Nome">Nome do Paciente</option>
                    <option value="Local">Local da Ocorrência</option>
                    <option value="Hospital">Nome do Hospital</option>
                    <option value="Data">Data da Ocorrência</option>
                </select>
                <input type="text" class="inpute" placeholder="Digite o N° da ocorrência" id="i1" name="numero">
                <input type="text" class="inpute" placeholder="Digite o Nome do Paciente" id="i2" name="paciente">
                <input type="text" class="inpute" placeholder="Digite o Local da Ocorrência" id="i3" name="local">
                <input type="text" class="inpute" placeholder="Digite o nome do Hospital" id="i4" name="hospital">
                <input type="date" class="inpute" placeholder="Digite a Data da Ocorrência" id="i5" name="data">
                <input type="submit" class="botaoen" value="Pesquisar" style="width: 10%;" >

            </fieldset>
        </form>

        <br>

        <div class="usuario">
            <table border="1" class="usuariot">
                <thead>
                    <th>N° da ocorrência</th>
                    <th>Nome</th>
                    <th>Local</th>
                    <th>Hospital</th>
                    <th>Data</th>
                    <th>--</th>
                </thead>

               
                <?php
                        while ($linhas = $comando->fetch()){
                            $id_paciente = $linhas["id_ocorrencia"];
                            $nome = $linhas["nome_paciente"];
                            $local = $linhas["local_ocorrencia"];
                            $hospital = $linhas["nome_hospital"];
                            $data = $linhas["data_ocorrencia"];
                            $temp = explode("-",$data);
                            $data = $temp[2] . "/" . $temp[1] . "/" . $temp[0];
                            echo("
                                <tr>
                                    <td>$id_ocorrência</td>
                                    <td>$nome</td>
                                    <td>$local</td>
                                    <td>$hospital</td>
                                    <td>$data</td>
                                    <td>
                                    <img src='./image/lupa.png' width='25px'>
                                    </td>
                                </tr>
                            ");
                        }
                    ?>
                 

            </table>
        </div>
    </div>
    <script>
        function Editar(txtnome, txtemail, txtsenha, txtcep) {
            nome.value = txtnome;
            email.value = txtemail;
            senha.value = txtsenha;
            cep.value = txtcep;
        }

        function Input(){
            if (document.getElementById('pesq').value == "N° da ocorrência") {
            document.getElementById('i1').style.display ='block';
            document.getElementById('i2').style.display ='none';
            document.getElementById('i3').style.display ='none';
            document.getElementById('i4').style.display ='none';
            document.getElementById('i5').style.display ='none';}

            if (document.getElementById('pesq').value == "Nome") {
            document.getElementById('i1').style.display ='none';
            document.getElementById('i2').style.display ='block';
            document.getElementById('i3').style.display ='none';
            document.getElementById('i4').style.display ='none';
            document.getElementById('i5').style.display ='none';}

            if (document.getElementById('pesq').value == "Local") {
            document.getElementById('i1').style.display ='none';
            document.getElementById('i2').style.display ='none';
            document.getElementById('i3').style.display ='block';
            document.getElementById('i4').style.display ='none';
            document.getElementById('i5').style.display ='none';}

            if (document.getElementById('pesq').value == "Hospital") {
            document.getElementById('i1').style.display ='none';
            document.getElementById('i2').style.display ='none';
            document.getElementById('i3').style.display ='none';
            document.getElementById('i4').style.display ='block';
            document.getElementById('i5').style.display ='none';}

            if (document.getElementById('pesq').value == "Data") {
            document.getElementById('i1').style.display ='none';
            document.getElementById('i2').style.display ='none';
            document.getElementById('i3').style.display ='none';
            document.getElementById('i4').style.display ='none';
            document.getElementById('i5').style.display ='block';}
        }
        
    
  

    </script>
</body>

</html>