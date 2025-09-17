-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/09/2025 às 14:06
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
-- Banco de dados: `locadora`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `id_carro` int(11) NOT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `placa` varchar(11) DEFAULT NULL,
  `ano` varchar(4) DEFAULT NULL,
  `cor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`id_carro`, `marca`, `placa`, `ano`, `cor`) VALUES
(1, 'Toyota', 'AMR2R22', '1990', 'Prata'),
(2, 'Volkswagen', 'BEE3R56', '2010', 'Preto'),
(3, 'Chevrolet ', 'RIO2A18', '1983', 'Preto'),
(4, 'Toyota', 'AYT6G76', '2015', 'Branco'),
(5, 'Ferrari', 'AYD5H99', '2000', 'Vermelho'),
(6, 'Lamborghini ', 'OUT7A34', '1990', 'Laranja'),
(7, 'BYD', 'OUT7A34', '2025', 'Branco'),
(8, 'GWM', 'SYF5G90', '2023', 'Preto'),
(9, 'Honda', 'DTR2G56', '2009', 'Vermelho'),
(10, 'Nissan', 'WQO2T54', '2024', 'Azul');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `data_nascimento` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `data_nascimento`) VALUES
(1, 'Ana Barros', 784498, '4878-2956', 'anabarros@gmail.com', 'Rua da Preguiça', 1990),
(2, 'Maria Oliveira', 963852, '9865-3214', 'mari.oliveira@gmail.com', 'Rua da Alegria', 2002),
(3, 'Benício Santos', 125486, '4569-8146', 'santosbenicio@gmail.com', 'Rua da Paz', 2007),
(4, 'Miriã Moreira', 753159, '7530-0022', 'mimoreira@gmail.com', 'Rua da Musica', 1985),
(6, 'Luan Santana', 145658, '0012-3985', 'luansantana@gmail.com', 'Rua do Sucesso', 1991),
(7, 'Fernando Pessoa', 156569, '1239-8954', 'fernando.pessoa1@gmail.com', 'Rua dos Livros', 1960),
(8, 'Eduardo Antunes', 894515, '8941-0015', 'edu.antunes@gmail.com', 'Rua do Medo', 1991),
(9, 'Henrique Menezes', 145983, '9865-1452', 'henriquemenezes@gmail.com', 'Rua da Felicidade', 2004),
(10, 'Geovanna Oliveira', 186286, '1206-9563', 'ge.oliveira22@gmail.com', 'Rua da Empatia', 2003),
(11, 'Isabela Medeiros', 461498, '9914.8526', 'isamedeiros@gmail.com', 'Rua da Luz', 1991);

-- --------------------------------------------------------

--
-- Estrutura para tabela `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(5) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_carro` int(11) DEFAULT NULL,
  `data_reserva` date DEFAULT NULL,
  `data_devolucao` date DEFAULT NULL,
  `valor_total` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `reserva`
--

INSERT INTO `reserva` (`id_reserva`, `id_cliente`, `id_carro`, `data_reserva`, `data_devolucao`, `valor_total`) VALUES
(1, 1, 8, '2025-05-02', '2025-05-20', 1110.00),
(2, 2, 5, '2025-06-20', '2025-07-10', 3.70),
(3, 3, 4, '2025-09-10', '2025-10-20', 2080.00),
(4, 4, 10, '2025-01-20', '2025-02-10', 1999.00),
(5, 6, 9, '2025-07-31', '2025-09-02', 2790.00),
(6, 7, 3, '2025-04-23', '2025-05-10', 1562.00),
(7, 8, 7, '2025-01-28', '2025-04-01', 2999.00),
(8, 9, 1, '2025-06-10', '2025-07-10', 1965.00),
(9, 10, 2, '2025-09-01', '2025-10-01', 2689.00),
(10, 11, 6, '2025-03-15', '2025-05-15', 3710.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`id_carro`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_carro` (`id_carro`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `id_carro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`id_carro`) REFERENCES `carro` (`id_carro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
