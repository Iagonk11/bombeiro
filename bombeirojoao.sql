-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/11/2023 às 19:28
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

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
-- Estrutura para tabela `avaliacaopaciente`
--

CREATE TABLE `avaliacaopaciente` (
  `idavaliacao` int(11) NOT NULL,
  `causadoanimais` int(11) NOT NULL,
  `meiodetransporte` int(11) NOT NULL,
  `desmoronamento` int(11) NOT NULL,
  `emergencia` int(11) NOT NULL,
  `queda_altura2m` int(11) NOT NULL,
  `tentativasuicidio` int(11) NOT NULL,
  `queda_propria_altura` int(11) NOT NULL,
  `afogamento` int(11) NOT NULL,
  `agressao` int(11) NOT NULL,
  `atropelamento` int(11) NOT NULL,
  `choque_eletrico` int(11) NOT NULL,
  `desabamento` int(11) NOT NULL,
  `domestico` int(11) NOT NULL,
  `esportivo` int(11) NOT NULL,
  `intoxicacao` int(11) NOT NULL,
  `queda_bicicleta` int(11) NOT NULL,
  `queda_moto` int(11) NOT NULL,
  `queda_menor_2m` int(11) NOT NULL,
  `trabalho` int(11) NOT NULL,
  `transferencia` int(11) NOT NULL,
  `outro` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `avaliacaopaciente`
--

INSERT INTO `avaliacaopaciente` (`idavaliacao`, `causadoanimais`, `meiodetransporte`, `desmoronamento`, `emergencia`, `queda_altura2m`, `tentativasuicidio`, `queda_propria_altura`, `afogamento`, `agressao`, `atropelamento`, `choque_eletrico`, `desabamento`, `domestico`, `esportivo`, `intoxicacao`, `queda_bicicleta`, `queda_moto`, `queda_menor_2m`, `trabalho`, `transferencia`, `outro`) VALUES
(1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `idbombeiro` int(11) NOT NULL,
  `nomebombeiro` varchar(255) NOT NULL,
  `emailbombeiro` varchar(255) NOT NULL,
  `telefonebombeiro` varchar(11) NOT NULL,
  `senhabombeiro` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cadastro`
--

INSERT INTO `cadastro` (`idbombeiro`, `nomebombeiro`, `emailbombeiro`, `telefonebombeiro`, `senhabombeiro`) VALUES
(1, '', '', '', ''),
(2, 'Josevaldo Roberto da Silva', 'josevaldo@bombeiro.com', '47988152558', '12345');

-- --------------------------------------------------------

--
-- Estrutura para tabela `conducao`
--

CREATE TABLE `conducao` (
  `idconducao` int(11) NOT NULL,
  `deitada` int(11) NOT NULL,
  `semi_sentada` int(11) NOT NULL,
  `sentada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `conducao`
--

INSERT INTO `conducao` (`idconducao`, `deitada`, `semi_sentada`, `sentada`) VALUES
(1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ocorrencia`
--

CREATE TABLE `ocorrencia` (
  `id_ocorrencia` int(11) NOT NULL,
  `data_ocorrencia` date NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `nome_hospital` varchar(255) NOT NULL,
  `nome_paciente` varchar(255) NOT NULL,
  `registro_paciente` varchar(15) NOT NULL,
  `idade_paciente` int(11) NOT NULL,
  `telefone_paciente` varchar(11) NOT NULL,
  `local_ocorrencia` varchar(255) NOT NULL,
  `nome_acompanhante` varchar(255) DEFAULT NULL,
  `idade_acompanhante` int(11) DEFAULT NULL,
  `numero_usb` varchar(255) DEFAULT NULL,
  `desp` varchar(255) DEFAULT NULL,
  `h_ch` varchar(255) DEFAULT NULL,
  `km_final` varchar(255) DEFAULT NULL,
  `cod_ir` varchar(4) DEFAULT NULL,
  `cod_ps` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `ocorrencia`
--

INSERT INTO `ocorrencia` (`id_ocorrencia`, `data_ocorrencia`, `sexo`, `nome_hospital`, `nome_paciente`, `registro_paciente`, `idade_paciente`, `telefone_paciente`, `local_ocorrencia`, `nome_acompanhante`, `idade_acompanhante`, `numero_usb`, `desp`, `h_ch`, `km_final`, `cod_ir`, `cod_ps`) VALUES
(1, '2023-11-02', 'm', 'Dona Helena', 'Manuel Arduino da Ferreira', '8094023', 54, '47988152574', 'Av. Brasil', NULL, NULL, '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `transporte`
--

CREATE TABLE `transporte` (
  `idtransporte` int(11) NOT NULL,
  `critico` int(11) NOT NULL,
  `potencialmente_instavel` int(11) NOT NULL,
  `instavel` int(11) NOT NULL,
  `estavel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `transporte`
--

INSERT INTO `transporte` (`idtransporte`, `critico`, `potencialmente_instavel`, `instavel`, `estavel`) VALUES
(1, 0, 0, 1, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `avaliacaopaciente`
--
ALTER TABLE `avaliacaopaciente`
  ADD PRIMARY KEY (`idavaliacao`);

--
-- Índices de tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`idbombeiro`);

--
-- Índices de tabela `conducao`
--
ALTER TABLE `conducao`
  ADD PRIMARY KEY (`idconducao`);

--
-- Índices de tabela `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD PRIMARY KEY (`id_ocorrencia`);

--
-- Índices de tabela `transporte`
--
ALTER TABLE `transporte`
  ADD PRIMARY KEY (`idtransporte`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `avaliacaopaciente`
--
ALTER TABLE `avaliacaopaciente`
  MODIFY `idavaliacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `idbombeiro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `conducao`
--
ALTER TABLE `conducao`
  MODIFY `idconducao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ocorrencia`
--
ALTER TABLE `ocorrencia`
  MODIFY `id_ocorrencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `transporte`
--
ALTER TABLE `transporte`
  MODIFY `idtransporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
