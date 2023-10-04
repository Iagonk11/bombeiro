-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Out-2023 às 13:20
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bombeirojoao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ocorrencia`
--

CREATE TABLE `ocorrencia` (
  `data` date NOT NULL,
  `sexo` varchar(2) NOT NULL,
  `nome_hospital` varchar(255) NOT NULL,
  `nome_paciente` varchar(255) NOT NULL,
  `idade_paciente` int(11) NOT NULL,
  `registro_paciente` int(15) NOT NULL,
  `telefone_paciente` int(11) NOT NULL,
  `local_ocorrencia` varchar(255) NOT NULL,
  `nome_acompanhante` varchar(255) DEFAULT NULL,
  `idade_acompanhante` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_ocorrencia`
--

CREATE TABLE `tipo_ocorrencia` (
  `causado_animais` int(11) DEFAULT NULL,
  `meio_transporte` int(11) DEFAULT NULL,
  `desmoronamento/deslizamento` int(11) DEFAULT NULL,
  `emergencia_medica` int(11) DEFAULT NULL,
  `queda_2M` int(11) DEFAULT NULL,
  `tentativa_suicidio` int(11) DEFAULT NULL,
  `queda_propria_altura` int(11) DEFAULT NULL,
  `afogamento` int(11) DEFAULT NULL,
  `agressao` int(11) DEFAULT NULL,
  `atropelamento` int(11) DEFAULT NULL,
  `choque_eletrico` int(11) DEFAULT NULL,
  `desabamento` int(11) DEFAULT NULL,
  `domestico` int(11) DEFAULT NULL,
  `esportivo` int(11) DEFAULT NULL,
  `intoxicacao` int(11) DEFAULT NULL,
  `queda_bicicleta` int(11) DEFAULT NULL,
  `queda_moto` int(11) DEFAULT NULL,
  `queda_menor_2M` int(11) DEFAULT NULL,
  `trabalho` int(11) DEFAULT NULL,
  `transferencia` int(11) DEFAULT NULL,
  `outro` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
