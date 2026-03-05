-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/03/2026 às 19:43
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
-- Banco de dados: `usuarios`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `perfil` enum('ADMIN','USER') NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `bairro` varchar(80) DEFAULT NULL,
  `complemento` varchar(80) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `foto` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `perfil`, `endereco`, `bairro`, `complemento`, `cep`, `cidade`, `estado`, `foto`) VALUES
(40, 'Marcela da Silva', 'marcela.silva@email.com', '123456', 'ADMIN', 'Rua das Flores, 123', 'Centro', 'Apto 202', '12345-678', 'São Paulo', 'SP', NULL),
(45, 'Isabela Souza', 'isa.souza@email.com', '321654', 'ADMIN', 'Rua da paz, 356', 'Centro', 'Apto 891', '85234-761', 'São Paulo', 'SP', NULL),
(48, 'Amanda Oliveira', 'manda.oliv@gmail.com', '1234589', 'ADMIN', 'Rua do Amor, 741', 'Centro', 'Apto 162', '78513-943', 'São Paulo', 'SP', NULL),
(49, 'Milena Maia', 'milena.maia@gmail.com', '842397', 'USER', 'Rua da Paixão, 824', 'Centro', 'Apto 172', '78941-648', 'São Paulo', 'SP', NULL),
(51, 'Larissa Ros carvalho Silva', 'lari.ros@email.com', '$2a$10$P9usXx7pFb6GgX6J/q20nOaEhTt8iZijr0.N/yaquP6Z.kKjCATbO', 'USER', 'Rua das Margaridas, 123', 'Centro', 'Apto 423', '78945-197', 'São Paulo', 'SP', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
