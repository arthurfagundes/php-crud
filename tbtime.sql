-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Nov-2022 às 01:04
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdcopa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbtime`
--

CREATE TABLE `tbtime` (
  `id` int(11) NOT NULL,
  `time` varchar(80) DEFAULT NULL,
  `pais` varchar(80) DEFAULT NULL,
  `numtitulos` int(11) DEFAULT NULL,
  `coruniforme` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbtime`
--

INSERT INTO `tbtime` (`id`, `time`, `pais`, `numtitulos`, `coruniforme`) VALUES
(1, 'Seleção Brasileira de Futebol', 'Brasil', 5, 'Verde e amarelo'),
(3, 'Seleção Argentina de Futebol', 'Argentina', 2, 'Azul e branco');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbtime`
--
ALTER TABLE `tbtime`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbtime`
--
ALTER TABLE `tbtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
