-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Nov-2023 às 13:59
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
-- Estrutura da tabela `avaliacaopaciente`
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
  `outro` varchar(255) NOT NULL,
  `id_ocorrencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `idbombeiro` int(11) NOT NULL,
  `nomebombeiro` varchar(255) NOT NULL,
  `emailbombeiro` varchar(255) NOT NULL,
  `telefonebombeiro` varchar(11) NOT NULL,
  `senhabombeiro` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conducao`
--

CREATE TABLE `conducao` (
  `idconducao` int(11) NOT NULL,
  `deitada` int(11) NOT NULL,
  `semi_sentada` int(11) NOT NULL,
  `sentada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `conducao`
--

INSERT INTO `conducao` (`idconducao`, `deitada`, `semi_sentada`, `sentada`) VALUES
(1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ocorrencia`
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
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `avaliacaopaciente`
--
ALTER TABLE `avaliacaopaciente`
  ADD PRIMARY KEY (`idavaliacao`),
  ADD KEY `id_ocorrencia` (`id_ocorrencia`);

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`idbombeiro`);

--
-- Índices para tabela `conducao`
--
ALTER TABLE `conducao`
  ADD PRIMARY KEY (`idconducao`);

--
-- Índices para tabela `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD PRIMARY KEY (`id_ocorrencia`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `avaliacaopaciente`
--
ALTER TABLE `avaliacaopaciente`
  MODIFY `idavaliacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `idbombeiro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `conducao`
--
ALTER TABLE `conducao`
  MODIFY `idconducao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `ocorrencia`
--
ALTER TABLE `ocorrencia`
  MODIFY `id_ocorrencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `avaliacaopaciente`
--
ALTER TABLE `avaliacaopaciente`
  ADD CONSTRAINT `avaliacaopaciente_ibfk_1` FOREIGN KEY (`id_ocorrencia`) REFERENCES `ocorrencia` (`id_ocorrencia`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
