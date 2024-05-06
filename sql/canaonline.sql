-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/05/2024 às 13:54
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `canaonline`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `apontamentos`
--

CREATE TABLE `apontamentos` (
  `id` int(11) NOT NULL,
  `Data_lancamento` date NOT NULL,
  `Hora_saida` varchar(11) NOT NULL,
  `Liberacao` int(250) NOT NULL,
  `Fazenda` varchar(11) NOT NULL,
  `Operacao` text NOT NULL,
  `Lider` text NOT NULL,
  `Frota` varchar(250) NOT NULL,
  `Motorista` text NOT NULL,
  `Colhedora` varchar(255) NOT NULL,
  `Operador1` text NOT NULL,
  `Transbordo` varchar(255) NOT NULL,
  `Operador2` text NOT NULL,
  `Informacao` text NOT NULL,
  `Created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `apontamentos`
--

INSERT INTO `apontamentos` (`id`, `Data_lancamento`, `Hora_saida`, `Liberacao`, `Fazenda`, `Operacao`, `Lider`, `Frota`, `Motorista`, `Colhedora`, `Operador1`, `Transbordo`, `Operador2`, `Informacao`, `Created`) VALUES
(43, '2024-05-02', '17:57', 133001, '6651', 'Colheita', 'Claudeir Pontes', '97710-0', 'José Euclides Silveira', '97619-1', 'Nivaldo Aparecido Rosa', '97688-2', 'José Carlos da Silva', 'Acertando o Banco Dados', '2024-05-02 16:57:01'),
(45, '2024-05-03', '09:19', 133001, '6651', 'Colheita', 'Claudeir Pontes', '97712-5', 'Claudionor Peixinho', '97628-0', 'Caique Cazeloto', '718', 'Nilson Luis da Silva', 'Banco atualizado', '2024-05-03 08:20:46'),
(47, '2024-05-03', '08:46', 133001, '6651', 'Colheita', 'Claudeir Pontes', '97714-5', 'Mauro Fracaroli', '96842-2', 'Edirson Gomes', '716', 'Fernando Reanto', 'Banco ajuste', '2024-05-03 08:47:02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_colaborador`
--

CREATE TABLE `cad_colaborador` (
  `Id` int(11) NOT NULL,
  `Matricula` varchar(255) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Funcao` varchar(255) NOT NULL,
  `Telefone` varchar(255) NOT NULL,
  `Apelido` varchar(255) NOT NULL,
  `Turno` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `Modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cad_colaborador`
--

INSERT INTO `cad_colaborador` (`Id`, `Matricula`, `Nome`, `Funcao`, `Telefone`, `Apelido`, `Turno`, `created`, `Modified`) VALUES
(10, '7270', 'Marco Germano', 'Operador de Colhedora', '14 99628-9874', 'Marquinhos', 'Noturno', '2024-05-02 14:16:29', NULL),
(19, '7028', 'Luis Otavio Gonçalves', 'Coordenador Logistica', '14 99628-8978', 'Batavito', 'Diurno', '2024-05-03 08:21:30', NULL),
(23, '8090', 'André Luis Araujo', 'Administrativo', '14 99114-5040', 'Pantera Negra', 'Diurno', '2024-05-03 08:47:06', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_equipamentos`
--

CREATE TABLE `cad_equipamentos` (
  `id` int(11) NOT NULL,
  `Frota` varchar(255) NOT NULL,
  `Modelo` varchar(255) NOT NULL,
  `Operacao` varchar(255) NOT NULL,
  `Tag` varchar(255) NOT NULL,
  `Categoria` varchar(255) NOT NULL,
  `Created` datetime DEFAULT NULL,
  `Modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cad_equipamentos`
--

INSERT INTO `cad_equipamentos` (`id`, `Frota`, `Modelo`, `Operacao`, `Tag`, `Categoria`, `Created`, `Modified`) VALUES
(5, '97710', 'Volvo Fh 540 - 6x4', 'Colheita', '710', 'Caminhão Canavieiro', '2024-05-02 14:16:36', '0000-00-00 00:00:00'),
(6, '97710', 'Volvo Fh 540 - 6x4', 'Colheita', '710', 'Caminhão Canavieiro', '2024-05-03 08:11:13', '0000-00-00 00:00:00'),
(7, '601', 'Mercedes Benz 2219', 'Combate Incendio', '601', 'Caminhão', '2024-05-03 08:22:21', '0000-00-00 00:00:00'),
(9, '605', 'Mercedes Benz 2220', 'Prancha', '605', 'Caminhão', '2024-05-03 08:47:15', '0000-00-00 00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `apontamentos`
--
ALTER TABLE `apontamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cad_colaborador`
--
ALTER TABLE `cad_colaborador`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `cad_equipamentos`
--
ALTER TABLE `cad_equipamentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `apontamentos`
--
ALTER TABLE `apontamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `cad_colaborador`
--
ALTER TABLE `cad_colaborador`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `cad_equipamentos`
--
ALTER TABLE `cad_equipamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
