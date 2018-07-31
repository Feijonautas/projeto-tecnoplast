-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 31-Jul-2018 às 17:00
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pew_tecnoplast`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_banners`
--

CREATE TABLE `pew_banners` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `posicao` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_banners`
--

INSERT INTO `pew_banners` (`id`, `titulo`, `descricao`, `imagem`, `link`, `posicao`, `status`) VALUES
(1, 'Fachadas em <span>AcrÃ­lico</span>', 'Descubra a melhor forma de expor seus letreiros luminosos e logomarcas', 'fachadas-em-acrilico-banner-home-84521.png', 'http://127.0.0.1/GitHub/projeto-tecnoplast/produtos.php?departamento=servicos', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_categorias`
--

CREATE TABLE `pew_categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `data_controle` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_categorias`
--

INSERT INTO `pew_categorias` (`id`, `categoria`, `descricao`, `ref`, `data_controle`, `status`) VALUES
(2, 'Fachadas', '', 'fachadas', '2018-06-20 02:00:01', 1),
(8, 'Luminosos em AcrÃ­licos', '', 'luminosos-em-acrilicos', '2018-06-20 01:53:03', 1),
(9, 'Paineis de grande porte', '', 'paineis-de-grande-porte', '2018-06-20 01:53:21', 1),
(10, 'ImpressÃ£o Digital UV', '', 'impressao-digital-uv', '2018-06-20 01:54:13', 1),
(11, 'Letreiros', '', 'letreiros', '2018-07-19 05:11:46', 1),
(12, 'Luminosos de Lona', '', 'luminosos-de-lona', '2018-06-20 01:55:07', 1),
(13, 'ImpressÃ£o Direto no AcrÃ­lico', '', 'impressao-direto-no-acrilico', '2018-06-20 01:55:30', 1),
(14, 'IdentificaÃ§Ã£o de Frotas', '', 'identificacao-de-frotas', '2018-06-20 01:55:45', 1),
(15, 'Totem', '', 'totem', '2018-06-20 01:57:24', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_categorias_produtos`
--

CREATE TABLE `pew_categorias_produtos` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_categorias_produtos`
--

INSERT INTO `pew_categorias_produtos` (`id`, `id_produto`, `id_categoria`) VALUES
(1, 1, 1),
(2, 1, 15),
(3, 2, 9),
(4, 3, 2),
(5, 4, 8),
(6, 5, 11),
(7, 6, 10),
(8, 7, 13),
(9, 8, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_categorias_vitrine`
--

CREATE TABLE `pew_categorias_vitrine` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `data_controle` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_categoria_destaque`
--

CREATE TABLE `pew_categoria_destaque` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `data_controle` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_contatos`
--

CREATE TABLE `pew_contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `assunto` varchar(255) NOT NULL,
  `mensagem` longtext NOT NULL,
  `data` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_departamentos`
--

CREATE TABLE `pew_departamentos` (
  `id` int(11) NOT NULL,
  `departamento` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `posicao` int(11) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `data_controle` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pew_departamentos`
--

INSERT INTO `pew_departamentos` (`id`, `departamento`, `descricao`, `posicao`, `ref`, `imagem`, `data_controle`, `status`) VALUES
(3, 'SERVIÃ‡OS', 'Conserto, higienizaÃ§Ã£o, limpeza e lavagem de Venezianas Ã© sÃ³ na Modernize em Curitiba', 1, 'servicos', 'venezianas-departamento.png', '2018-07-18', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_departamentos_produtos`
--

CREATE TABLE `pew_departamentos_produtos` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pew_departamentos_produtos`
--

INSERT INTO `pew_departamentos_produtos` (`id`, `id_produto`, `id_departamento`) VALUES
(16, 4, 3),
(15, 3, 3),
(14, 2, 3),
(13, 1, 3),
(18, 5, 3),
(19, 6, 3),
(20, 7, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_dicas`
--

CREATE TABLE `pew_dicas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `descricao_curta` varchar(255) DEFAULT NULL,
  `descricao_longa` text NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `data_controle` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_especificacoes_produtos`
--

CREATE TABLE `pew_especificacoes_produtos` (
  `id` int(11) NOT NULL,
  `id_especificacao` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_especificacoes_tecnicas`
--

CREATE TABLE `pew_especificacoes_tecnicas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `data_controle` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_imagens_produtos`
--

CREATE TABLE `pew_imagens_produtos` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `posicao` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_imagens_produtos`
--

INSERT INTO `pew_imagens_produtos` (`id`, `id_produto`, `imagem`, `posicao`, `status`) VALUES
(1, 1, 'totem-em-todos-os-tamanhos-e-materiais-55a8.jpeg', 1, 1),
(2, 2, 'paineis-em-grande-porte-0cb0.jpeg', 1, 1),
(3, 3, 'fachadas-609a.jpeg', 1, 1),
(4, 4, 'luminosos-em-acrilico-bc1d.jpeg', 1, 1),
(5, 5, 'letreiros-em-led-9fee.jpeg', 1, 1),
(6, 6, 'impressao-digital-uv-10a5.jpeg', 1, 1),
(7, 7, 'impressao-direto-no-acrilico-e3b6.jpeg', 1, 1),
(8, 8, 'letreiros-metalicos-chapa-galvanizada---latao---aco-2ef5.jpeg', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_links_menu`
--

CREATE TABLE `pew_links_menu` (
  `id` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_links_menu`
--

INSERT INTO `pew_links_menu` (`id`, `id_departamento`, `id_categoria`) VALUES
(1, 3, 2),
(2, 3, 14),
(3, 3, 10),
(4, 3, 13),
(5, 3, 11),
(6, 3, 12),
(7, 3, 8),
(8, 3, 9),
(9, 3, 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_marcas`
--

CREATE TABLE `pew_marcas` (
  `id` int(11) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `data_controle` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_newsletter`
--

CREATE TABLE `pew_newsletter` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_produtos`
--

CREATE TABLE `pew_produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `descricao_curta` varchar(255) NOT NULL,
  `descricao_longa` text NOT NULL,
  `url_video` varchar(255) NOT NULL,
  `data` datetime NOT NULL,
  `visualizacoes` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_produtos`
--

INSERT INTO `pew_produtos` (`id`, `nome`, `marca`, `descricao_curta`, `descricao_longa`, `url_video`, `data`, `visualizacoes`, `status`) VALUES
(1, 'Totem em todos os tamanhos e materiais', '', 'Totem em todos os tamanhos e materiais', '<p>Totem em todos os tamanhos e materiais&nbsp;Totem em todos os tamanhos e materiais&nbsp;Totem em todos os tamanhos e materiais</p>', '', '2018-07-19 05:05:25', 0, 1),
(2, 'Paineis em grande porte', '', 'Paineis em grande porte', '<p>Paineis em grande porte&nbsp;Paineis em grande porte&nbsp;Paineis em grande porte</p>', '', '2018-07-19 05:09:19', 0, 1),
(3, 'Fachadas', '', 'Fachadas Fachadas Fachadas', '<p>&nbsp;Fachadas&nbsp;Fachadas&nbsp;Fachadas&nbsp;Fachadas&nbsp;Fachadas&nbsp;Fachadas&nbsp;Fachadas&nbsp;Fachadas</p>', '', '2018-07-19 05:09:53', 0, 1),
(4, 'Luminosos em AcrÃ­lico', '', ' Luminosos em AcrÃ­lico Luminosos em AcrÃ­lico Luminosos em AcrÃ­lico Luminosos em AcrÃ­lico', '<p>&nbsp;Luminosos em Acr&iacute;lico&nbsp;Luminosos em Acr&iacute;lico&nbsp;Luminosos em Acr&iacute;lico&nbsp;Luminosos em Acr&iacute;lico&nbsp;Luminosos em Acr&iacute;lico</p>', '', '2018-07-19 05:10:38', 0, 1),
(5, 'Letreiros em LED', '', 'Letreiros em LED Letreiros em LED Letreiros em LED', '<p>&nbsp;Letreiros em LED&nbsp;Letreiros em LED&nbsp;Letreiros em LED&nbsp;Letreiros em LED</p>', '', '2018-07-19 05:12:15', 0, 1),
(6, 'ImpressÃ£o Digital UV', '', ' ImpressÃ£o Digital UV ImpressÃ£o Digital UV  ImpressÃ£o Digital UV  ImpressÃ£o Digital UV ', '<p>&nbsp;Impress&atilde;o Digital UV Impress&atilde;o Digital UV &nbsp;Impress&atilde;o Digital UV &nbsp;Impress&atilde;o Digital UV&nbsp;</p>', '', '2018-07-19 05:13:52', 0, 1),
(7, 'ImpressÃ£o Direto no AcrÃ­lico', '', 'ImpressÃ£o Direto no AcrÃ­lico ImpressÃ£o Direto no AcrÃ­lico ImpressÃ£o Direto no AcrÃ­lico', '<p>Impress&atilde;o Direto no Acr&iacute;lico Impress&atilde;o Direto no Acr&iacute;lico Impress&atilde;o Direto no Acr&iacute;lico&nbsp;Impress&atilde;o Direto no Acr&iacute;lico Impress&atilde;o Direto no Acr&iacute;lico Impress&atilde;o Direto no Acr&iacute;lico</p>', '', '2018-07-19 05:24:30', 0, 1),
(8, 'LETREIROS METÃLICOS CHAPA GALVANIZADA | LATÃƒO | AÃ‡O', '', 'LETREIROS METÃLICOS CHAPA GALVANIZADA | LATÃƒO | AÃ‡O LETREIROS METÃLICOS CHAPA GALVANIZADA | LATÃƒO | AÃ‡O', '<p>LETREIROS MET&Aacute;LICOS CHAPA GALVANIZADA | LAT&Atilde;O | A&Ccedil;O&nbsp;LETREIROS MET&Aacute;LICOS CHAPA GALVANIZADA | LAT&Atilde;O | A&Ccedil;O&nbsp;LETREIROS MET&Aacute;LICOS CHAPA GALVANIZADA | LAT&Atilde;O | A&Ccedil;O</p>', '', '2018-07-19 05:25:38', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_produtos_relacionados`
--

CREATE TABLE `pew_produtos_relacionados` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_relacionado` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_subcategorias`
--

CREATE TABLE `pew_subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` varchar(255) NOT NULL,
  `id_categoria` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `data_controle` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_subcategorias`
--

INSERT INTO `pew_subcategorias` (`id`, `subcategoria`, `id_categoria`, `descricao`, `ref`, `data_controle`, `status`) VALUES
(1, 'Letreiros em LED', '11', '', 'letreiros-em-led', '2018-07-19 05:11:52', 1),
(2, 'Letreiros MetÃ¡licos', '11', '', 'letreiros-metalicos', '2018-07-19 05:12:00', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_subcategorias_produtos`
--

CREATE TABLE `pew_subcategorias_produtos` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_subcategorias_produtos`
--

INSERT INTO `pew_subcategorias_produtos` (`id`, `id_produto`, `id_categoria`, `id_subcategoria`) VALUES
(1, 5, 11, 1),
(2, 8, 11, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pew_usuarios_administrativos`
--

CREATE TABLE `pew_usuarios_administrativos` (
  `id` int(11) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pew_usuarios_administrativos`
--

INSERT INTO `pew_usuarios_administrativos` (`id`, `empresa`, `usuario`, `senha`, `email`, `nivel`) VALUES
(1, 'Tecnoplast', 'tecnoplast', '880efad437ffc987a484dfd13cc0f7c0', 'contato@tecnoplast.com.br', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pew_banners`
--
ALTER TABLE `pew_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_categorias`
--
ALTER TABLE `pew_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_categorias_produtos`
--
ALTER TABLE `pew_categorias_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_categorias_vitrine`
--
ALTER TABLE `pew_categorias_vitrine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_categoria_destaque`
--
ALTER TABLE `pew_categoria_destaque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_contatos`
--
ALTER TABLE `pew_contatos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_departamentos`
--
ALTER TABLE `pew_departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_departamentos_produtos`
--
ALTER TABLE `pew_departamentos_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_dicas`
--
ALTER TABLE `pew_dicas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_especificacoes_produtos`
--
ALTER TABLE `pew_especificacoes_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_especificacoes_tecnicas`
--
ALTER TABLE `pew_especificacoes_tecnicas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_imagens_produtos`
--
ALTER TABLE `pew_imagens_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_links_menu`
--
ALTER TABLE `pew_links_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_marcas`
--
ALTER TABLE `pew_marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_newsletter`
--
ALTER TABLE `pew_newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_produtos`
--
ALTER TABLE `pew_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_produtos_relacionados`
--
ALTER TABLE `pew_produtos_relacionados`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_subcategorias`
--
ALTER TABLE `pew_subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_subcategorias_produtos`
--
ALTER TABLE `pew_subcategorias_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pew_usuarios_administrativos`
--
ALTER TABLE `pew_usuarios_administrativos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pew_banners`
--
ALTER TABLE `pew_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pew_categorias`
--
ALTER TABLE `pew_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pew_categorias_produtos`
--
ALTER TABLE `pew_categorias_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pew_categorias_vitrine`
--
ALTER TABLE `pew_categorias_vitrine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pew_categoria_destaque`
--
ALTER TABLE `pew_categoria_destaque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pew_contatos`
--
ALTER TABLE `pew_contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pew_departamentos`
--
ALTER TABLE `pew_departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pew_departamentos_produtos`
--
ALTER TABLE `pew_departamentos_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pew_dicas`
--
ALTER TABLE `pew_dicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pew_especificacoes_produtos`
--
ALTER TABLE `pew_especificacoes_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pew_especificacoes_tecnicas`
--
ALTER TABLE `pew_especificacoes_tecnicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pew_imagens_produtos`
--
ALTER TABLE `pew_imagens_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pew_links_menu`
--
ALTER TABLE `pew_links_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pew_marcas`
--
ALTER TABLE `pew_marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pew_newsletter`
--
ALTER TABLE `pew_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pew_produtos`
--
ALTER TABLE `pew_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pew_produtos_relacionados`
--
ALTER TABLE `pew_produtos_relacionados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pew_subcategorias`
--
ALTER TABLE `pew_subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pew_subcategorias_produtos`
--
ALTER TABLE `pew_subcategorias_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pew_usuarios_administrativos`
--
ALTER TABLE `pew_usuarios_administrativos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
