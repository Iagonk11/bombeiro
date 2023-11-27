<?php

include('conecta.php');
    if(isset($_POST['login'])){
        $email = $_POST['email'];
        $senha = $_POST['senha'];

include('conecta.php');
    $comando = $pdo->prepare("SELECT * from cadastro WHERE emailbombeiro='$email' and senhabombeiro='$senha'" );
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
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dados Pessoais</title>
  <link rel="icon" type="image/png" href="image/logo_noar.png">
  <link rel="stylesheet" href="css/dados.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/css/intlTelInput.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/intlTelInput.min.js"></script>
</head>

<body>
  <div class="formulario">
    <h3>Insira os Dados da Ocorrência</h3>
    <fieldset>
      <form method="post" action="dados.php">
        <div class="forms">
          <div class="arrumar2">
            <div class="data">Data:<input type="date" id="date" name="data"></div>
            <div class="genero">
              Sexo:
              <select name="sexo" id="sexo">
                <option value="-----">-----</option>
                <option value="masculino">Masculino</option>
                <option value="feminino">Feminino</option>
              </select>
            </div>
            <div class="hospital">
              Nome do Hospital: <input type="varchar" id="local" name="hospital">
            </div>
            <div class="nome">
              Nome do Paciente: <input type="varchar" id="nome" name="nome">
            </div>
            <div class="idade">
              Idade: <input type="int" id="idade" name="idade">
            </div>
            <div class="identidade">
              RG/CPF Paciente: <input type="varchar" id="identidade" name="rg">
            </div>

            <div class="telefone">
              Telefone: <br>
              <input id="phone" type="varchar" name="phone" />
              <div class="alert alert-info" style="display: none;"></div>
            </div>
            <div class="local_ocorrencia">
              Local da ocorrência: <input type="varchar" name="local_ocorrencia" id="local_ocorrencia">
            </div>
          </div>
          <div class="arrumar">
            Acompanhante? <input type="checkbox" id="acompanhante" onchange="mostrarTextbox()" name="acompanhante">
          </div>

          <div class="separa_btn">
            <input type="submit" value="Enviar" class="btn" name="Enviar">
            <input type="reset" value="Limpar" class="btn">
          </div>

          <div class="box" id="acompanhant" style="display: none;">
            <div class="acompanhante ">
              Acompanhante:
              <input type="varchar" id="acompanhante2" name="nome_acompanhante">
              <br>
            </div>

            <div class="idade2" id="div_idade">
              Idade:
              <input type="int" id="idade3" name="idade_acompanhante">
            </div>
          </div>
        </div>
      </form>
    </fieldset>
  </div>
</body>

<script>
  const phoneInputField = document.querySelector("#phone");
  const phoneInput = window.intlTelInput(phoneInputField, {
    utilsScript:
      "https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/utils.js",
  });

  const info = document.querySelector(".alert-info");

  function process(event) {
    event.preventDefault();

    const phoneNumber = phoneInput.getNumber();

    info.style.display = "";
    info.innerHTML = `Phone number in E.164 format: <strong>${phoneNumber}</strong>`;
  }

  function getIp(callback) {
    fetch('https://ipinfo.io/json?token=<your token>', { headers: { 'Accept': 'application/json' } })
      .then((resp) => resp.json())
      .catch(() => {
        return {
          country: 'br',
        };
      })
      .then((resp) => callback(resp.country));
  }


  const phoneNumber = window.intlTelInput(phoneInputField, {
    preferredCountries: ["br", "us", "in", "de"],
    utilsScript:
      "https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/utils.js",
  });


  function mostrarTextbox() {
    var checkbox = document.getElementById("acompanhante")
    var form = document.getElementById("acompanhant")




    if (checkbox.checked) {
      acompanhant.style.display = "block";

    } else {
      acompanhant.style.display = "none";
    }

  }

  function mostrarTextbox2() {


  }

</script>

</html>