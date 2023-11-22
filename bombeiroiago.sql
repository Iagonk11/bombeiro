-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Nov-2023 às 13:43
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
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`nome`, `email`, `telefone`, `senha`) VALUES
('aofnpsc', 'afafwqfqaf@gmail.com', '13242352', 'senha'),
('iago', 'iago@gmail.com', '2147483647', 'senha'),
('robson', 'robson@gmail.com', '0', 'senha'),
('andre', 'andre@gmail.com', '2147483647', 'senha'),
('marmol', 'marmol@gmail.com', '2147483647', '987'),
('amabiler', 'amabile@gmail.com', '47956982135', '963'),
('amabiler', 'amabile@gmail.com', '47956982135', '963'),
('amabiler', 'amabile@gmail.com', '47956982135', '963'),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('Lucas', 'lucas@gmail.com', '47986524893', '456'),
('', '', '', '');

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
-- Estrutura da tabela `problemas`
--

CREATE TABLE `problemas` (
  `idproblema` int(11) NOT NULL,
  `respiratorio` varchar(255) NOT NULL,
  `obstetrico` varchar(255) NOT NULL,
  `diabetes` varchar(255) NOT NULL,
  `transporte` varchar(255) NOT NULL,
  `psiquiatrico` int(11) NOT NULL,
  `outros` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `problemas`
--

INSERT INTO `problemas` (`idproblema`, `respiratorio`, `obstetrico`, `diabetes`, `transporte`, `psiquiatrico`, `outros`) VALUES
(1, '-----', 'Hiperglicemia', '0', '-----', 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `procedimentos`
--

CREATE TABLE `procedimentos` (
  `idprocedimento` int(11) NOT NULL,
  `aspiracao` int(11) NOT NULL,
  `avalinicial` int(11) NOT NULL,
  `avaldirigida` int(11) NOT NULL,
  `avalcontinuada` int(11) NOT NULL,
  `chaverautek` int(11) NOT NULL,
  `canulaguedel` int(11) NOT NULL,
  `desobstrucaova` int(11) NOT NULL,
  `empregodea` int(11) NOT NULL,
  `gerenciamentoriscos` int(11) NOT NULL,
  `limpezaferimento` int(11) NOT NULL,
  `curativos` int(11) NOT NULL,
  `compressivo` int(11) NOT NULL,
  `encravamento` int(11) NOT NULL,
  `ocular` int(11) NOT NULL,
  `queimadura` int(11) NOT NULL,
  `simples` int(11) NOT NULL,
  `3pontas` int(11) NOT NULL,
  `imobilizacoes` int(11) NOT NULL,
  `membroinfdir` int(11) NOT NULL,
  `membroinfesq` int(11) NOT NULL,
  `membrosupdir` int(11) NOT NULL,
  `membrosupesq` int(11) NOT NULL,
  `quadril` int(11) NOT NULL,
  `cervical` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `procedimentos`
--

INSERT INTO `procedimentos` (`idprocedimento`, `aspiracao`, `avalinicial`, `avaldirigida`, `avalcontinuada`, `chaverautek`, `canulaguedel`, `desobstrucaova`, `empregodea`, `gerenciamentoriscos`, `limpezaferimento`, `curativos`, `compressivo`, `encravamento`, `ocular`, `queimadura`, `simples`, `3pontas`, `imobilizacoes`, `membroinfdir`, `membroinfesq`, `membrosupdir`, `membrosupesq`, `quadril`, `cervical`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `vitima_era`
--

CREATE TABLE `vitima_era` (
  `idvitimaera` int(11) NOT NULL,
  `ciclista` int(11) NOT NULL,
  `condutor_moto` int(11) NOT NULL,
  `gestante` int(11) NOT NULL,
  `banco_frente` int(11) NOT NULL,
  `pas_moto` int(11) NOT NULL,
  `condutor_carro` int(11) NOT NULL,
  `clinico` int(11) NOT NULL,
  `trauma` int(11) NOT NULL,
  `banco_tras` int(11) NOT NULL,
  `pedestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `vitima_era`
--

INSERT INTO `vitima_era` (`idvitimaera`, `ciclista`, `condutor_moto`, `gestante`, `banco_frente`, `pas_moto`, `condutor_carro`, `clinico`, `trauma`, `banco_tras`, `pedestre`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `problemas`
--
ALTER TABLE `problemas`
  ADD PRIMARY KEY (`idproblema`);

--
-- Índices para tabela `procedimentos`
--
ALTER TABLE `procedimentos`
  ADD PRIMARY KEY (`idprocedimento`);

--
-- Índices para tabela `vitima_era`
--
ALTER TABLE `vitima_era`
  ADD PRIMARY KEY (`idvitimaera`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `problemas`
--
ALTER TABLE `problemas`
  MODIFY `idproblema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `procedimentos`
--
ALTER TABLE `procedimentos`
  MODIFY `idprocedimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vitima_era`
--
ALTER TABLE `vitima_era`
  MODIFY `idvitimaera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
