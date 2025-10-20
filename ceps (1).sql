-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/10/2025 às 20:40
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
-- Banco de dados: `ceps`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `ceps`
--

CREATE TABLE `ceps` (
  `id_ceps` int(11) NOT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `logradouro` varchar(60) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `ddd` varchar(2) DEFAULT NULL,
  `nomecidade` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ceps`
--

INSERT INTO `ceps` (`id_ceps`, `cep`, `logradouro`, `bairro`, `ddd`, `nomecidade`) VALUES
(1, '69900000', 'Av. Getúlio Vargas', 'Centro', '68', 'Rio Branco'),
(2, '69903000', 'Rua Ceará', 'Bosque', '68', 'Cruzeiro do Sul'),
(3, '69910000', 'Rua da Liberdade', 'Centro', '68', 'Tarauacá'),
(4, '69920000', 'Av. Marechal Deodoro', 'Centro', '68', 'Sena Madureira'),
(5, '69940000', 'Rua João Pessoa', 'Centro', '68', 'Feijó'),
(6, '57000000', 'Av. Fernandes Lima', 'Centro', '82', 'Maceió'),
(7, '57300000', 'Rua do Comércio', 'Centro', '82', 'Arapiraca'),
(8, '57600000', 'Av. Rio Branco', 'Centro', '82', 'Palmeira dos Índios'),
(9, '57900000', 'Rua do Sol', 'Centro', '82', 'Rio Largo'),
(10, '57950000', 'Rua São Francisco', 'Centro', '82', 'Penedo'),
(11, '69000000', 'Av. Eduardo Ribeiro', 'Centro', '92', 'Manaus'),
(12, '69150000', 'Rua da Matriz', 'Centro', '92', 'Parintins'),
(13, '69100000', 'Rua Visconde de Mauá', 'Centro', '92', 'Itacoatiara'),
(14, '69400000', 'Av. Manoel Urbano', 'Centro', '92', 'Manacapuru'),
(15, '69450000', 'Rua Barão do Rio Branco', 'Centro', '92', 'Coari'),
(16, '40000000', 'Av. Sete de Setembro', 'Centro', '71', 'Salvador'),
(17, '44000000', 'Rua Chile', 'Centro', '75', 'Feira de Santana'),
(18, '45000000', 'Av. Frei Benjamim', 'Centro', '77', 'Vitória da Conquista'),
(19, '42800000', 'Rua da Linha Verde', 'Centro', '71', 'Camaçari'),
(20, '48900000', 'Av. Adolfo Viana', 'Centro', '74', 'Juazeiro'),
(21, '60000000', 'Av. Beira Mar', 'Centro', '85', 'Fortaleza'),
(22, '61600000', 'Rua Elpídio de Almeida', 'Centro', '85', 'Caucaia'),
(23, '63000000', 'Rua São Pedro', 'Centro', '88', 'Juazeiro do Norte'),
(24, '61900000', 'Rua 25 de Março', 'Centro', '85', 'Maracanaú'),
(25, '62000000', 'Av. Domingos Olímpio', 'Centro', '88', 'Sobral'),
(26, '70000000', 'Esplanada dos Ministérios', 'Zona Cívico-Administrativa', '61', 'Brasília'),
(27, '72200000', 'Rua 1', 'Ceilândia Centro', '61', 'Ceilândia'),
(28, '72000000', 'Rua 15', 'Taguatinga Centro', '61', 'Taguatinga'),
(29, '72300000', 'Rua 10', 'Samambaia Sul', '61', 'Samambaia'),
(30, '73300000', 'Rua 5', 'Planaltina', '61', 'Planaltina'),
(31, '29000000', 'Av. Jerônimo Monteiro', 'Centro', '27', 'Vitória'),
(32, '29100000', 'Rua Sete de Setembro', 'Centro', '27', 'Vila Velha'),
(33, '29150000', 'Av. dos Trabalhadores', 'Centro', '27', 'Serra'),
(34, '29160000', 'Rua E', 'Centro', '27', 'Cariacica'),
(35, '29300000', 'Rua do Comércio', 'Centro', '28', 'Cachoeiro de Itapemirim'),
(36, '74000000', 'Av. Anhanguera', 'Centro', '62', 'Goiânia'),
(37, '74900000', 'Rua 90', 'Setor Central', '62', 'Aparecida de Goiânia'),
(38, '75000000', 'Av. Brasil', 'Centro', '62', 'Anápolis'),
(39, '75900000', 'Rua 15', 'Centro', '64', 'Rio Verde'),
(40, '72800000', 'Rua do Comércio', 'Centro', '61', 'Luziânia'),
(41, '65000000', 'Av. dos Holandeses', 'Centro', '98', 'São Luís'),
(42, '65900000', 'Rua Grande', 'Centro', '99', 'Imperatriz'),
(43, '65600000', 'Rua da Independência', 'Centro', '99', 'Caxias'),
(44, '65630000', 'Av. Santos Dumont', 'Centro', '99', 'Timon'),
(45, '65650000', 'Rua Padre Chagas', 'Centro', '99', 'Codó'),
(46, '78000000', 'Av. Historiador Rubens de Mendonça', 'Centro', '65', 'Cuiabá'),
(47, '78100000', 'Av. Couto Magalhães', 'Centro', '65', 'Várzea Grande'),
(48, '78700000', 'Av. Presidente Médici', 'Centro', '66', 'Rondonópolis'),
(49, '78500000', 'Rua Brasil', 'Centro', '66', 'Sinop'),
(50, '78300000', 'Av. dos Estudantes', 'Centro', '65', 'Tangará da Serra'),
(51, '79000000', 'Av. Afonso Pena', 'Centro', '67', 'Campo Grande'),
(52, '79800000', 'Rua Hayel Bon Faker', 'Centro', '67', 'Dourados'),
(53, '79600000', 'Av. Brasil', 'Centro', '67', 'Três Lagoas'),
(54, '79300000', 'Rua Antônio Maria Coelho', 'Centro', '67', 'Corumbá'),
(55, '79900000', 'Rua General Rondon', 'Centro', '67', 'Ponta Porã'),
(56, '30000000', 'Av. Afonso Pena', 'Centro', '31', 'Belo Horizonte'),
(57, '38400000', 'Av. João Naves de Ávila', 'Centro', '34', 'Uberlândia'),
(58, '32000000', 'Rua Espírito Santo', 'Centro', '31', 'Contagem'),
(59, '36000000', 'Av. Rio Branco', 'Centro', '32', 'Juiz de Fora'),
(60, '39400000', 'Av. JK', 'Centro', '38', 'Montes Claros'),
(61, '66000000', 'Av. Presidente Vargas', 'Centro', '91', 'Belém'),
(62, '67000000', 'Rua Coração de Jesus', 'Centro', '91', 'Ananindeua'),
(63, '68000000', 'Av. Cuiabá', 'Centro', '93', 'Santarém'),
(64, '68500000', 'Rua do Comércio', 'Centro', '94', 'Marabá'),
(65, '68550000', 'Rua Pará', 'Centro', '94', 'Parauapebas'),
(66, '58000000', 'Av. Epitácio Pessoa', 'Centro', '83', 'João Pessoa'),
(67, '58400000', 'Rua Severino Vieira', 'Centro', '83', 'Campina Grande'),
(68, '58700000', 'Rua Floriano Peixoto', 'Centro', '83', 'Patos'),
(69, '58300000', 'Rua Getúlio Vargas', 'Centro', '83', 'Santa Rita'),
(70, '58030000', 'Rua Primeiro de Maio', 'Centro', '83', 'Bayeux'),
(71, '80000000', 'Rua XV de Novembro', 'Centro', '41', 'Curitiba'),
(72, '86000000', 'Av. Higienópolis', 'Centro', '43', 'Londrina'),
(73, '87000000', 'Av. São Paulo', 'Centro', '44', 'Maringá'),
(74, '84000000', 'Rua XV de Novembro', 'Centro', '42', 'Ponta Grossa'),
(75, '85800000', 'Av. Brasil', 'Centro', '45', 'Cascavel'),
(76, '50000000', 'Rua da Aurora', 'Boa Vista', '81', 'Recife'),
(77, '54100000', 'Av. Marechal Mascarenhas de Moraes', 'Centro', '81', 'Jaboatão dos Guararapes'),
(78, '53100000', 'Rua do Sol', 'Centro', '81', 'Olinda'),
(79, '55000000', 'Av. Guararapes', 'Centro', '87', 'Caruaru'),
(80, '56300000', 'Rua Souza Filho', 'Centro', '87', 'Petrolina'),
(81, '64000000', 'Rua São Pedro', 'Centro', '86', 'Teresina'),
(82, '64200000', 'Av. João Silva Filho', 'Centro', '86', 'Parnaíba'),
(83, '64600000', 'Rua do Comércio', 'Centro', '89', 'Picos'),
(84, '64400000', 'Rua Coronel Lucas', 'Centro', '89', 'Floriano'),
(85, '64240000', 'Rua Duque de Caxias', 'Centro', '86', 'Campo Maior'),
(86, '20000000', 'Av. Rio Branco', 'Centro', '21', 'Rio de Janeiro'),
(87, '24000000', 'Rua XV de Novembro', 'Centro', '21', 'Niterói'),
(88, '25000000', 'Rua Marechal Floriano', 'Centro', '21', 'Duque de Caxias'),
(89, '26000000', 'Av. Presidente Kennedy', 'Centro', '21', 'Nova Iguaçu'),
(90, '24400000', 'Rua Marechal Hermes', 'Centro', '21', 'São Gonçalo'),
(91, '59000000', 'Av. Rio Branco', 'Centro', '84', 'Natal'),
(92, '59600000', 'Rua Coronel João Pessoa', 'Centro', '84', 'Mossoró'),
(93, '59100000', 'Av. Getúlio Vargas', 'Centro', '84', 'Parnamirim'),
(94, '59300000', 'Rua Dr. Luiz Carlos', 'Centro', '84', 'Caicó'),
(95, '59120000', 'Rua São José', 'Centro', '84', 'Macaíba'),
(96, '90000000', 'Av. Borges de Medeiros', 'Centro', '51', 'Porto Alegre'),
(97, '95000000', 'Rua Sinimbu', 'Centro', '54', 'Caxias do Sul'),
(98, '96000000', 'Av. General Osório', 'Centro', '53', 'Pelotas'),
(99, '92000000', 'Av. Rio Grande do Sul', 'Centro', '51', 'Canoas'),
(100, '97000000', 'Rua Venâncio Aires', 'Centro', '55', 'Santa Maria'),
(101, '76800000', 'Av. 7 de Setembro', 'Centro', '69', 'Porto Velho'),
(102, '76900000', 'Rua Alvorada', 'Centro', '69', 'Ji-Paraná'),
(103, '76820000', 'Rua Acre', 'Centro', '69', 'Ariquemes'),
(104, '76980000', 'Av. Tancredo Neves', 'Centro', '69', 'Vilhena'),
(105, '76940000', 'Rua Clodoaldo', 'Centro', '69', 'Cacoal'),
(106, '69300000', 'Av. Ville Roy', 'Centro', '95', 'Boa Vista'),
(107, '69305000', 'Rua República', 'Centro', '95', 'Rorainópolis'),
(108, '69308000', 'Rua do Comércio', 'Centro', '95', 'Caracaraí'),
(109, '69310000', 'Rua 7 de Setembro', 'Centro', '95', 'Alto Alegre'),
(110, '69313000', 'Rua Brasília', 'Centro', '95', 'Iracema'),
(111, '88000000', 'Rua XV de Novembro', 'Centro', '48', 'Florianópolis'),
(112, '89200000', 'Rua Otto Boehm', 'Centro', '47', 'Joinville'),
(113, '89000000', 'Rua 15 de Novembro', 'Centro', '47', 'Blumenau'),
(114, '88100000', 'Av. Beira Mar', 'Centro', '48', 'São José'),
(115, '88800000', 'Rua Dante Marcucci', 'Centro', '48', 'Criciúma'),
(116, '18000000', 'Av. Dom Aguirre', 'Centro', '15', 'Sorocaba'),
(117, '18100000', 'Rua do Porto', 'Centro', '15', 'Votorantim'),
(118, '18130000', 'Rua São João', 'Centro', '15', 'Araçoiaba da Serra'),
(119, '01000000', 'Av. Paulista', 'Bela Vista', '11', 'São Paulo'),
(120, '13000000', 'Av. Francisco Glicério', 'Centro', '19', 'Campinas'),
(121, '49000000', 'Av. Barão de Maruim', 'Centro', '79', 'Aracaju'),
(122, '49100000', 'Rua Lagarto', 'Centro', '79', 'Nossa Senhora do Socorro'),
(123, '49200000', 'Rua Coronel Fabriciano', 'Centro', '79', 'Lagarto'),
(124, '49500000', 'Av. Silvio Romero', 'Centro', '79', 'Itabaiana'),
(125, '49180000', 'Rua Getúlio Vargas', 'Centro', '79', 'Estância'),
(126, '77000000', 'Av. Tocantins', 'Centro', '63', 'Palmas'),
(127, '77800000', 'Rua Ceará', 'Centro', '63', 'Araguaína'),
(128, '77400000', 'Rua 15 de Novembro', 'Centro', '63', 'Gurupi'),
(129, '77700000', 'Av. Bernardo Sayão', 'Centro', '63', 'Porto Nacional'),
(130, '77300000', 'Rua 7 de Setembro', 'Centro', '63', 'Paraíso do Tocantins');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidades`
--

CREATE TABLE `cidades` (
  `nomecidade` varchar(25) NOT NULL,
  `uf` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cidades`
--

INSERT INTO `cidades` (`nomecidade`, `uf`) VALUES
('Cruzeiro do Sul', 'AC'),
('Feijó', 'AC'),
('Rio Branco', 'AC'),
('Sena Madureira', 'AC'),
('Tarauacá', 'AC'),
('Arapiraca', 'AL'),
('Maceió', 'AL'),
('Palmeira dos Índios', 'AL'),
('Penedo', 'AL'),
('Rio Largo', 'AL'),
('Coari', 'AM'),
('Itacoatiara', 'AM'),
('Manacapuru', 'AM'),
('Manaus', 'AM'),
('Parintins', 'AM'),
('Camaçari', 'BA'),
('Feira de Santana', 'BA'),
('Juazeiro', 'BA'),
('Salvador', 'BA'),
('Vitória da Conquista', 'BA'),
('Caucaia', 'CE'),
('Fortaleza', 'CE'),
('Juazeiro do Norte', 'CE'),
('Maracanaú', 'CE'),
('Sobral', 'CE'),
('Brasília', 'DF'),
('Ceilândia', 'DF'),
('Planaltina', 'DF'),
('Samambaia', 'DF'),
('Taguatinga', 'DF'),
('Cachoeiro de Itapemirim', 'ES'),
('Cariacica', 'ES'),
('Serra', 'ES'),
('Vila Velha', 'ES'),
('Vitória', 'ES'),
('Anápolis', 'GO'),
('Aparecida de Goiânia', 'GO'),
('Goiânia', 'GO'),
('Luziânia', 'GO'),
('Rio Verde', 'GO'),
('Caxias', 'MA'),
('Codó', 'MA'),
('Imperatriz', 'MA'),
('São Luís', 'MA'),
('Timon', 'MA'),
('Belo Horizonte', 'MG'),
('Contagem', 'MG'),
('Juiz de Fora', 'MG'),
('Montes Claros', 'MG'),
('Uberlândia', 'MG'),
('Campo Grande', 'MS'),
('Corumbá', 'MS'),
('Dourados', 'MS'),
('Ponta Porã', 'MS'),
('Três Lagoas', 'MS'),
('Cuiabá', 'MT'),
('Rondonópolis', 'MT'),
('Sinop', 'MT'),
('Tangará da Serra', 'MT'),
('Várzea Grande', 'MT'),
('Ananindeua', 'PA'),
('Belém', 'PA'),
('Marabá', 'PA'),
('Parauapebas', 'PA'),
('Santarém', 'PA'),
('Bayeux', 'PB'),
('Campina Grande', 'PB'),
('João Pessoa', 'PB'),
('Patos', 'PB'),
('Santa Rita', 'PB'),
('Caruaru', 'PE'),
('Jaboatão dos Guararapes', 'PE'),
('Olinda', 'PE'),
('Petrolina', 'PE'),
('Recife', 'PE'),
('Campo Maior', 'PI'),
('Floriano', 'PI'),
('Parnaíba', 'PI'),
('Picos', 'PI'),
('Teresina', 'PI'),
('Cascavel', 'PR'),
('Curitiba', 'PR'),
('Londrina', 'PR'),
('Maringá', 'PR'),
('Ponta Grossa', 'PR'),
('Duque de Caxias', 'RJ'),
('Niterói', 'RJ'),
('Nova Iguaçu', 'RJ'),
('Rio de Janeiro', 'RJ'),
('São Gonçalo', 'RJ'),
('Caicó', 'RN'),
('Macaíba', 'RN'),
('Mossoró', 'RN'),
('Natal', 'RN'),
('Parnamirim', 'RN'),
('Ariquemes', 'RO'),
('Cacoal', 'RO'),
('Ji-Paraná', 'RO'),
('Porto Velho', 'RO'),
('Vilhena', 'RO'),
('Alto Alegre', 'RR'),
('Boa Vista', 'RR'),
('Caracaraí', 'RR'),
('Iracema', 'RR'),
('Rorainópolis', 'RR'),
('Canoas', 'RS'),
('Caxias do Sul', 'RS'),
('Pelotas', 'RS'),
('Porto Alegre', 'RS'),
('Santa Maria', 'RS'),
('Blumenau', 'SC'),
('Criciúma', 'SC'),
('Florianópolis', 'SC'),
('Joinville', 'SC'),
('São José', 'SC'),
('Aracaju', 'SE'),
('Estância', 'SE'),
('Itabaiana', 'SE'),
('Lagarto', 'SE'),
('Nossa Senhora do Socorro', 'SE'),
('Araçoiaba da Serra', 'SP'),
('Campinas', 'SP'),
('São Paulo', 'SP'),
('Sorocaba', 'SP'),
('Votorantim', 'SP'),
('Araguaína', 'TO'),
('Gurupi', 'TO'),
('Palmas', 'TO'),
('Paraíso do Tocantins', 'TO'),
('Porto Nacional', 'TO');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estados`
--

CREATE TABLE `estados` (
  `uf` varchar(2) NOT NULL,
  `nomeestado` varchar(15) DEFAULT NULL,
  `regiao` varchar(25) DEFAULT NULL,
  `codigoibge` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estados`
--

INSERT INTO `estados` (`uf`, `nomeestado`, `regiao`, `codigoibge`) VALUES
('AC', 'Acre', 'Norte', '12'),
('AL', 'Alagoas', 'Nordeste', '27'),
('AM', 'Amazonas', 'Norte', '13'),
('AP', 'Amapá', 'Norte', '16'),
('BA', 'Bahia', 'Nordeste', '29'),
('CE', 'Ceará', 'Nordeste', '23'),
('DF', 'Distrito Federa', 'Centro-Oeste', '53'),
('ES', 'Espírito Santo', 'Sudeste', '32'),
('GO', 'Goiás', 'Centro-Oeste', '52'),
('MA', 'Maranhão', 'Nordeste', '21'),
('MG', 'Minas Gerais', 'Sudeste', '31'),
('MS', 'Mato Grosso do ', 'Centro-Oeste', '50'),
('MT', 'Mato Grosso', 'Centro-Oeste', '51'),
('PA', 'Pará', 'Norte', '15'),
('PB', 'Paraíba', 'Nordeste', '25'),
('PE', 'Pernambuco', 'Nordeste', '26'),
('PI', 'Piauí', 'Nordeste', '22'),
('PR', 'Paraná', 'Sul', '41'),
('RJ', 'Rio de Janeiro', 'Sudeste', '33'),
('RN', 'Rio Grande do N', 'Nordeste', '24'),
('RO', 'Rondônia', 'Norte', '11'),
('RR', 'Roraima', 'Norte', '14'),
('RS', 'Rio Grande do S', 'Sul', '43'),
('SC', 'Santa Catarina', 'Sul', '42'),
('SE', 'Sergipe', 'Nordeste', '28'),
('SP', 'São Paulo', 'Sudeste', '35'),
('TO', 'Tocantins', 'Norte', '17');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `ceps`
--
ALTER TABLE `ceps`
  ADD PRIMARY KEY (`id_ceps`),
  ADD KEY `nomecidade` (`nomecidade`);

--
-- Índices de tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`nomecidade`),
  ADD KEY `uf` (`uf`);

--
-- Índices de tabela `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`uf`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ceps`
--
ALTER TABLE `ceps`
  MODIFY `id_ceps` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `ceps`
--
ALTER TABLE `ceps`
  ADD CONSTRAINT `ceps_ibfk_1` FOREIGN KEY (`nomecidade`) REFERENCES `cidades` (`nomecidade`);

--
-- Restrições para tabelas `cidades`
--
ALTER TABLE `cidades`
  ADD CONSTRAINT `cidades_ibfk_1` FOREIGN KEY (`uf`) REFERENCES `estados` (`uf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
