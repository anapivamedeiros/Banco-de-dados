-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/09/2025 às 16:36
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
-- Banco de dados: ` e-commerce`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `endereco` varchar(20) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `dataCadastro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id_clientes`, `nome`, `email`, `senha`, `cpf`, `endereco`, `cidade`, `estado`, `cep`, `dataCadastro`) VALUES
(1, 'Ana Laura', 'ana.laura@gmail.com', '32476947', '451.567.178.87', ' Rua Almeida filho', 'Sorocaba', 'São Paulo', '234567.98', '2003-12-07 15:30:00'),
(2, 'Rosangela silveira', 'rosangela.silveira1@', 'rosaninha01', '456.865.356.87', ' Rua pedro palmitos ', 'Votorantim', 'São Paulo', '789245.98', '2015-11-23 23:15:00'),
(3, 'Pamela Silvana', 'pam.viaana@gmail.com', 'pamlindinha07', '456.987.356.87', ' Rua Maria paola', 'Sorocaba', 'São Paulo', '367892.89', '2022-10-30 12:30:45'),
(4, 'Fabio Lopes', 'fabinho.lopes@gmail.', 'fabinho77', '456.4789.356.76', ' Rua jose costa', 'Sorocaba', 'São Paulo', '789456.23', '2025-11-22 13:36:55'),
(5, 'Sabrina perecin', 'sabrina.perecin@gmai', '3567892', '458.432.678.45', ' Rua Alexandre vila ', 'Sorocaba', 'São Paulo', '267845.23', '2011-02-16 20:45:12'),
(6, 'Maria Eduarda', 'Mariazinha.duda@gmai', 'madu09', '421.478.786.54', ' Rua diego camargo', 'Sorocaba', 'São Paulo', '234567.98', '2011-08-25 10:13:01'),
(7, 'Raphael Lisboa', 'raph.boa@gmail.com', '3289642', '468.432.897.45', ' Rua Pedro Dias', 'Votorantim', 'São Paulo', '245678.87', '2022-03-15 00:45:23'),
(8, 'jessica Cardoso', 'Jessica.cardoso@gmai', 'jessicalindona54', '423.478.975.32', ' Rua Medeiros', 'Sorocaba', 'São Paulo', '7851234.12', '2023-04-17 21:15:12'),
(9, 'Thiago Machado', 'Thiaginho.machadao@g', 'titi1234', '473.489.345.89', ' Rua fernando preste', 'Votorantim', 'São Paulo', '567356.34', '2023-06-11 07:08:33'),
(10, ' Rosana Evaristo', 'Rosana.Evaristo@gmai', 'rosinha32', '482.423.765.23', ' Rua Vitoria garcia', 'Sorocaba', 'São Paulo', '765234.11', '2013-11-09 11:48:07');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itenspedido`
--

CREATE TABLE `itenspedido` (
  `id_itensPedido` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `quantidade` int(20) DEFAULT NULL,
  `precoUnitario` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itenspedido`
--

INSERT INTO `itenspedido` (`id_itensPedido`, `id_pedido`, `id_produto`, `quantidade`, `precoUnitario`) VALUES
(1, 10, 1, 1, 199.00),
(2, 9, 2, 3, 149.00),
(3, 8, 3, 1, 299.00),
(4, 7, 4, 6, 59.00),
(5, 6, 5, 3, 499.00),
(6, 5, 6, 1, 349.00),
(7, 4, 7, 2, 249.00),
(8, 3, 8, 4, 129.00),
(9, 2, 9, 3, 89.00),
(10, 1, 10, 5, 49.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `id_clientes` int(11) DEFAULT NULL,
  `DataPedido` datetime DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `ValorTotal` double(10,2) DEFAULT NULL,
  `EnderecoEntrega` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `id_clientes`, `DataPedido`, `Status`, `ValorTotal`, `EnderecoEntrega`) VALUES
(1, 1, '2025-02-10 12:45:10', 'Pedido Recebido', 110.00, 'Rua Almeia Filho'),
(2, 2, '2025-09-18 15:23:44', 'Pedido Enviado', 250.00, 'Rua Pedro Palmitos'),
(3, 3, '2025-09-15 10:02:03', 'Em Preparação', 1010.00, 'Rua Maria Paola'),
(4, 4, '2025-05-30 00:55:45', 'Pedido Recebido', 25.00, 'Rua José Costa'),
(5, 5, '2025-09-10 17:22:00', 'Em Preparação', 89.00, 'Rua Alexandre Vila N'),
(6, 6, '2025-09-12 22:49:55', 'Faturado', 450.00, 'Rua Diego Camargo'),
(7, 7, '2025-09-17 14:59:20', 'Em Preparação', 685.00, 'Rua Pedro Dias'),
(8, 8, '2025-06-01 07:15:33', 'Pedido Recebido', 55.00, 'Rua Medeiros'),
(9, 9, '2025-09-13 02:13:00', 'Faturado', 125.00, 'Rua Fernando Prestes'),
(10, 10, '2025-07-31 23:00:55', 'Pedido Recebido', 79.00, 'Rua da Vitória Garci');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `Nome` varchar(20) DEFAULT NULL,
  `Descricao` text DEFAULT NULL,
  `Preço` double(10,2) DEFAULT NULL,
  `SKU` varchar(20) DEFAULT NULL,
  `Estoque` int(20) DEFAULT NULL,
  `DataCriacao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `Nome`, `Descricao`, `Preço`, `SKU`, `Estoque`, `DataCriacao`) VALUES
(1, 'Mochila Adventure', 'Mochila resistente para trilhas e viagens', 199.00, 'MOCH-001', 25, '2025-08-10 10:15:30'),
(2, 'Fone de Ouvido BassM', 'Fone bluetooth com graves potentes', 149.00, 'FONE-002', 40, '2025-08-11 14:22:10'),
(3, 'Smartwatch FitPro', 'Monitor de atividades e notificações', 299.00, 'SMAR-003', 30, '2025-08-13 09:45:50'),
(4, 'Caneca Térmica Eco', 'Caneca que mantém a temperatura por horas', 59.00, 'CANE-004', 50, '2025-08-12 16:05:12'),
(5, 'Teclado Gamer RGB', 'Teclado mecânico com iluminação RGB', 499.00, 'TECL-005', 20, '2025-08-09 11:30:45'),
(6, 'Câmera Compacta Zoom', 'Câmera digital com zoom óptico 20x', 349.00, 'CAM-006', 15, '2025-08-15 13:50:25'),
(7, 'Tênis Running Light', 'Tênis esportivo confortável para corrida', 249.00, 'TEN-007', 35, '2025-08-17 08:20:00'),
(8, 'Bolsa Tote Fashion', 'Bolsa de tecido perfeita para o dia a dia', 129.00, 'BOLS-008', 40, '2025-08-18 17:45:33'),
(9, 'Luminária LED Desk', 'Luminária de mesa com ajuste de intensidade', 89.00, 'LUM-009', 60, '2025-08-20 12:10:55'),
(10, 'Garrafa Squeeze Spor', 'Garrafa de água esportiva 700ml', 49.00, 'GARR-010', 80, '2025-08-22 15:35:18');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`);

--
-- Índices de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD PRIMARY KEY (`id_itensPedido`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
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
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_clientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  MODIFY `id_itensPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
