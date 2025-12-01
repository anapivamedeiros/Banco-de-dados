-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/12/2025 às 13:24
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
-- Banco de dados: `locadoradeautomoveis`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamentos`
--

CREATE TABLE `agendamentos` (
  `id_agendamentos` int(11) NOT NULL,
  `id_clientes` int(11) DEFAULT NULL,
  `id_carros` int(11) DEFAULT NULL,
  `data_reserva` date DEFAULT NULL,
  `data_devolucao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `agendamentos`
--

INSERT INTO `agendamentos` (`id_agendamentos`, `id_clientes`, `id_carros`, `data_reserva`, `data_devolucao`) VALUES
(1, 1, 3, '2024-01-10', '2024-01-17'),
(3, 2, 5, '2024-03-15', '2024-03-22'),
(4, 3, 7, '2024-01-04', '2024-08-04'),
(5, 4, 2, '2024-05-20', '2024-05-27'),
(6, 5, 1, '2024-05-06', '2024-12-06'),
(7, 6, 6, '2024-07-14', '2024-07-21'),
(8, 7, 4, '2024-08-01', '2024-08-08'),
(9, 8, 8, '2024-09-15', '2024-09-22'),
(10, 9, 3, '2024-10-12', '2024-10-19'),
(11, 10, 5, '2024-11-01', '2024-11-08'),
(12, 11, 9, '2024-12-01', '2024-12-08'),
(13, 12, 10, '2024-01-15', '2024-01-22'),
(14, 13, 4, '2024-02-10', '2024-02-17'),
(15, 14, 6, '2024-03-05', '2024-03-12'),
(16, 15, 3, '2024-04-10', '2024-04-17'),
(17, 16, 2, '2024-05-15', '2024-05-22'),
(18, 17, 8, '2024-06-01', '2024-06-08'),
(19, 18, 12, '2024-02-05', '2024-02-12'),
(20, 19, 1, '2024-07-01', '2024-07-08'),
(21, 20, 15, '2024-08-15', '2024-08-22');

-- --------------------------------------------------------

--
-- Estrutura para tabela `carros`
--

CREATE TABLE `carros` (
  `id_carros` int(11) NOT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `ano` int(4) DEFAULT NULL,
  `cor` varchar(100) DEFAULT NULL,
  `disponivel` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carros`
--

INSERT INTO `carros` (`id_carros`, `modelo`, `placa`, `ano`, `cor`, `disponivel`) VALUES
(1, 'Chevrolet Onix', 'ABC-1234', 2022, 'preto', 'sim'),
(2, 'Fiat Argo', 'DEF-5678', 2021, 'Branco', 'Não'),
(3, 'Fiat Argo', 'DEF-5678', 2020, 'Prata', 'Sim'),
(4, 'Toyota Corolla', 'JKL-1122', 2023, 'Azul', 'Sim'),
(5, 'Volkswagen Gol', 'MNO-3344', 2022, 'Vermelho', 'Não'),
(6, 'Ford Ka', 'PQR-5566', 2021, 'Preto', 'Sim'),
(7, 'Nissan Sentra', 'STU-7788', 2020, 'Branco', 'SIm'),
(8, 'Hyundai HB20', 'VWX-9900', 2021, 'Azul', 'Não'),
(9, 'Renault Kwid', 'XYZ-1234', 2023, 'Prata', 'Sim'),
(10, 'Jeep Compass', 'ABC-5678', 2022, 'Verde', 'Não'),
(11, 'Peugeot 208', 'DEF-9101', 2021, 'Amarelo', 'Sim'),
(12, 'Chevrolet Spin', 'GHI-1122', 2020, 'Cinza', 'Sim'),
(13, 'Honda Fit', 'JKL-3344', 2023, 'Branco', 'Não'),
(14, 'Toyota Etios', 'MNO-5566', 2022, 'Vermelho', 'Sim'),
(15, 'Volkswagen Polo', 'PQR-7788', 2021, 'Preto', 'Não'),
(16, 'Citroën C3', 'STU-9900', 2020, 'Azul', 'Sim'),
(17, 'Ford Fiesta', 'VWX-1234', 2023, 'Cinza', 'Sim'),
(18, 'Nissan Kicks', 'XYZ-5678', 2022, 'Verde', 'Não'),
(19, 'Renault Duster', 'ABC-9101', 2021, 'Preto', 'Sim'),
(20, 'BMW X1', 'DEF-1122', 2020, 'Branco', 'Não');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id_clientes`, `nome`, `cpf`, `telefone`, `email`) VALUES
(1, 'João Silva', '123.456.789-00', 1198765432, 'joao@email.com'),
(2, 'Maria Oliveira', '234.567.890-11', 1198765432, 'maria@gmail.com'),
(3, 'Pedro Costa', '345.678.900-22', 1198765432, 'pedro@gmail.com'),
(4, 'Ana Souza', '456.789.101-33', 1198765432, 'ana@gmail.com'),
(5, 'Carlos Pereira', '567.890.112-44', 1198765432, 'carlos@gmail.com'),
(6, 'Juliana Lima', '678.911.234-55', 1198765432, 'juliana@gmail.com'),
(7, 'Roberto Martins', '789.012.345-66', 1198765432, 'roberto@gmail.com'),
(8, 'Fernanda Almeida', '890.123.456-77', 1198765432, 'fernanda@gmail.com'),
(9, 'Thiago Santos', '901.234.567-88', 1198765433, 'thiago@email.com'),
(10, 'Larissa Costa', '123.456.789-99', 1198765432, 'larissa@email.com'),
(11, 'Marcos Rodrigues', '234.567.890-00', 1198765433, 'marcos@email.com'),
(12, 'Silvia Oliveira', '345.678.901-11', 1198765433, 'silvia@email.com'),
(13, 'Daniel Costa', '456.789.012-22', 1198765433, 'daniel@email.com'),
(14, 'Gabriela Silva', '567.890.123-33', 1198765433, 'gabriela@email.com'),
(15, 'Fábio Lima', '678.901.234-44', 1198765433, 'fabio@email.com'),
(16, 'Camila Pereira', '789.012.345-55', 1198765433, 'camila@email.com'),
(17, 'Eduardo Santos', '890.123.456-66', 1198765433, 'eduardo@email.com'),
(18, 'Mariana Oliveira', '901.234.567-77', 1198765433, 'mariana@email.com'),
(19, 'Lucas Almeida', '123.456.789-11', 1198765433, 'lucas@email.com'),
(20, 'Tatiane Martins', '234.567.890-22', 1198765434, 'tatiane@email.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  ADD PRIMARY KEY (`id_agendamentos`),
  ADD KEY `id_clientes` (`id_clientes`),
  ADD KEY `id_carros` (`id_carros`);

--
-- Índices de tabela `carros`
--
ALTER TABLE `carros`
  ADD PRIMARY KEY (`id_carros`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  MODIFY `id_agendamentos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `carros`
--
ALTER TABLE `carros`
  MODIFY `id_carros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_clientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `agendamentos`
--
ALTER TABLE `agendamentos`
  ADD CONSTRAINT `agendamentos_ibfk_1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`),
  ADD CONSTRAINT `agendamentos_ibfk_2` FOREIGN KEY (`id_carros`) REFERENCES `carros` (`id_carros`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
