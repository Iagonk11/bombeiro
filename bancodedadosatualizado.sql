-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22/11/2023 às 19:53
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
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, ''),
(4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

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
(3, 'Josevaldo Roberto da Silva', 'josevaldo@bombeiro.com', '47988152558', '12345');

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
(2, 0, 0, 1);

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
(6, '2023-09-14', 'm', 'Dona Helena', 'João Francisco da Silva', '8094011', 18, '47988162657', 'Quadra do Adolfo', 'Marilete de Mattos Silva', 57, '887', '54', '188', '755', '1', '0');

-- --------------------------------------------------------

--
-- Estrutura para tabela `problemas`
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
-- Despejando dados para a tabela `problemas`
--

INSERT INTO `problemas` (`idproblema`, `respiratorio`, `obstetrico`, `diabetes`, `transporte`, `psiquiatrico`, `outros`) VALUES
(2, 'Inalação de Fumaça', 'Hiperglicemia', '1', 'Parto Emergencial', 0, 'Perna Quebrada');

-- --------------------------------------------------------

--
-- Estrutura para tabela `procedimentos`
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
-- Despejando dados para a tabela `procedimentos`
--

INSERT INTO `procedimentos` (`idprocedimento`, `aspiracao`, `avalinicial`, `avaldirigida`, `avalcontinuada`, `chaverautek`, `canulaguedel`, `desobstrucaova`, `empregodea`, `gerenciamentoriscos`, `limpezaferimento`, `curativos`, `compressivo`, `encravamento`, `ocular`, `queimadura`, `simples`, `3pontas`, `imobilizacoes`, `membroinfdir`, `membroinfesq`, `membrosupdir`, `membrosupesq`, `quadril`, `cervical`) VALUES
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sinais_sintomas`
--

CREATE TABLE `sinais_sintomas` (
  `idsinais_sintomas` int(11) NOT NULL,
  `abdomen_sensivel_rigido` int(11) DEFAULT NULL,
  `afundamento_cranio` int(11) DEFAULT NULL,
  `agitacao` int(11) DEFAULT NULL,
  `amnesia` int(11) DEFAULT NULL,
  `angina_de_peito` int(11) DEFAULT NULL,
  `apineia` int(11) DEFAULT NULL,
  `bradicardia` int(11) DEFAULT NULL,
  `enfizema_subcotaneo` int(11) DEFAULT NULL,
  `bradipneia` int(11) DEFAULT NULL,
  `cefaleia` int(11) DEFAULT NULL,
  `convulsao` int(11) DEFAULT NULL,
  `decorticacao` int(11) DEFAULT NULL,
  `deformidade` int(11) DEFAULT NULL,
  `estatese_de_jugular` int(11) DEFAULT NULL,
  `desmaio` int(11) DEFAULT NULL,
  `desvio_de_traqueia` int(11) DEFAULT NULL,
  `dispneia_menor2m` int(11) DEFAULT NULL,
  `dor_local` int(11) DEFAULT NULL,
  `face_palida` int(11) DEFAULT NULL,
  `bronco_aspirando` int(11) DEFAULT NULL,
  `descerebracao` int(11) DEFAULT NULL,
  `cianose` varchar(255) DEFAULT NULL,
  `edema` varchar(255) DEFAULT NULL,
  `hipertensao` int(11) DEFAULT NULL,
  `hipotensao` int(11) DEFAULT NULL,
  `nauseas_vomitos` int(11) DEFAULT NULL,
  `nasoragia` int(11) DEFAULT NULL,
  `obito` int(11) DEFAULT NULL,
  `otorreia` int(11) DEFAULT NULL,
  `otorragia` int(11) DEFAULT NULL,
  `taquipneia` int(11) DEFAULT NULL,
  `o_v_a_c_e` int(11) DEFAULT NULL,
  `priaprismo` int(11) DEFAULT NULL,
  `prurido_pele` int(11) DEFAULT NULL,
  `sede` int(11) DEFAULT NULL,
  `sinal_batile` int(11) DEFAULT NULL,
  `sinal_guaxinim` int(11) DEFAULT NULL,
  `sudorese` int(11) DEFAULT NULL,
  `taquicardia` int(11) DEFAULT NULL,
  `tontura` int(11) DEFAULT NULL,
  `pupilas` varchar(255) DEFAULT NULL,
  `parada` varchar(255) DEFAULT NULL,
  `hemorragia` varchar(255) DEFAULT NULL,
  `outros` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(2, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vitima_era`
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
-- Despejando dados para a tabela `vitima_era`
--

INSERT INTO `vitima_era` (`idvitimaera`, `ciclista`, `condutor_moto`, `gestante`, `banco_frente`, `pas_moto`, `condutor_carro`, `clinico`, `trauma`, `banco_tras`, `pedestre`) VALUES
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

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
-- Índices de tabela `problemas`
--
ALTER TABLE `problemas`
  ADD PRIMARY KEY (`idproblema`);

--
-- Índices de tabela `procedimentos`
--
ALTER TABLE `procedimentos`
  ADD PRIMARY KEY (`idprocedimento`);

--
-- Índices de tabela `sinais_sintomas`
--
ALTER TABLE `sinais_sintomas`
  ADD PRIMARY KEY (`idsinais_sintomas`);

--
-- Índices de tabela `transporte`
--
ALTER TABLE `transporte`
  ADD PRIMARY KEY (`idtransporte`);

--
-- Índices de tabela `vitima_era`
--
ALTER TABLE `vitima_era`
  ADD PRIMARY KEY (`idvitimaera`);

--
-- AUTO_INCREMENT para tabelas despejadas
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
  MODIFY `idbombeiro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `conducao`
--
ALTER TABLE `conducao`
  MODIFY `idconducao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `ocorrencia`
--
ALTER TABLE `ocorrencia`
  MODIFY `id_ocorrencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `problemas`
--
ALTER TABLE `problemas`
  MODIFY `idproblema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `procedimentos`
--
ALTER TABLE `procedimentos`
  MODIFY `idprocedimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `sinais_sintomas`
--
ALTER TABLE `sinais_sintomas`
  MODIFY `idsinais_sintomas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `transporte`
--
ALTER TABLE `transporte`
  MODIFY `idtransporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `vitima_era`
--
ALTER TABLE `vitima_era`
  MODIFY `idvitimaera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
