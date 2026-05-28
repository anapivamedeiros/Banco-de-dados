-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/05/2026 às 20:49
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
-- Banco de dados: `petshop`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` bigint(20) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome`, `descricao`, `ativo`) VALUES
(2, 'Cachorro', 'Cuidamos do seu melhor amigo com todo carinho! Oferecemos produtos de qualidade, alimentação balanceada, acessórios e serviços pensados para o bem-estar, saúde e felicidade dos cães de todos os portes.', 1),
(3, 'Coelho', 'Um espaço especial para os coelhinhos! Aqui você encontra rações adequadas, petiscos naturais e acessórios que garantem conforto e uma vida saudável para esses pets delicados.', 1),
(4, 'Gato', 'Tudo para o conforto e felicidade do seu felino! Oferecemos rações de qualidade, brinquedos, arranhadores e acessórios pensados para estimular o instinto natural dos gatos, garantindo saúde, bem-estar e muita diversão no dia a dia.', 1),
(5, 'Pássaro', 'Tudo o que seu pássaro precisa para viver bem! Disponibilizamos alimentos nutritivos, gaiolas seguras e itens que estimulam o bem-estar e a vitalidade das aves.', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `item_pedido`
--

CREATE TABLE `item_pedido` (
  `id` bigint(20) NOT NULL,
  `pedido_id` bigint(20) NOT NULL,
  `produto_id` bigint(20) NOT NULL,
  `nome_produto` varchar(120) NOT NULL,
  `preco_unitario` decimal(10,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `id` bigint(20) NOT NULL,
  `usuario_id` bigint(20) NOT NULL,
  `usuario_nome` varchar(120) DEFAULT NULL,
  `data_criacao` datetime NOT NULL,
  `status` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id` bigint(20) NOT NULL,
  `ativo` bit(1) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `imagem` longtext DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `preco_desconto` double DEFAULT NULL,
  `qtd_estoque` int(11) DEFAULT NULL,
  `id_categoria` bigint(20) DEFAULT NULL,
  `imagem2` longtext DEFAULT NULL,
  `imagem3` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id`, `ativo`, `descricao`, `imagem`, `nome`, `preco`, `preco_desconto`, `qtd_estoque`, `id_categoria`, `imagem2`, `imagem3`) VALUES
(7, b'1', 'Ração balanceada com vitaminas e proteínas para cães adultos de pequeno e médio porte.', 'http://localhost:8080/uploads/da1864a5-0a50-4b2e-9b2c-3c5a7db69f1d_racao2_cao.png', 'Ração Premium para Cães Adultos', 89.9, NULL, 20, 2, 'http://localhost:8080/uploads/d5030568-7245-40a7-80ac-3835defff972_racao_caoo.png', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `item_pedido`
--
ALTER TABLE `item_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_item_pedido_pedido` (`pedido_id`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbb0k43mtsufg8bfhq0gyaxhhm` (`id_categoria`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `item_pedido`
--
ALTER TABLE `item_pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `item_pedido`
--
ALTER TABLE `item_pedido`
  ADD CONSTRAINT `fk_item_pedido_pedido` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`);

--
-- Restrições para tabelas `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `FKbb0k43mtsufg8bfhq0gyaxhhm` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
