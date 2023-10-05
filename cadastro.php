<?php 
        include("conecta.php");
        $nome= $_POST["nome"];
        $email = $_POST["email"];
        $telefone= $_POST["telefone"];
        $senha=  $_POST["senha"];
        

        $comando = $pdo->prepare(" INSERT INTO cadastro (nome, email, telefone, senha) VALUES ('$nome', '$email', '$telefone', '$senha') ");
        
        $resultado = $comando->execute();

        header("location: login.php")

?>