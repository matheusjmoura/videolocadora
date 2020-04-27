-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19-Nov-2014 às 20:58
-- Versão do servidor: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bd_locadora`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_caixas`
--

CREATE TABLE IF NOT EXISTS `tb_caixas` (
`cod_cx` int(4) NOT NULL,
  `func_cod` int(4) DEFAULT NULL,
  `valor_receb_cx` double DEFAULT NULL,
  `valor_gasto_cx` double DEFAULT NULL,
  `balanco_cx` tinyint(1) DEFAULT NULL,
  `dt_abert_cx` date DEFAULT NULL,
  `dt_fech_cx` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_categorias`
--

CREATE TABLE IF NOT EXISTS `tb_categorias` (
`cod_cat` int(250) NOT NULL,
  `desc_cat` varchar(250) DEFAULT NULL,
  `vl_cat` double DEFAULT NULL,
  `dt_dev_cat` int(250) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `tb_categorias`
--

INSERT INTO `tb_categorias` (`cod_cat`, `desc_cat`, `vl_cat`, `dt_dev_cat`) VALUES
(1, 'Lançamento', 5, 1),
(2, 'Catálogo', 2.5, 2),
(3, 'Série', 8, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_classificacoes`
--

CREATE TABLE IF NOT EXISTS `tb_classificacoes` (
`cod_clas` int(250) NOT NULL,
  `desc_clas` varchar(250) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `tb_classificacoes`
--

INSERT INTO `tb_classificacoes` (`cod_clas`, `desc_clas`) VALUES
(1, 'ER'),
(2, 'L'),
(3, '10'),
(4, '12'),
(5, '14'),
(6, '16'),
(7, '18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_clientes`
--

CREATE TABLE IF NOT EXISTS `tb_clientes` (
`cod_cli` int(4) NOT NULL,
  `nome_cli` varchar(250) DEFAULT NULL,
  `end_cli` varchar(250) DEFAULT NULL,
  `tel_cli` varchar(250) DEFAULT NULL,
  `cel_cli` varchar(250) DEFAULT NULL,
  `cidade_cli` varchar(250) DEFAULT NULL,
  `num_cli` varchar(250) DEFAULT NULL,
  `bairro_cli` varchar(250) DEFAULT NULL,
  `estado_cli` varchar(250) DEFAULT NULL,
  `cep_cli` varchar(250) DEFAULT NULL,
  `rg_cli` varchar(250) DEFAULT NULL,
  `cpf_cli` varchar(250) DEFAULT NULL,
  `dt_nasc_cli` date DEFAULT NULL,
  `sexo_cli` varchar(250) DEFAULT NULL,
  `email_cli` varchar(250) DEFAULT NULL,
  `ref_com_cli` varchar(250) DEFAULT NULL,
  `dt_cad_cli` date DEFAULT NULL,
  `func_cod` int(250) DEFAULT NULL,
  `obs_cli` varchar(250) DEFAULT NULL,
  `status_cli` bit(1) DEFAULT b'1'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Extraindo dados da tabela `tb_clientes`
--

INSERT INTO `tb_clientes` (`cod_cli`, `nome_cli`, `end_cli`, `tel_cli`, `cel_cli`, `cidade_cli`, `num_cli`, `bairro_cli`, `estado_cli`, `cep_cli`, `rg_cli`, `cpf_cli`, `dt_nasc_cli`, `sexo_cli`, `email_cli`, `ref_com_cli`, `dt_cad_cli`, `func_cod`, `obs_cli`, `status_cli`) VALUES
(1, 'Bruno de Oliveiraa', 'Exemplo', '(00)0000-0000', '(00)00000-0000', 'Piraju', '1000', 'Exemplo', 'SP', '18.800-000', '00.000.000-0', '000.000.000-00', '1111-11-11', 'Masculino', 'exemplo@hotmail.com', 'Mabraco', '1111-11-11', 1, '', b'1'),
(2, 'Teste', 'Teste', '(11)1111-1111', '(11)11111-1111', 'Teste', '1111', 'Teste', 'AC', '11.111-111', '11.111.111-1', '111.111.111-11', '1111-11-11', 'Masculino', 'teste@hotmail.com', '', '2014-05-11', 1, '', b'1'),
(3, 'Matheus José', 'teste', '(11)1111-1111', '(11)11111-1111', 'teste', '1111', 'teste', 'AC', '11.111-111', '11.111.111-1', '111.111.111-11', '1111-11-11', 'Masculino', 'teste', 'teste', '2014-05-15', 2, 'teste', b'1'),
(4, 'Gustavo mmmmm', 'Rua Edgar Martinelli', '(14)3351-3688', '(14)99835-4647', 'Piraju', '512', 'Jd. Ana Carolina', 'SP', '18.800-000', '00.000.000-0', '000.000.000-00', '1996-08-20', 'Masculino', 'gustavo.dias22@etec.sp.gov.br', '', '2014-05-20', 2, '', b'1'),
(5, 'Gustavo Fernandes Lima Dias', 'Rua Edgar Martinelli', '(14)3351-3688', '(14)99835-4647', 'Piraju', '512', 'Jardim Ana Carolina', 'SP', '18.800-000', '00.000.000-0', '000.000.000-00', '1111-11-11', 'Masculino', 'gustavo.dias22@etec.sp.gov.br', '', '2014-05-20', 2, '', b'1'),
(8, '2222222222', '222222222', '(11)1111-1111', '(22)22222-2222', '222222', '2222', '22222222222', 'AC', '11.111-111', '11.111.111-1', '111.111.111-11', '2223-10-22', 'Masculino', '222222', '', '2014-05-28', 4, '', b'1'),
(9, '333333333', '33333333333333333333', '(33)3333-3333', '(22)22222-2222', '333333333333', '333333333', '33333333333', 'AC', '11.111-111', '11.111.111-1', '111.111.111-11', '3335-10-03', 'Masculino', '33333333333333', '', '2014-05-28', 4, '', b'1'),
(10, '55555555555555', '5', '(55)5555-5555', '(55)55555-5555', '5', '5', '5', 'AC', '55.555-555', '55.555.555-5', '555.555.555-55', '5559-08-24', 'Masculino', '555555555555555555', '', '2014-05-28', 4, '', b'0'),
(18, 'Alysson', 'teste', '(00)0000-0000', '(00)00000-0000', 'teste', '0000', 'teste', 'AC', '00.000-000', '00.000.000-0', '000.000.000-00', '0002-11-30', 'Masculino', 'teste', 'teste', '2014-06-11', 4, '', b'1'),
(22, 'OI', 'asd', '(00)0000-0000', '(00)00000-0000', 'asd', '00', 'asd', 'AC', '10.000-000', '00.000.000-0', '000.000.000-00', '1996-12-19', 'Masculino', 'asd', '', '2014-06-15', 4, '', b'1'),
(23, '5A', '5A', '(11)1111-1111', '(11)11111-1111', '5A', '1', '5A', 'AC', '11.111-111', '11.111.111-1', '111.111.111-11', '1111-11-11', 'Masculino', '5A', '5A', '2014-06-22', 1, 'A\r\nA\r\nA\r\nA\r\nA\r\nA\r\nS\r\nD\r\nV\r\nG\r\nD', b'1'),
(24, 'TESTE RELATORI0', 'asd', '(11)1111-1111', '(11)11111-1111', 'asd', '1111', 'asd', 'AC', '11.111-111', '11.111.111-1', '469.390.433-43', '1111-11-11', 'Masculino', 'contato@asd.com.br', '', '2014-11-03', 1, '', b'1'),
(25, 'ad', 'asdads', '(22)2222-2222', '(22)22222-2222', 'asd', '324', 'asd', 'AC', '22.222-222', '11.111.111-1', '111.132.423-42', '1111-11-11', 'Masculino', 'asdasd', '', '2014-11-03', 1, '', b'1'),
(26, 'Pedro de Alcântara', 'Rua Major Mariano', '(11)1111-1111', '(11)11111-1111', 'Piraju', '1.350', 'Centro', 'SP', '18.800-000', '11.111.111-1', '112.312.313-21', '1111-11-11', 'Masculino', 'asd', '', '2014-11-03', 1, '', b'1'),
(27, 'Matheus José de Moura', 'Rua Coronel Nhonho Braga', '(14)3351-1805', '(14)99693-1884', 'Piraju', '642', 'Centro', 'SP', '18.800-000', '52.390.106-9', '469.360.548-46', '1996-12-19', 'Masculino', 'exemplo@hotmail.com', '', '2014-11-03', 1, '', b'1'),
(28, 'MIGUEL', 'ASDASD', '(11)1111-1111', '(11)11111-1111', 'ASD', '123', 'ASD', 'AC', '12.111-111', '11.111.111-1', '123.123.131-23', '1111-11-11', 'Masculino', 'ASDASD', '', '2014-11-14', 1, '', b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_contas_receber`
--

CREATE TABLE IF NOT EXISTS `tb_contas_receber` (
`cod_conr` int(250) NOT NULL,
  `loc_cod` int(250) NOT NULL,
  `datapg_conr` datetime NOT NULL,
  `valor_conr` double NOT NULL,
  `desconto_conr` double NOT NULL,
  `statuspg_conr` bit(1) NOT NULL DEFAULT b'1',
  `status_conr` bit(1) NOT NULL DEFAULT b'1',
  `acrescimo_conr` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_dependentes`
--

CREATE TABLE IF NOT EXISTS `tb_dependentes` (
`cod_dep` int(4) NOT NULL,
  `cli_cod` int(4) NOT NULL,
  `nome_dep` varchar(250) DEFAULT NULL,
  `desc_dep` varchar(250) DEFAULT NULL,
  `dt_nasc_dep` date DEFAULT NULL,
  `status_dep` bit(1) DEFAULT b'1'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `tb_dependentes`
--

INSERT INTO `tb_dependentes` (`cod_dep`, `cli_cod`, `nome_dep`, `desc_dep`, `dt_nasc_dep`, `status_dep`) VALUES
(0, 0, '-', NULL, NULL, NULL),
(1, 16, 'Bruno', 'Amigo', '0002-11-30', b'0'),
(2, 18, 'Vasconcellos', 'matheus', '0002-11-30', b'1'),
(3, 4, 'Lima', 'viado', '1111-11-11', b'1'),
(4, 18, 'José Fernandes', '.kjçlk', '1976-12-19', b'1'),
(5, 8, 'Matheus', 'Masculino', '1996-12-19', b'1'),
(6, 18, 'AAAAA', 'Genro', '1923-12-19', b'1'),
(7, 3, 'Célia José de Moura', 'Mãe', '1111-11-11', b'1'),
(8, 10, 'teste', 'Sogro(a)', '1111-11-11', b'1'),
(9, 1, 'asd\\BBBBBBBBBBBB', 'Tio(a)', '1111-11-11', b'1'),
(10, 18, 'ASDASD', 'Avô(ó)', '1111-11-11', b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_despesas`
--

CREATE TABLE IF NOT EXISTS `tb_despesas` (
`cod_desp` int(250) NOT NULL,
  `descri_desp` varchar(250) DEFAULT NULL,
  `data_desp` datetime NOT NULL,
  `valor_desp` double NOT NULL,
  `status_desp` bit(1) NOT NULL DEFAULT b'1',
  `func_cod` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_empresas`
--

CREATE TABLE IF NOT EXISTS `tb_empresas` (
`cod_emp` int(4) NOT NULL,
  `nome_emp` varchar(250) DEFAULT NULL,
  `cnpj_emp` varchar(250) DEFAULT NULL,
  `end_emp` varchar(250) DEFAULT NULL,
  `tel_emp` varchar(250) DEFAULT NULL,
  `cidade_emp` varchar(250) DEFAULT NULL,
  `estado_emp` varchar(250) DEFAULT NULL,
  `email_emp` varchar(250) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `tb_empresas`
--

INSERT INTO `tb_empresas` (`cod_emp`, `nome_emp`, `cnpj_emp`, `end_emp`, `tel_emp`, `cidade_emp`, `estado_emp`, `email_emp`) VALUES
(1, 'Premiere Movies ME', '86.663.174/0001-50', 'Rua Coronel Nhonho Braga, 720', '(14) 3351-1020', 'Piraju', 'SP', 'contato@premieremovies.com.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_exemplares`
--

CREATE TABLE IF NOT EXISTS `tb_exemplares` (
`cod_ex` int(4) NOT NULL,
  `filme_cod` int(4) DEFAULT NULL,
  `midia_cod` int(4) DEFAULT NULL,
  `forn_cod` int(4) DEFAULT NULL,
  `preco_cod` int(4) DEFAULT NULL,
  `qtd_ex` int(4) DEFAULT NULL,
  `status_ex` bit(1) DEFAULT b'1'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Extraindo dados da tabela `tb_exemplares`
--

INSERT INTO `tb_exemplares` (`cod_ex`, `filme_cod`, `midia_cod`, `forn_cod`, `preco_cod`, `qtd_ex`, `status_ex`) VALUES
(1, 7, 29, 27, 27, 9, b'1'),
(2, 5, 9, 1, 1, 9, b'1'),
(3, 12, 8, 1, 2, 8, b'1'),
(4, 2, 1, 1, 1, 3, b'1'),
(5, 1, 7, 1, 1, 2, b'1'),
(6, 10, 1, 1, 1, 2, b'1'),
(7, 1, 1, 1, 2, 2, b'1'),
(9, 2, 8, 1, 2, 22, b'1'),
(10, 13, 3, 1, 2, 12345678, b'1'),
(11, 2, 8, 1, 2, 7, b'1'),
(12, 15, 3, 1, 2, 10, b'1'),
(13, 13, 3, 1, 1, 9, b'1'),
(14, 15, 3, 1, 2, 9, b'1'),
(15, 8, 8, 1, 2, 1, b'1'),
(16, 8, 8, 1, 2, 1, b'1'),
(17, 11, 1, 1, 1, 1, b'1'),
(18, 8, 1, 1, 2, 2, b'1'),
(19, 11, 8, 1, 2, 12, b'1'),
(20, 7, 8, 1, 1, 2, b'1'),
(21, 11, 8, 1, 2, 9, b'1'),
(22, 7, 8, 1, 2, 8, b'1'),
(23, 7, 8, 1, 2, 2, b'1'),
(24, 11, 3, 1, 2, 2, b'1'),
(25, 11, 1, 1, 1, 3, b'1'),
(26, 7, 8, 1, 2, 1, b'1'),
(27, 11, 3, 1, 2, 2, b'1'),
(28, 8, 1, 1, 2, 2, b'1'),
(29, 8, 3, 1, 2, 1, b'1'),
(30, 11, 8, 1, 1, -1, b'1'),
(31, 8, 3, 1, 1, 2, b'1'),
(32, 8, 8, 1, 1, 2, b'1'),
(33, 11, 1, 1, 1, 2, b'1'),
(34, 12, 8, 1, 2, 11, b'1'),
(35, 8, 8, 1, 1, 2, b'1'),
(36, 8, 8, 1, 1, 2, b'1'),
(37, 8, 8, 1, 1, 2, b'1'),
(38, 11, 3, 1, 2, 3, b'1'),
(39, 5, 1, 1, 2, 9, b'1'),
(40, 21, 3, 2, 1, 2, b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_filmes`
--

CREATE TABLE IF NOT EXISTS `tb_filmes` (
`cod_filme` int(250) NOT NULL,
  `clas_cod` int(250) DEFAULT NULL,
  `gen_cod` int(250) DEFAULT NULL,
  `cat_cod` int(250) DEFAULT NULL,
  `nome_filme` varchar(250) DEFAULT NULL,
  `nac_filme` varchar(250) DEFAULT NULL,
  `duracao_filme` int(4) DEFAULT NULL,
  `dt_lanc_filme` date DEFAULT NULL,
  `diretor_filme` varchar(250) DEFAULT NULL,
  `dt_cad_filme` date DEFAULT NULL,
  `capa_filme` varchar(300) DEFAULT NULL,
  `sinopse_filme` varchar(300) DEFAULT NULL,
  `obs_filme` varchar(250) DEFAULT NULL,
  `status_filme` bit(1) DEFAULT b'1'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Extraindo dados da tabela `tb_filmes`
--

INSERT INTO `tb_filmes` (`cod_filme`, `clas_cod`, `gen_cod`, `cat_cod`, `nome_filme`, `nac_filme`, `duracao_filme`, `dt_lanc_filme`, `diretor_filme`, `dt_cad_filme`, `capa_filme`, `sinopse_filme`, `obs_filme`, `status_filme`) VALUES
(1, 2, 1, 1, 'Avatar', 'Norte Americano', 172, '2009-09-10', 'N/A', '2014-05-24', 'C:\\Users\\Yanne Buchler\\Documents\\capa1.jpg', '', '', b'1'),
(2, 1, 1, 1, 'Avataar', 'asd11', 1111, '0002-11-30', 'asd', '2014-05-24', 'C:\\Users\\Yanne Buchler\\Documents\\capa2.jpg', '', '', b'1'),
(4, 4, 4, 1, 'asd', 'asd', 2, '1111-11-11', 'asd', '2014-05-24', 'C:\\Users\\Yanne Buchler\\Documents\\capa3.jpg', 'asd', 'asd', b'1'),
(5, 1, 1, 1, 'asd', 'asd', 123, '1111-11-11', 'asd', '2014-05-24', 'C:\\Users\\Yanne Buchler\\Documents\\capa4.jpg', '', '', b'1'),
(6, 4, 2, 1, 'teste', 'teste', 111, '1111-11-11', 'teste', '2014-06-10', 'C:\\Users\\Yanne Buchler\\Documents\\capa5.jpg', '', '', b'1'),
(7, 1, 1, 1, 'teste', 'teste', 120, '1111-11-11', 'teste', '2014-06-11', 'C:\\Users\\Yanne Buchler\\Documents\\capa6.jpg', '', '', b'1'),
(8, 1, 1, 1, 'trsss', 'safd', 123, '1111-11-11', 'reste', '2014-06-11', 'C:\\Users\\Yanne Buchler\\Documents\\capa7.jpg', '', '', b'1'),
(9, 2, 3, 1, 'tesa', 'tesda', 123, '1111-11-11', 'tresd', '2014-06-11', 'C:\\Users\\Yanne Buchler\\Documents\\capa8.jpg', '', '', b'1'),
(10, 3, 5, 1, 'trsd', '', 123, '1111-11-11', 'das', '2014-06-11', 'C:\\Users\\Yanne Buchler\\Documents\\capa9.jpg', '', '', b'1'),
(11, 1, 1, 1, 'teste', 'asd', 123, '1111-11-11', 'reas', '2014-06-11', 'C:\\Users\\Yanne Buchler\\Documents\\capa10.jpg', '', '', b'1'),
(12, 3, 19, 1, 'kjhe', 'kjsd', 112, '1111-11-11', 'klajsdk', '2014-06-11', 'C:\\Users\\Yanne Buchler\\Documents\\capa11.jpg', '', '', b'1'),
(13, 4, 5, 1, 'Harry Potter', 'asd', 111, '1111-11-11', '1111', '2014-06-12', 'C:\\Users\\Yanne Buchler\\Documents\\capa12.jpg', '', '', b'1'),
(14, 7, 4, 1, 'asdasd', 'asdasd', 223, '1111-11-11', 'asdas', '2014-06-13', 'C:\\Users\\Yanne Buchler\\Documents\\capa13.jpg', '', '', b'1'),
(15, 2, 6, 1, 'Se Beber Não Case', 'Norte Americano', 160, '0002-11-30', 'NA', '2014-06-16', 'C:\\Users\\Yanne Buchler\\Documents\\capa14.jpg', '', '', b'1'),
(16, 1, 1, 1, 'TESTE CAPA (CAMINHO ERRADO)', 'TESTE CAPA', 160, '1111-11-11', 'TESTE CAPA', '2014-06-24', 'C:\\Users\\Yanne Buchler\\Documents\\c.jpg', '', '', b'1'),
(17, 1, 1, 1, 'TESTE CAPA (SEM ARQUIVO)', 'TESTE', 160, '1111-11-11', 'TESTE', '2014-06-24', NULL, '', '', b'1'),
(18, 2, 2, 1, 'Harry Potter e Ordem da Fênix', 'Norte Americano', 234, '1992-12-19', 'AASDAW', '2014-09-30', 'C:\\Users\\Yanne Buchler\\Documents\\capa15.jpg', '', '', b'1'),
(19, 1, 3, 1, 'asd', 'ads', 123, '1111-11-11', 'asd', '2014-09-30', 'C:\\Users\\Yanne Buchler\\Documents\\capa16.jpg', '', '', b'1'),
(20, 1, 1, 1, 'ABABABABABABABABABABAAB', 'ASD', 111, '1111-11-11', 'ASD', '2014-09-30', 'C:\\Users\\Yanne Buchler\\Documents\\capa17.jpg', '', '', b'1'),
(21, 3, 1, 1, 'Avatar', 'eua', 180, '1111-11-11', 'asdasd', '2014-11-04', 'C:\\Users\\Yanne Buchler\\Documents\\capa.jpg', 'aasdasda', 'asdasdasd', b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_fornecedores`
--

CREATE TABLE IF NOT EXISTS `tb_fornecedores` (
`cod_forn` int(250) NOT NULL,
  `nome_forn` varchar(250) DEFAULT NULL,
  `end_forn` varchar(250) DEFAULT NULL,
  `tel_forn` varchar(250) DEFAULT NULL,
  `cidade_forn` varchar(250) DEFAULT NULL,
  `num_forn` varchar(250) DEFAULT NULL,
  `bairro_forn` varchar(250) DEFAULT NULL,
  `estado_forn` varchar(250) DEFAULT NULL,
  `cep_forn` varchar(250) DEFAULT NULL,
  `email_forn` varchar(250) DEFAULT NULL,
  `cnpj_forn` varchar(250) DEFAULT NULL,
  `dt_cad_forn` date DEFAULT NULL,
  `obs_forn` varchar(250) DEFAULT NULL,
  `status_forn` bit(1) DEFAULT b'1'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `tb_fornecedores`
--

INSERT INTO `tb_fornecedores` (`cod_forn`, `nome_forn`, `end_forn`, `tel_forn`, `cidade_forn`, `num_forn`, `bairro_forn`, `estado_forn`, `cep_forn`, `email_forn`, `cnpj_forn`, `dt_cad_forn`, `obs_forn`, `status_forn`) VALUES
(1, 'teste', 'teste', '(00)0000-0000', 'teste', '000', 'teste', 'AC', '00.000-000', 'teste', '00.000.000/0000-00', '2014-06-10', '', b'1'),
(2, 'Piraju Distribuições LTDA', 'Rua Carlos de Campos', '(14) 3351-1032', 'Piraju', '324', 'Centro', 'SP', '18800-000', 'contato@pirajudist.com.br', '73.665.946/0001-40', '2014-11-02', 'Não há', b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_funcionarios`
--

CREATE TABLE IF NOT EXISTS `tb_funcionarios` (
`cod_func` int(250) NOT NULL,
  `nome_func` varchar(250) DEFAULT NULL,
  `end_func` varchar(250) DEFAULT NULL,
  `tel_func` varchar(250) DEFAULT NULL,
  `cel_func` varchar(250) DEFAULT NULL,
  `cidade_func` varchar(250) DEFAULT NULL,
  `num_func` varchar(250) DEFAULT NULL,
  `bairro_func` varchar(250) DEFAULT NULL,
  `estado_func` varchar(250) DEFAULT NULL,
  `cep_func` varchar(250) DEFAULT NULL,
  `rg_func` varchar(250) DEFAULT NULL,
  `cpf_func` varchar(250) DEFAULT NULL,
  `dt_nasc_func` date DEFAULT NULL,
  `sexo_func` varchar(250) DEFAULT NULL,
  `email_func` varchar(250) DEFAULT NULL,
  `dt_cad_func` date DEFAULT NULL,
  `sal_func` double DEFAULT NULL,
  `obs_func` varchar(250) DEFAULT NULL,
  `status_func` bit(1) DEFAULT b'1'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `tb_funcionarios`
--

INSERT INTO `tb_funcionarios` (`cod_func`, `nome_func`, `end_func`, `tel_func`, `cel_func`, `cidade_func`, `num_func`, `bairro_func`, `estado_func`, `cep_func`, `rg_func`, `cpf_func`, `dt_nasc_func`, `sexo_func`, `email_func`, `dt_cad_func`, `sal_func`, `obs_func`, `status_func`) VALUES
(1, 'Matheus José de Moura', 'Rua Major Mariano', '(00)0000-0000', '(00)00000-0000', 'Piraju', '1350', 'Centro', 'SP', '18.800-000', '00.000.000-0', '000.000.000-00', '1996-12-19', 'Masculino', 'exemplo@hotmail.com', '2014-05-10', 10, NULL, b'1'),
(2, 'Igor Paulo', 'Arthur Jose dos Reis', '(14)3351-3919', '(14)99624-1180', 'Piraju', '233', 'Jurumirim', 'SP', '18.800-000', '11.111.111-1', '111.111.111-11', '1997-06-24', 'Masculino', 'igorpaulo@hotmail.com', '2014-05-14', 1500, 'Negro', b'1'),
(3, 'José Benedito de Moura', 'Rua Major Mariano', NULL, '14998359743', 'Piraju', '1350', 'Centro', 'SP', '18.800-000', NULL, NULL, '1959-10-13', 'Masculino', 'josebmoura@ig.com.br', '2014-05-20', 10, NULL, b'1'),
(4, 'Alysson Vasconcelos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-06-16', NULL, NULL, '2014-06-04', NULL, NULL, b'1'),
(5, 'MATHEUS', 'ASD', '(11)1111-1111', '(11)11111-1111', 'ASD', '11111', 'ASD', 'AL', '11.111-111', '11.111.111-1', '111.111.111-11', '1111-11-11', 'Masculino', 'ASD', '2014-06-24', 11111, '', b'1'),
(6, 'ASD', 'ASD', '(22)2222-2222', '(22)22222-2222', '11111111111111', '1111', '111111111111', 'AL', '11.111-111', '22.222.222-2', '222.222.222-22', '2223-10-22', 'Masculino', 'ASD', '2014-06-24', 11111, '', b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_generos`
--

CREATE TABLE IF NOT EXISTS `tb_generos` (
`cod_gen` int(4) NOT NULL,
  `desc_gen` varchar(250) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Extraindo dados da tabela `tb_generos`
--

INSERT INTO `tb_generos` (`cod_gen`, `desc_gen`) VALUES
(1, 'Ação'),
(2, 'Animação'),
(3, 'Aventura'),
(4, 'Chanchada'),
(5, 'Cinema Catástrofe'),
(6, 'Comédia'),
(7, 'Comédia Romântica'),
(8, 'Comédia Dramática'),
(9, 'Comédia de Ação'),
(10, 'Cult'),
(11, 'Dança'),
(12, 'Documentários'),
(13, 'Drama'),
(14, 'Espionagem'),
(15, 'Erótico'),
(16, 'Fantasia'),
(17, 'Faroeste (ou Western)'),
(18, 'Ficção Científica'),
(19, 'Franchise/Séries'),
(20, 'Guerra'),
(21, 'Machinima'),
(22, 'Masala'),
(23, 'Musical'),
(24, 'Filme Noir'),
(25, 'Policial'),
(26, 'Pornochanchada'),
(27, 'Pornográfico'),
(28, 'Romance'),
(29, 'Suspense'),
(30, 'Terror (ou Horror)'),
(31, 'Trash');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_item_locacao`
--

CREATE TABLE IF NOT EXISTS `tb_item_locacao` (
`cod_item_loc` int(4) NOT NULL,
  `filme_cod` int(4) DEFAULT NULL,
  `loc_cod` int(4) DEFAULT NULL,
  `ex_cod` int(4) DEFAULT NULL,
  `dt_dev_item` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_item_reserva`
--

CREATE TABLE IF NOT EXISTS `tb_item_reserva` (
`cod_item_res` int(4) NOT NULL,
  `ex_cod` int(4) DEFAULT NULL,
  `res_cod` int(4) DEFAULT NULL,
  `dt_ret` date DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `tb_item_reserva`
--

INSERT INTO `tb_item_reserva` (`cod_item_res`, `ex_cod`, `res_cod`, `dt_ret`) VALUES
(1, 6, 1, '2014-09-18'),
(2, 17, 2, '2014-09-27'),
(3, 30, 3, '2014-09-29'),
(4, 30, 4, '2014-10-22'),
(5, 7, 5, '2014-11-28'),
(6, 13, 5, '2014-11-08'),
(7, 7, 6, '2014-11-07'),
(8, 14, 7, '2014-11-05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_locacoes`
--

CREATE TABLE IF NOT EXISTS `tb_locacoes` (
`cod_loc` int(4) NOT NULL,
  `func_cod` int(4) DEFAULT NULL,
  `cli_cod` int(4) DEFAULT NULL,
  `dep_cod` int(4) DEFAULT NULL,
  `dt_loc` date DEFAULT NULL,
  `vl_tot_loc` double DEFAULT NULL,
  `status_loc` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_midias`
--

CREATE TABLE IF NOT EXISTS `tb_midias` (
`cod_mid` int(4) NOT NULL,
  `desc_mid` varchar(250) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `tb_midias`
--

INSERT INTO `tb_midias` (`cod_mid`, `desc_mid`) VALUES
(1, 'CD'),
(2, 'DVD'),
(3, 'Blu-ray'),
(4, 'HD-DVD'),
(5, 'HVD'),
(6, 'Pen Drive'),
(7, 'HD'),
(8, 'Cartão de Memória'),
(9, 'Disquete');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_permissoes`
--

CREATE TABLE IF NOT EXISTS `tb_permissoes` (
`cod_perm` int(4) NOT NULL,
  `func_cod` int(4) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `tb_permissoes`
--

INSERT INTO `tb_permissoes` (`cod_perm`, `func_cod`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_precos`
--

CREATE TABLE IF NOT EXISTS `tb_precos` (
`cod_preco` int(4) NOT NULL,
  `preco` double DEFAULT NULL,
  `desc_preco` varchar(250) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `tb_precos`
--

INSERT INTO `tb_precos` (`cod_preco`, `preco`, `desc_preco`) VALUES
(1, 4, 'Lançamento'),
(2, 2.5, 'Catálogo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_reservas`
--

CREATE TABLE IF NOT EXISTS `tb_reservas` (
`cod_res` int(4) NOT NULL,
  `func_cod` int(4) DEFAULT NULL,
  `cli_cod` int(4) DEFAULT NULL,
  `dep_cod` int(4) DEFAULT NULL,
  `dt_res` date DEFAULT NULL,
  `status_res` bit(1) DEFAULT b'1'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `tb_reservas`
--

INSERT INTO `tb_reservas` (`cod_res`, `func_cod`, `cli_cod`, `dep_cod`, `dt_res`, `status_res`) VALUES
(1, 1, 9, 9, '2014-09-17', b'1'),
(2, 1, 4, 0, '2014-09-26', b'0'),
(3, 1, 1, 9, '2014-09-27', b'1'),
(4, 2, 1, 0, '2014-11-02', b'0'),
(5, 1, 18, 0, '2014-11-02', b'1'),
(6, 1, 18, 4, '2014-11-04', b'1'),
(7, 1, 18, 4, '2014-11-04', b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuarios`
--

CREATE TABLE IF NOT EXISTS `tb_usuarios` (
`cod_user` int(4) NOT NULL,
  `func_cod` int(4) DEFAULT NULL,
  `usuario_user` varchar(250) DEFAULT NULL,
  `senha_user` varchar(250) DEFAULT NULL,
  `status_user` bit(1) DEFAULT b'1'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`cod_user`, `func_cod`, `usuario_user`, `senha_user`, `status_user`) VALUES
(1, 1, 'adm', '123', b'1'),
(2, 2, 'func', '1234', b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_caixas`
--
ALTER TABLE `tb_caixas`
 ADD PRIMARY KEY (`cod_cx`), ADD KEY `cod_func` (`balanco_cx`), ADD KEY `func_cod` (`balanco_cx`);

--
-- Indexes for table `tb_categorias`
--
ALTER TABLE `tb_categorias`
 ADD PRIMARY KEY (`cod_cat`);

--
-- Indexes for table `tb_classificacoes`
--
ALTER TABLE `tb_classificacoes`
 ADD PRIMARY KEY (`cod_clas`);

--
-- Indexes for table `tb_clientes`
--
ALTER TABLE `tb_clientes`
 ADD PRIMARY KEY (`cod_cli`), ADD KEY `fun_cod` (`func_cod`), ADD KEY `func_cod` (`func_cod`);

--
-- Indexes for table `tb_contas_receber`
--
ALTER TABLE `tb_contas_receber`
 ADD PRIMARY KEY (`cod_conr`), ADD KEY `loc_cod` (`loc_cod`);

--
-- Indexes for table `tb_dependentes`
--
ALTER TABLE `tb_dependentes`
 ADD PRIMARY KEY (`cod_dep`), ADD KEY `cod_cli` (`cli_cod`), ADD KEY `cli_cod` (`cli_cod`);

--
-- Indexes for table `tb_despesas`
--
ALTER TABLE `tb_despesas`
 ADD PRIMARY KEY (`cod_desp`), ADD KEY `cod_func` (`func_cod`);

--
-- Indexes for table `tb_empresas`
--
ALTER TABLE `tb_empresas`
 ADD PRIMARY KEY (`cod_emp`);

--
-- Indexes for table `tb_exemplares`
--
ALTER TABLE `tb_exemplares`
 ADD PRIMARY KEY (`cod_ex`), ADD KEY `cod_filme` (`filme_cod`,`midia_cod`,`forn_cod`), ADD KEY `cod_forn` (`forn_cod`);

--
-- Indexes for table `tb_filmes`
--
ALTER TABLE `tb_filmes`
 ADD PRIMARY KEY (`cod_filme`), ADD KEY `cod_cat` (`clas_cod`,`gen_cod`), ADD KEY `cat_cod` (`clas_cod`), ADD KEY `gen_cod` (`gen_cod`);

--
-- Indexes for table `tb_fornecedores`
--
ALTER TABLE `tb_fornecedores`
 ADD PRIMARY KEY (`cod_forn`);

--
-- Indexes for table `tb_funcionarios`
--
ALTER TABLE `tb_funcionarios`
 ADD PRIMARY KEY (`cod_func`);

--
-- Indexes for table `tb_generos`
--
ALTER TABLE `tb_generos`
 ADD PRIMARY KEY (`cod_gen`);

--
-- Indexes for table `tb_item_locacao`
--
ALTER TABLE `tb_item_locacao`
 ADD PRIMARY KEY (`cod_item_loc`), ADD KEY `cod_loc` (`filme_cod`,`loc_cod`), ADD KEY `loc_cod` (`filme_cod`), ADD KEY `ex_cod` (`loc_cod`);

--
-- Indexes for table `tb_item_reserva`
--
ALTER TABLE `tb_item_reserva`
 ADD PRIMARY KEY (`cod_item_res`);

--
-- Indexes for table `tb_locacoes`
--
ALTER TABLE `tb_locacoes`
 ADD PRIMARY KEY (`cod_loc`), ADD KEY `cod_func` (`func_cod`,`cli_cod`), ADD KEY `func_cod` (`func_cod`), ADD KEY `cli_cod` (`cli_cod`);

--
-- Indexes for table `tb_midias`
--
ALTER TABLE `tb_midias`
 ADD PRIMARY KEY (`cod_mid`);

--
-- Indexes for table `tb_permissoes`
--
ALTER TABLE `tb_permissoes`
 ADD PRIMARY KEY (`cod_perm`);

--
-- Indexes for table `tb_precos`
--
ALTER TABLE `tb_precos`
 ADD PRIMARY KEY (`cod_preco`);

--
-- Indexes for table `tb_reservas`
--
ALTER TABLE `tb_reservas`
 ADD PRIMARY KEY (`cod_res`), ADD KEY `cod_cli` (`func_cod`,`cli_cod`,`dep_cod`), ADD KEY `cli_cod` (`func_cod`), ADD KEY `filme_cod` (`cli_cod`), ADD KEY `func_cod` (`dep_cod`);

--
-- Indexes for table `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
 ADD PRIMARY KEY (`cod_user`), ADD KEY `cod_cli` (`func_cod`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_caixas`
--
ALTER TABLE `tb_caixas`
MODIFY `cod_cx` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_categorias`
--
ALTER TABLE `tb_categorias`
MODIFY `cod_cat` int(250) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_classificacoes`
--
ALTER TABLE `tb_classificacoes`
MODIFY `cod_clas` int(250) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_clientes`
--
ALTER TABLE `tb_clientes`
MODIFY `cod_cli` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tb_contas_receber`
--
ALTER TABLE `tb_contas_receber`
MODIFY `cod_conr` int(250) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_dependentes`
--
ALTER TABLE `tb_dependentes`
MODIFY `cod_dep` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_despesas`
--
ALTER TABLE `tb_despesas`
MODIFY `cod_desp` int(250) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_empresas`
--
ALTER TABLE `tb_empresas`
MODIFY `cod_emp` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_exemplares`
--
ALTER TABLE `tb_exemplares`
MODIFY `cod_ex` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `tb_filmes`
--
ALTER TABLE `tb_filmes`
MODIFY `cod_filme` int(250) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tb_fornecedores`
--
ALTER TABLE `tb_fornecedores`
MODIFY `cod_forn` int(250) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_funcionarios`
--
ALTER TABLE `tb_funcionarios`
MODIFY `cod_func` int(250) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_generos`
--
ALTER TABLE `tb_generos`
MODIFY `cod_gen` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tb_item_locacao`
--
ALTER TABLE `tb_item_locacao`
MODIFY `cod_item_loc` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_item_reserva`
--
ALTER TABLE `tb_item_reserva`
MODIFY `cod_item_res` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_locacoes`
--
ALTER TABLE `tb_locacoes`
MODIFY `cod_loc` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_midias`
--
ALTER TABLE `tb_midias`
MODIFY `cod_mid` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_permissoes`
--
ALTER TABLE `tb_permissoes`
MODIFY `cod_perm` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_precos`
--
ALTER TABLE `tb_precos`
MODIFY `cod_preco` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_reservas`
--
ALTER TABLE `tb_reservas`
MODIFY `cod_res` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
MODIFY `cod_user` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
