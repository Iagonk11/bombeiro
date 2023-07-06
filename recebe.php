<?php

    if(isset($_POST["op1"])){
        $op1 = "Sim";
    }else{
        $op1 = "Não";
    }

    $op1 = $_POST["op1"];
    $op2 = $_POST["op2"];
    $op3 = $_POST["op3"];

    echo("$op1 <br>");
    echo("$op2 <br>");
    echo("$op3 <br>");

    ?>