-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/09/2025 às 18:27
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
-- Banco de dados: `comercialalfa`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `id_fornecedor` int(11) NOT NULL,
  `nome_fornecedor` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fornecedor`
--

INSERT INTO `fornecedor` (`id_fornecedor`, `nome_fornecedor`, `cidade`, `cnpj`, `telefone`) VALUES
(1, 'Maria Machado', 'Sorocaba', '12345678900136', '15 998743651'),
(2, 'Patrícia Soares', 'São Paulo', '48642696300145', '11 995478613'),
(3, 'Luccas Ferreira', 'Votorantim', '78945612300143', '15 997651278'),
(4, 'Melissa Prado', 'São Paulo', '25836914700128', '11 997645232'),
(5, 'Fernando Pessoa', 'Sorocaba', '45842891200198', '15 991453879');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido_compra`
--

CREATE TABLE `pedido_compra` (
  `id_pedido` int(11) NOT NULL,
  `id_fornecedor` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `data_pedido` varchar(15) DEFAULT NULL,
  `valor_total` double(100,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedido_compra`
--

INSERT INTO `pedido_compra` (`id_pedido`, `id_fornecedor`, `id_produto`, `data_pedido`, `valor_total`) VALUES
(1, 1, 4, '2025-01-10', 68.50),
(2, 2, 3, '2024-05-15', 165.00),
(3, 3, 2, '2025-09-20', 119.98),
(4, 4, 5, '2025-06-15', 137.00),
(5, 5, 1, '2024-12-22', 140.50);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(50) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `quantidade_estoque` int(100) DEFAULT NULL,
  `preco_unitario` double(100,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `nome_produto`, `categoria`, `quantidade_estoque`, `preco_unitario`) VALUES
(1, 'Camiseta', 'Vestimenta', 5, 68.50),
(2, 'Macaquinho', 'Vestimenta', 10, 69.99),
(3, 'Shorts', 'Vestimenta', 12, 55.00),
(4, 'Boné', 'Acessório', 5, 50.00),
(5, 'Tênis', 'Calçado', 7, 140.50);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id_fornecedor`);

--
-- Índices de tabela `pedido_compra`
--
ALTER TABLE `pedido_compra`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `pedido_compra`
--
ALTER TABLE `pedido_compra`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
