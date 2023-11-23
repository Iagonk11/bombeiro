

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="image/logo_noar.png">
    <link rel="stylesheet" href="css/login.css">
    <script src="https://kit.fontawesome.com/a265de8dac.js" crossorigin="anonymous"></script>
    <title>Login</title>
</head>

<body onload()>

    <div class="formulario">
        <form class="login_form" method="post" action="passar.php">
            <div class="form_header">
                <h1>Login</h1>
                <img src="image/logo_noar.png" width="90px">
            </div>

                <div class="input_box">
                    <label for="email">
                        Email
                        <div class="input_field">
                            <i class="fa-solid fa-envelope"></i>
                            <input type="email" id="email" name="email">
                        </div>
                    </label>
                </div>

                <div class="input_box">
                    <label for="senha">
                        Senha
                        <div class="input_field">
                            <i class="fa-solid fa-key"></i>
                            <input type="password" id="senha" name="senha">
                        </div>
                    </label>
                </div>

            

            <input type="submit" value="Login" class="login_button" name="login">

        </form>
    </div>
<?php

if(isset($_GET["login"])){
  $login = $_GET["login"];
  if($login == 0){
    echo("<script> alert('Email ou Senha incorretos')</script>");
    
  }
}

                                      

?>  

</body>

</html>