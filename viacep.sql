-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/10/2025 às 20:53
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
-- Banco de dados: `viacep`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cep`
--

CREATE TABLE `cep` (
  `id_cep` int(11) NOT NULL,
  `id_cidade` int(11) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `logradouro` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `ddd` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cep`
--

INSERT INTO `cep` (`id_cep`, `id_cidade`, `nome`, `logradouro`, `bairro`, `ddd`) VALUES
(1, 1, '69900-000', 'Av. Getúlio Vargas', 'Centro', '68'),
(2, 2, '69900-100', 'Rua dos Andradas', 'Industrial', '68'),
(3, 3, '69900-200', 'Rua das Flores', 'Bela Vista', '68'),
(4, 4, '69900-300', 'Av. Brasil', 'Centro Sul', '68'),
(5, 5, '69900-400', 'Rua do Comércio', 'Jardim', '68'),
(6, 6, '57000-000', 'Av. Fernandes Lima', 'Centro', '82'),
(7, 7, '57000-100', 'Rua Barão de Maruim', 'Trapiche', '82'),
(8, 8, '57000-200', 'Rua do Sol', 'Farol', '82'),
(9, 9, '57000-300', 'Av. Gov. Afrânio Lages', 'Centro Sul', '82'),
(10, 10, '57000-400', 'Rua João Pessoa', 'Pajuçara', '82'),
(11, 11, '68900-000', 'Av. FAB', 'Centro', '96'),
(12, 12, '68900-100', 'Rua Cora de Carvalho', 'Centro', '96'),
(13, 13, '68900-200', 'Rua Ceará', 'Zona Norte', '96'),
(14, 14, '68900-300', 'Av. 1º de Maio', 'Centro', '96'),
(15, 15, '68900-400', 'Rua Beira Rio', 'Zona Sul', '96'),
(16, 16, '69000-000', 'Av. Sete de Setembro', 'Centro', '92'),
(17, 17, '69000-100', 'Rua dos Barés', 'Centro', '92'),
(18, 18, '69000-200', 'Rua Tefé', 'Dom Pedro', '92'),
(19, 19, '69000-300', 'Av. Djalma Batista', 'Chapada', '92'),
(20, 20, '69000-400', 'Rua 10 de Julho', 'Centro', '92'),
(21, 21, '40000-000', 'Av. Sete de Setembro', 'Pelourinho', '71'),
(22, 22, '40000-100', 'Rua Chile', 'Centro', '71'),
(23, 23, '40000-200', 'Av. Bonocô', 'Barris', '71'),
(24, 24, '40000-300', 'Rua João Gomes', 'Piatã', '71'),
(25, 25, '40000-400', 'Rua da Paz', 'Ondina', '71'),
(26, 26, '60000-000', 'Av. Beira Mar', 'Meireles', '85'),
(27, 27, '60000-100', 'Rua Senador Pompeu', 'Aldeota', '85'),
(28, 28, '60000-200', 'Av. Dom Luís', 'Centro', '85'),
(29, 29, '60000-300', 'Rua dos Tabajaras', 'Varjota', '85'),
(30, 30, '60000-400', 'Rua 24 de Maio', 'Centro', '85'),
(31, 31, '70000-000', 'Setor Comercial Sul', 'Centro', '61'),
(32, 32, '70000-100', 'Rua 10', 'Asa Sul', '61'),
(33, 33, '70000-200', 'Rua 20', 'Asa Norte', '61'),
(34, 34, '70000-300', 'Setor Hoteleiro Norte', 'Centro', '61'),
(35, 35, '70000-400', 'Setor de Clubes Esportivos Sul', 'Centro', '61'),
(36, 36, '29000-000', 'Av. Jerônimo Monteiro', 'Centro', '27'),
(37, 37, '29000-100', 'Rua da Lama', 'Maruípe', '27'),
(38, 38, '29000-200', 'Rua Sete de Setembro', 'Praia do Canto', '27'),
(39, 39, '29000-300', 'Av. Vitória', 'Santa Helena', '27'),
(40, 40, '29000-400', 'Rua Gonçalves Dias', 'Jardim Camburi', '27'),
(41, 41, '74000-000', 'Av. Anhanguera', 'Centro', '62'),
(42, 42, '74000-100', 'Rua 44', 'Setor Central', '62'),
(43, 43, '74000-200', 'Av. Goiás', 'Setor Oeste', '62'),
(44, 44, '74000-300', 'Rua 5', 'Setor Bueno', '62'),
(45, 45, '74000-400', 'Av. T-9', 'Setor Sul', '62'),
(46, 46, '65000-000', 'Av. Jerônimo de Albuquerque', 'Centro', '98'),
(47, 47, '65000-100', 'Rua Grande', 'Centro', '98'),
(48, 48, '65000-200', 'Rua do Sol', 'Anil', '98'),
(49, 49, '65000-300', 'Av. dos Portugueses', 'Cohama', '98'),
(50, 50, '65000-400', 'Rua das Cajazeiras', 'Calhau', '98'),
(51, 51, '78000-000', 'Av. Historiador Rubens de Mendonça', 'Centro', '65'),
(52, 52, '78000-100', 'Rua 13 de Junho', 'Centro', '65'),
(53, 53, '78000-200', 'Av. Fernando Corrêa da Costa', 'Jardim Aclimação', '65'),
(54, 54, '78000-300', 'Rua Barão de Melgaço', 'Duque de Caxias', '65'),
(55, 55, '78000-400', 'Av. Beira Rio', 'CPA', '65');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidade`
--

CREATE TABLE `cidade` (
  `id_cidade` int(11) NOT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cidade`
