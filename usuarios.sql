-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/10/2026 às 19:30
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
-- Banco de dados: `ellenco_gestao`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(160) NOT NULL,
  `email` varchar(254) NOT NULL,
  `senha_hash` varchar(255) NOT NULL,
  `tipo_acesso` enum('usuario','admin') NOT NULL DEFAULT 'usuario',
  `setor` enum('engenharia','administrativo','obras') NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha_hash`, `tipo_acesso`, `setor`, `ativo`, `criado_em`) VALUES
(1, 'melissa lopes', 'mel@gmail.com', '$2y$10$bgnmx0bJ8zB9ruRNObXTq.CaGU5ESWrb8YjojLoLdEnuujP9q/bD.', 'admin', 'engenharia', 1, '2026-10-29 13:24:33'),
(2, 'julia', 'julia@gmail.com', '$2y$10$t7dKDJhT/NHUEZZn8Qh2SeKLb.o2RzxIKTtpcICh2aBFmKzSFHPvm', 'usuario', 'engenharia', 1, '2026-10-29 16:19:20'),
(5, 'amanda', 'amanda@gmail.com', '$2y$10$B0PGQJP1R4HvJ5X9f9m5T.EtDkHVNpMWmYCnQ1gmzxaaJC2sCZ1dK', 'usuario', 'administrativo', 1, '2026-10-29 16:32:47'),
(6, 'mariane', 'mari@gmail.com', '$2y$10$cWIolK9C1VyCLfigPiatjONom.HwsNZ2FFDATf1bbu7B07cMdQ7qW', 'usuario', 'obras', 1, '2026-10-29 16:42:48'),
(7, 'ana', 'an1@gmail.com', '$2y$10$6oZch6LNSC./wjH8jppweOX9kT8wmubbS6kSmDScgQWEc/P6C9v8S', 'admin', 'obras', 1, '2026-10-29 16:44:12'),
(8, 'isadora', 'dora@gmail.com', '$2y$10$KE03HBzU12XmSHWMSrbNa.qSzbYZrtlgKUI5WVrHqB8ursZ7J4lmK', 'admin', 'engenharia', 1, '2026-10-29 16:46:22'),
(9, 'leticia', 'le@gmail.com', '$2y$10$9IIhpua9KRPrxZ4wfm2N..9yIq.ntdTELN9DMefervTxCkHa5J0yi', 'usuario', 'engenharia', 1, '2026-10-29 17:21:04'),
(10, 'patricia', 'pat@gmail.com', '$2y$10$1A0IE8oY/E.nskhAYViD8.0Y609hMJqNVUCFHu6IQQ.yk01JluVEm', 'admin', 'administrativo', 1, '2026-10-29 17:29:57'),
(11, 'Geovanna Oliveira', 'geovanna.oliveira1a@gmail.com', '$2y$10$b69XV3H/0qnRlfBR6Mk.zu4NvqYyJ4QhTVk.3YLpgEfCm.ZXPRRfC', 'usuario', 'administrativo', 1, '2026-10-29 18:21:53'),
(13, 'Isabela Maria', 'isabela.piva1a@gmail.com', '$2y$10$Fx9KwCz8KJ1sMqN0qRxoNOkbY.t1YF6tf7HpN4ca9.2uDZkTZAbMa', 'usuario', 'obras', 1, '2026-10-29 18:27:56');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
