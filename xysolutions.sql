-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/01/2026 às 06:53
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
-- Banco de dados: `xysolutions`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `candidatos`
--

CREATE TABLE `candidatos` (
  `id_candidatos` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `nivel_Escolaridade` text DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `contratacao`
--

CREATE TABLE `contratacao` (
  `id_contrataco` int(11) NOT NULL,
  `data_contratacao` date DEFAULT NULL,
  `id_candidatos` int(11) DEFAULT NULL,
  `id_vaga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresas_clientes`
--

CREATE TABLE `empresas_clientes` (
  `id_empresa` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `CNPJ` varchar(14) DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `entrevista`
--

CREATE TABLE `entrevista` (
  `id_entrevista` int(11) NOT NULL,
  `diadata` datetime DEFAULT NULL,
  `resultado` text DEFAULT NULL,
  `id_processo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario_hr`
--

CREATE TABLE `funcionario_hr` (
  `id_funcionariohr` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `cargo` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `processo_seletivo`
--

CREATE TABLE `processo_seletivo` (
  `id_processo` int(11) NOT NULL,
  `situacao` varchar(20) DEFAULT NULL,
  `id_candidatos` int(11) DEFAULT NULL,
  `id_vaga` int(11) DEFAULT NULL,
  `id_funcionariohr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
