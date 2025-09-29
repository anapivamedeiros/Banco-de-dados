-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/09/2025 às 16:40
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `techsolutions`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `id_funcionario` int(11) DEFAULT NULL,
  `id_treinamento` int(11) DEFAULT NULL,
  `nome_departamento` varchar(20) DEFAULT NULL,
  `localizacao` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `id_funcionario`, `id_treinamento`, `nome_departamento`, `localizacao`) VALUES
(1, 1, 1, 'Departamento RH', 'Ala Sul'),
(2, 2, 2, 'Departamento TI', 'Ala Leste'),
(3, 3, 3, 'Departamento Máquina', 'Ala Sul'),
(4, 4, 4, 'Departamento TI', 'Ala Norte'),
(5, 5, 5, 'Departamento ADM', 'Ala Oeste');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id_funcionario` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `CPF` int(11) DEFAULT NULL,
  `data_admissao` date DEFAULT NULL,
  `cargo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`id_funcionario`, `nome`, `CPF`, `data_admissao`, `cargo`) VALUES
(1, 'Márcia Santos', 426722628, '2022-07-09', 'Administração'),
(2, 'Cristina Campos', 437421123, '2017-10-23', 'Analista dos Sistema'),
(3, 'Sérgio Velho', 370451876, '2014-05-20', 'Operador das Máquina'),
(4, 'Rogério Antunes', 648468157, '2020-03-16', 'Analista de Sistemas'),
(5, 'Liz Braga', 460287239, '2024-06-17', 'Administração');

-- --------------------------------------------------------

--
-- Estrutura para tabela `treinamento`
--

CREATE TABLE `treinamento` (
  `id_treinamento` int(11) NOT NULL,
  `id_funcionario` int(11) DEFAULT NULL,
  `título` varchar(20) DEFAULT NULL,
  `data_treinamento` date DEFAULT NULL,
  `carga_horaria` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `treinamento`
--

INSERT INTO `treinamento` (`id_treinamento`, `id_funcionario`, `título`, `data_treinamento`, `carga_horaria`) VALUES
(1, 1, 'Treinamento de ADM', '2025-09-27', '4 horas'),
(2, 2, 'Treinamento de TI', '2025-10-03', '5 horas'),
(3, 3, 'Treinamento de máqui', '2025-10-05', '3 horas'),
(4, 4, 'Treinamento de RH', '2025-09-29', '6 horas'),
(5, 5, 'Treinamento de ADM', '2025-09-27', '4 horas');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices de tabela `treinamento`
--
ALTER TABLE `treinamento`
  ADD PRIMARY KEY (`id_treinamento`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `treinamento`
--
ALTER TABLE `treinamento`
  MODIFY `id_treinamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