--

INSERT INTO `cidade` (`id_cidade`, `id_estado`, `nome`) VALUES
(1, 1, 'Rio Branco'),
(2, 1, 'Cruzeiro do Sul'),
(3, 1, 'Sena Madureira'),
(4, 1, 'Tarauacá'),
(5, 1, 'Brasileia'),
(6, 2, 'Maceió'),
(7, 2, 'Arapiraca'),
(8, 2, 'Palmeira dos Índios'),
(9, 2, 'União dos Palmares'),
(10, 2, 'Penedo'),
(11, 3, 'Macapá'),
(12, 3, 'Santana'),
(13, 3, 'Laranjal do Jari'),
(14, 3, 'Oiapoque'),
(15, 3, 'Mazagão'),
(16, 4, 'Manaus'),
(17, 4, 'Parintins'),
(18, 4, 'Itacoatiara'),
(19, 4, 'Coari'),
(20, 4, 'Manacapuru'),
(21, 5, 'Salvador'),
(22, 5, 'Feira de Santana'),
(23, 5, 'Vitória da Conquista'),
(24, 5, 'Camaçari'),
(25, 5, 'Juazeiro'),
(26, 6, 'Fortaleza'),
(27, 6, 'Sobral'),
(28, 6, 'Juazeiro do Norte'),
(29, 6, 'Maracanaú'),
(30, 6, 'Iguatu'),
(31, 7, 'Brasília'),
(32, 7, 'Ceilândia'),
(33, 7, 'Taguatinga'),
(34, 7, 'Samambaia'),
(35, 7, 'Planaltina'),
(36, 8, 'Vitória'),
(37, 8, 'Vila Velha'),
(38, 8, 'Serra'),
(39, 8, 'Cariacica'),
(40, 8, 'Cachoeiro de Itapemirim'),
(41, 9, 'Goiânia'),
(42, 9, 'Aparecida de Goiânia'),
(43, 9, 'Anápolis'),
(44, 9, 'Rio Verde'),
(45, 9, 'Luziânia'),
(46, 10, 'São Luís'),
(47, 10, 'Imperatriz'),
(48, 10, 'Timon'),
(49, 10, 'Caxias'),
(50, 10, 'Codó'),
(51, 11, 'Cuiabá'),
(52, 11, 'Várzea Grande'),
(53, 11, 'Rondonópolis'),
(54, 11, 'Sinop'),
(55, 11, 'Tangará da Serra'),
(56, 12, 'Campo Grande'),
(57, 12, 'Dourados'),
(58, 12, 'Três Lagoas'),
(59, 12, 'Corumbá'),
(60, 12, 'Ponta Porã'),
(61, 13, 'Belo Horizonte'),
(62, 13, 'Uberlândia'),
(63, 13, 'Contagem'),
(64, 13, 'Juiz de Fora'),
(65, 13, 'Betim'),
(66, 14, 'Belém'),
(67, 14, 'Ananindeua'),
(68, 14, 'Santarém'),
(69, 14, 'Marabá'),
(70, 14, 'Parauapebas'),
(71, 15, 'João Pessoa'),
(72, 15, 'Campina Grande'),
(73, 15, 'Santa Rita'),
(74, 15, 'Patos'),
(75, 15, 'Bayeux'),
(76, 16, 'Curitiba'),
(77, 16, 'Londrina'),
(78, 16, 'Maringá'),
(79, 16, 'Ponta Grossa'),
(80, 16, 'Cascavel'),
(81, 17, 'Recife'),
(82, 17, 'Jaboatão dos Guararapes'),
(83, 17, 'Olinda'),
(84, 17, 'Caruaru'),
(85, 17, 'Petrolina'),
(86, 18, 'Teresina'),
(87, 18, 'Parnaíba'),
(88, 18, 'Picos'),
(89, 18, 'Piripiri'),
(90, 18, 'Floriano'),
(91, 19, 'Rio de Janeiro'),
(92, 19, 'São Gonçalo'),
(93, 19, 'Duque de Caxias'),
(94, 19, 'Nova Iguaçu'),
(95, 19, 'Niterói'),
(96, 20, 'Natal'),
(97, 20, 'Mossoró'),
(98, 20, 'Parnamirim'),
(99, 20, 'Caicó'),
(100, 20, 'São Gonçalo do Amarante'),
(101, 21, 'Porto Alegre'),
(102, 21, 'Caxias do Sul'),
(103, 21, 'Pelotas'),
(104, 21, 'Canoas'),
(105, 21, 'Santa Maria'),
(106, 22, 'Porto Velho'),
(107, 22, 'Ji-Paraná'),
(108, 22, 'Ariquemes'),
(109, 22, 'Vilhena'),
(110, 22, 'Cacoal'),
(111, 23, 'Boa Vista'),
(112, 23, 'Rorainópolis'),
(113, 23, 'Caracaraí'),
(114, 23, 'Alto Alegre'),
(115, 23, 'Pacaraima'),
(116, 24, 'Florianópolis'),
(117, 24, 'Joinville'),
(118, 24, 'Blumenau'),
(119, 24, 'São José'),
(120, 24, 'Criciúma'),
(121, 25, 'São Paulo'),
(122, 25, 'Guarulhos'),
(123, 25, 'Campinas'),
(124, 25, 'São Bernardo do Campo'),
(125, 25, 'Santo André');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estados`
--

CREATE TABLE `estados` (
  `id_estado` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `regiao` varchar(100) DEFAULT NULL,
  `codigo_IBGE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estados`
--

INSERT INTO `estados` (`id_estado`, `nome`, `sigla`, `regiao`, `codigo_IBGE`) VALUES
(1, 'Acre', 'AC', 'Norte', '12'),
(2, 'Alagoas', 'AL', 'Nordeste', '27'),
(3, 'Amapá', 'AP', 'Norte', '16'),
(4, 'Amazonas', 'AM', 'Norte', '13'),
(5, 'Bahia', 'BA', 'Nordeste', '29'),
(6, 'Ceará', 'CE', 'Nordeste', '23'),
(7, 'Distrito Federal', 'DF', 'Centro‑Oeste', '53'),
(8, 'Espírito Santo', 'ES', 'Sudeste', '32'),
(9, 'Goiás', 'GO', 'Centro‑Oeste', '52'),
(10, 'Maranhão', 'MA', 'Nordeste', '21'),
(11, 'Mato Grosso', 'MT', 'Centro‑Oeste', '51'),
(12, 'Mato Grosso do Sul', 'MS', 'Centro‑Oeste', '50'),
(13, 'Minas Gerais', 'MG', 'Sudeste', '31'),
(14, 'Pará', 'PA', 'Norte', '15'),
(15, 'Paraíba', 'PB', 'Nordeste', '25'),
(16, 'Paraná', 'PR', 'Sul', '41'),
(17, 'Pernambuco', 'PE', 'Nordeste', '26'),
(18, 'Piauí', 'PI', 'Nordeste', '22'),
(19, 'Rio de Janeiro', 'RJ', 'Sudeste', '33'),
(20, 'Rio Grande do Norte', 'RN', 'Nordeste', '24'),
(21, 'Rio Grande do Sul', 'RS', 'Sul', '43'),
(22, 'Rondônia', 'RO', 'Norte', '11'),
(23, 'Roraima', 'RR', 'Norte', '14'),
(24, 'Santa Catarina', 'SC', 'Sul', '42'),
(25, 'São Paulo', 'SP', 'Sudeste', '35'),
(26, 'Sergipe', 'SE', 'Nordeste', '28'),
(27, 'Tocantins', 'TO', 'Norte', '17'),
(28, 'Sergipe', 'SE', 'Nordeste', '28'),
(29, 'Tocantins', 'TO', 'Norte', '17');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cep`
--
ALTER TABLE `cep`
  ADD PRIMARY KEY (`id_cep`),
  ADD KEY `id_cidade` (`id_cidade`);

--
-- Índices de tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`id_cidade`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Índices de tabela `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estado`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cep`
--
ALTER TABLE `cep`
  MODIFY `id_cep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de tabela `cidade`
--
ALTER TABLE `cidade`
  MODIFY `id_cidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de tabela `estados`
--
ALTER TABLE `estados`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cep`
--
ALTER TABLE `cep`
  ADD CONSTRAINT `cep_ibfk_1` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cidade`
--
ALTER TABLE `cidade`
  ADD CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
