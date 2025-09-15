-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 18:56
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
-- Banco de dados: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta`
--

CREATE TABLE `consulta` (
  `id` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `id_medico` int(11) DEFAULT NULL,
  `data_hora` datetime DEFAULT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `consulta`
--

INSERT INTO `consulta` (`id`, `id_paciente`, `id_medico`, `data_hora`, `observacoes`) VALUES
(1, 4, 3, '2025-04-10 13:30:10', 'Consulta de rotina'),
(2, 5, 7, '2025-04-15 16:20:00', 'Consulta de rotina'),
(3, 6, 8, '2025-04-30 13:00:00', 'Consulta online'),
(4, 7, 1, '2025-05-06 14:30:00', 'Consulta Particular'),
(5, 8, 2, '2025-05-25 15:00:00', 'Consulta de emergência');

-- --------------------------------------------------------

--
-- Estrutura para tabela `medico`
--

CREATE TABLE `medico` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `especialidade` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `crm` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medico`
--

INSERT INTO `medico` (`id`, `nome`, `especialidade`, `telefone`, `crm`) VALUES
(1, 'Dr. Carlos Souza', 'Cardiologista', '5555-9999', 'CRM12345'),
(2, 'Dra. Ana Laura', 'Pediatra', '7878-7878', 'CRM1425'),
(3, 'Dr. Marcos Alves', 'Dermatologista', '3258-2986', 'CRM987654'),
(4, 'Dra Luisa Costa', 'Ginecologista', '8521-7453', 'CRM9865'),
(5, 'Dra. Marianne Azevedo', 'Alergologista', '1134-5870', 'CRM23678'),
(6, 'Dr. Lucas Souza', 'Urologista', '5678-9836', 'CRM37690'),
(7, 'Dra. Geovanna Oliveira', 'Biomédica', '0987-5432', 'CRM36580'),
(8, 'Dra. Isabela Maria', 'Obstetra', '4658-8633', 'CRM38705'),
(9, 'Dra. Viviane dos Santos', 'Oftalmologista', '2859-6578', 'CRM87909'),
(10, 'Dr. Fernando Pessoa', 'Neurologista', '2879-0087', 'CRM8909');

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `paciente`
--

INSERT INTO `paciente` (`id`, `nome`, `data_nascimento`, `telefone`, `endereco`, `cep`, `email`) VALUES
(4, 'João Silva', '1990-02-05', '8907-5789', 'Rua da Conceição', '16958-589', 'joaosilva@gmail.com'),
(5, 'Geovanna Silva', '2009-01-17', '8906-0987', 'Rua da Paz', '18089-709', 'geovanna.silva@gmail.com'),
(6, 'Isabela Medeiros', '2009-06-09', '9913-0213', 'Rua da Felicidade', '87660-098', 'isabelamdr@gmail.com'),
(7, 'Davi Lucas', '2018-01-10', '2749-0087', 'Rua Leonel Messi', '57693-098', 'davi.lucas1@gmail.com'),
(8, 'Viviane dos Santos', '1983-07-03', '0964-9962', 'Rua da Luz', '18046-876', 'vivianesantos@gmail.com'),
(9, 'Eliana Piva', '1968-07-25', '3224-8765', 'Rua da Harmonia', '17589-897', 'elianapiva50@gmail.com'),
(10, 'Josue Camargo', '1960-10-30', '1020-4050', 'Rua do Ouro', '28395-490', 'josue.camargo@gmail.com'),
(11, 'Mateus Pires', '2022-06-12', '1647-7896', 'Rua do Amor', '19604-396', 'mateuspires2@gmail.com'),
(12, 'Larissa Manoela', '2003-08-29', '9876-3769', 'Rua do Beijo', '37604-589', 'lari.manoela@gmail.com'),
(13, 'Rogério Medeiros', '1977-07-26', '7684-4869', 'Rua da Saudade', '18376-584', 'rogeriomedeiros@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_medico` (`id_medico`);

--
-- Índices de tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
