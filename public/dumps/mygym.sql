-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 03/08/2019 às 18:52
-- Versão do servidor: 10.1.38-MariaDB-0+deb9u1
-- Versão do PHP: 7.3.7-2+0~20190725.42+debian9~1.gbp848ca5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mygym`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `academias`
--

CREATE TABLE `academias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cnpj` bigint(20) NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `academias`
--

INSERT INTO `academias` (`id`, `cnpj`, `nome`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 11111111111, 'Academia Total Fit', 2, NULL, NULL),
(2, 22222222222, 'Academia Rapper', 8, NULL, NULL),
(3, 33333333333, 'Academia Body Truco', 5, NULL, NULL),
(4, 44444444444, 'Academia FitDance', 2, NULL, NULL),
(5, 55555555555, 'Academia Forma Fitness', 8, NULL, NULL),
(6, 66666666666, 'Academia Fit Body', 2, NULL, NULL),
(7, 77777777777, 'Academia A Mais Fit', 8, NULL, NULL),
(8, 88888888888, 'Academia Corpo', 2, NULL, NULL),
(9, 99999999999, 'Academia Body Max', 8, NULL, NULL),
(10, 11111000000, 'Academia Big Mass', 2, NULL, NULL),
(11, 22222000000, 'Academia Hiper Mass', 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `anamnese_bases`
--

CREATE TABLE `anamnese_bases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descricao` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `anamnese_bases`
--

INSERT INTO `anamnese_bases` (`id`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Pratica ou ja praticou alguma atividade fisica?', '2019-07-30 19:41:29', '2019-07-30 19:43:42'),
(2, 'Qual sua meta com a pratica de atividade fisica?', '2019-07-30 19:44:57', '2019-07-30 19:44:57'),
(3, 'Tem ou teve hábito de fumar?', '2019-07-30 19:41:29', '2019-07-30 19:43:42'),
(4, 'Possui possíveis restrições à atividade física?', '2019-07-30 19:41:29', '2019-07-30 19:43:42'),
(5, 'Utiliza algum medicamento atualmente', '2019-07-30 19:41:29', '2019-07-30 19:43:42');

-- --------------------------------------------------------

--
-- Estrutura para tabela `anamnese_complementars`
--

CREATE TABLE `anamnese_complementars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descricao` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `anamnese_complementars`
--

INSERT INTO `anamnese_complementars` (`id`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Sente dores no corpo?', '2019-07-30 19:47:33', '2019-07-30 19:47:33'),
(2, 'Sofreu algum acidete osteo-muscular recentimente?', '2019-07-30 19:47:33', '2019-07-30 19:47:33'),
(3, 'Está em dieta para ganhar ou perder peso?', '2019-07-30 19:47:33', '2019-07-30 19:47:33'),
(4, 'Possui algum tipo de alergia?', '2019-07-30 19:47:33', '2019-07-30 19:47:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao_fisicas`
--

CREATE TABLE `avaliacao_fisicas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cota_id` bigint(20) UNSIGNED NOT NULL,
  `idade` int(11) NOT NULL,
  `observacoes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `anamnese_b_1` longtext COLLATE utf8mb4_unicode_ci,
  `anamnese_b_2` longtext COLLATE utf8mb4_unicode_ci,
  `anamnese_b_3` longtext COLLATE utf8mb4_unicode_ci,
  `anamnese_b_4` longtext COLLATE utf8mb4_unicode_ci,
  `anamnese_b_5` longtext COLLATE utf8mb4_unicode_ci,
  `resposta_anamnese_b_1` longtext COLLATE utf8mb4_unicode_ci,
  `resposta_anamnese_b_2` longtext COLLATE utf8mb4_unicode_ci,
  `resposta_anamnese_b_3` longtext COLLATE utf8mb4_unicode_ci,
  `resposta_anamnese_b_4` longtext COLLATE utf8mb4_unicode_ci,
  `resposta_anamnese_b_5` longtext COLLATE utf8mb4_unicode_ci,
  `anamnese_c_1` longtext COLLATE utf8mb4_unicode_ci,
  `anamnese_c_2` longtext COLLATE utf8mb4_unicode_ci,
  `anamnese_c_3` longtext COLLATE utf8mb4_unicode_ci,
  `anamnese_c_4` longtext COLLATE utf8mb4_unicode_ci,
  `Resposta_anamnese_c_1` longtext COLLATE utf8mb4_unicode_ci,
  `Resposta_anamnese_c_2` longtext COLLATE utf8mb4_unicode_ci,
  `Resposta_anamnese_c_3` longtext COLLATE utf8mb4_unicode_ci,
  `Resposta_anamnese_c_4` longtext COLLATE utf8mb4_unicode_ci,
  `massa_corporal` double(8,2) DEFAULT NULL,
  `estatura` double(8,2) DEFAULT NULL,
  `pescoco` double(8,2) DEFAULT NULL,
  `ombro` double(8,2) DEFAULT NULL,
  `torax` double(8,2) DEFAULT NULL,
  `cintura` double(8,2) DEFAULT NULL,
  `abdomen` double(8,2) DEFAULT NULL,
  `quadril` double(8,2) DEFAULT NULL,
  `braco_direito` double(8,2) DEFAULT NULL,
  `antebraco_direito` double(8,2) DEFAULT NULL,
  `coxa_direito` double(8,2) DEFAULT NULL,
  `panturrilha_direito` double(8,2) DEFAULT NULL,
  `braco_esquerda` double(8,2) DEFAULT NULL,
  `antebraco_esquerda` double(8,2) DEFAULT NULL,
  `coxa_esquerda` double(8,2) DEFAULT NULL,
  `panturrilha_esquerda` double(8,2) DEFAULT NULL,
  `dobra_tricipital` double(8,2) DEFAULT NULL,
  `dobra_bicipital` double(8,2) DEFAULT NULL,
  `dobra_peitoral` double(8,2) DEFAULT NULL,
  `dobra_subescapular` double(8,2) DEFAULT NULL,
  `dobra_axilar_media` double(8,2) DEFAULT NULL,
  `dobra_supraliaca` double(8,2) DEFAULT NULL,
  `dobra_abdominal` double(8,2) DEFAULT NULL,
  `dobra_coxa` double(8,2) DEFAULT NULL,
  `dobra_panturrilha` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `avaliacao_fisicas`
--

INSERT INTO `avaliacao_fisicas` (`id`, `cota_id`, `idade`, `observacoes`, `anamnese_b_1`, `anamnese_b_2`, `anamnese_b_3`, `anamnese_b_4`, `anamnese_b_5`, `resposta_anamnese_b_1`, `resposta_anamnese_b_2`, `resposta_anamnese_b_3`, `resposta_anamnese_b_4`, `resposta_anamnese_b_5`, `anamnese_c_1`, `anamnese_c_2`, `anamnese_c_3`, `anamnese_c_4`, `Resposta_anamnese_c_1`, `Resposta_anamnese_c_2`, `Resposta_anamnese_c_3`, `Resposta_anamnese_c_4`, `massa_corporal`, `estatura`, `pescoco`, `ombro`, `torax`, `cintura`, `abdomen`, `quadril`, `braco_direito`, `antebraco_direito`, `coxa_direito`, `panturrilha_direito`, `braco_esquerda`, `antebraco_esquerda`, `coxa_esquerda`, `panturrilha_esquerda`, `dobra_tricipital`, `dobra_bicipital`, `dobra_peitoral`, `dobra_subescapular`, `dobra_axilar_media`, `dobra_supraliaca`, `dobra_abdominal`, `dobra_coxa`, `dobra_panturrilha`, `created_at`, `updated_at`) VALUES
(1, 1, 33, 'Campo reservado para qualquer tipo de observação que se faça necessária.', 'Pratica ou ja praticou alguma atividade fisica?', 'Qual sua meta com a pratica de atividade fisica?', 'Tem ou teve hábito de fumar?', 'Possui possíveis restrições à atividade física?', 'Utiliza algum medicamento atualmente', 'Sim', 'Ganho de massa muscular', 'Não', 'Não', 'Não', 'Sente dores no corpo?', 'Sofreu algum acidete osteo-muscular recentimente?', 'Está em dieta para ganhar ou perder peso?', 'Possui algum tipo de alergia?', 'Sim, com pouca frequencia.', 'Sim, acidente de bicicleta.', 'Não', 'Não', 123.00, 1.81, 3.00, 1.21, 23.34, 43.44, 42.20, 234.30, 23.30, 12.34, 54.30, 234.20, 12.30, 234.20, 23.40, 132.20, 234.60, 23.30, 234.30, 24.20, 34.20, 34.30, 234.30, 2.30, 95.80, '2019-08-03 03:00:00', '2019-08-03 03:00:00'),
(2, 2, 25, 'Campo reservado para qualquer observção', 'Pratica ou ja praticou alguma atividade fisica?', 'Qual sua meta com a pratica de atividade fisica?', 'Tem ou teve hábito de fumar?', 'Possui possíveis restrições à atividade física?', 'Utiliza algum medicamento atualmente', 'Sim, vôlei.', 'Perder Peso', 'Nunca fumou', 'Não', 'Não', 'Sente dores no corpo?', 'Sofreu algum acidete osteo-muscular recentimente?', 'Está em dieta para ganhar ou perder peso?', 'Possui algum tipo de alergia?', 'De vez em quando no trabalho', 'Não', 'Sim', 'Não', 34.00, 1.76, 76.40, 4.00, 65.00, 34.70, 5.00, 35.00, 78.00, 78.00, 2.00, 64.60, 45.04, 4.53, 3.34, 33.00, 76.00, 2.70, 2.00, 34.00, 23.80, 86.00, 45.70, 4.76, 3.00, NULL, NULL),
(3, 3, 30, 'Campo reservado para qualquer observção', 'Pratica ou ja praticou alguma atividade fisica?', 'Qual sua meta com a pratica de atividade fisica?', 'Tem ou teve hábito de fumar?', 'Possui possíveis restrições à atividade física?', 'Utiliza algum medicamento atualmente', 'Sim', 'Ganhar Massa Muscular', 'Sim', 'Não', 'Não', 'Sente dores no corpo?', 'Sofreu algum acidete osteo-muscular recentimente?', 'Está em dieta para ganhar ou perder peso?', 'Possui algum tipo de alergia?', 'De vez em quando no trabalho', 'Não', 'Sim', 'Não', 34.00, 1.76, 76.40, 4.00, 65.00, 34.70, 5.00, 35.00, 78.00, 78.00, 2.00, 64.60, 45.04, 4.53, 3.34, 33.00, 76.00, 2.70, 2.00, 34.00, 23.80, 86.00, 45.70, 4.76, 3.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidades`
--

CREATE TABLE `cidades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cep` bigint(20) NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uf_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `cidades`
--

INSERT INTO `cidades` (`id`, `cep`, `nome`, `uf_id`) VALUES
(1, 39600000, 'Araçuai', 13),
(2, 39660000, 'Turmalina', 13),
(3, 39100000, 'Diamantina', 13);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cotas`
--

CREATE TABLE `cotas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `academia_id` bigint(20) UNSIGNED NOT NULL,
  `validade` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `cotas`
--

INSERT INTO `cotas` (`id`, `user_id`, `academia_id`, `validade`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 2, '2019-07-30', 1, '2019-07-30 19:52:34', '2019-07-30 19:52:34'),
(2, 3, 1, '2019-09-30', 1, NULL, NULL),
(3, 3, 3, '2019-07-31', 0, NULL, NULL),
(4, 6, 3, '2019-07-31', 1, NULL, NULL),
(6, 7, 2, '2019-07-31', 1, NULL, NULL),
(7, 6, 1, '2019-07-31', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `enderecos`
--

CREATE TABLE `enderecos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academia_id` bigint(20) UNSIGNED NOT NULL,
  `rua` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` bigint(20) NOT NULL,
  `bairro` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `enderecos`
--

INSERT INTO `enderecos` (`id`, `academia_id`, `rua`, `numero`, `bairro`, `cidade_id`) VALUES
(1, 4, 'Dos Marombas', 100, 'Santa Rita', 1),
(2, 7, 'Maria Rita', 1010, 'Canoeiro', 1),
(3, 8, 'Das Tulipas', 8, 'Floresta', 3),
(4, 1, 'Barao de Maua', 200, 'Santa Rita', 2),
(5, 2, 'Costa Rita', 12, 'Jardim Florestal', 2),
(6, 3, 'Das Acácias', 77, 'Tropical', 3),
(7, 9, 'São Paulo', 160, 'Santa Rita', 3),
(8, 11, 'Beco da Sola', 99, 'Planalto', 3),
(9, 10, 'Santa Rita', 69, 'Presidente JK', 2),
(10, 6, 'Rua Porto Alegre', 980, 'Centro', 1),
(11, 5, 'Dos Amazonas', 222, 'Vila Magnolia', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `exercicios`
--

CREATE TABLE `exercicios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descricao` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupo_exercicio_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `exercicios`
--

INSERT INTO `exercicios` (`id`, `descricao`, `imagem`, `grupo_exercicio_id`) VALUES
(1, 'Rosca Inversa', 'link_1.img', 1),
(9, 'Rosca Concentrada', 'link_2.img', 1),
(10, 'Rosca Martelo', 'link_3.img', 1),
(13, 'Rosca Direta', 'link_4.img', 1),
(14, 'Rosca Alternada', 'link_5.img', 1),
(15, 'Remada Unilateral', 'link_6.img', 2),
(16, 'Puxada na Frente com Triângulo e Polia Alta', 'link_7.img', 2),
(17, 'Puxada na Frente com Polia Alta', 'link_8.img', 2),
(18, 'Puxada Alta com Braços Estendidos', 'link_9.img', 2),
(19, 'Crucifixo', 'link_10.img', 3),
(20, 'Crossover', 'link_11.img', 3),
(21, 'Supino Inclinado', 'link_12.img', 3),
(22, 'Supino Reto', 'link_13.img', 3),
(23, 'Glúteos Quatro Apoios e Perna Estendida', 'link_14.img', 4),
(24, 'Abdução de Quadril', 'link_15.img', 4),
(25, 'Mesa Flexora', 'link_16.img', 4),
(26, 'Cadeira Extensora', 'link_17.img', 4),
(31, 'Leg Press Inclinado', 'link_18.img', 4),
(32, 'Gêmeos Sentado', 'link_19.img', 4),
(33, 'Trícips Francês', 'link_20.img', 5),
(34, 'Kick Back', 'link_21.img', 5),
(35, 'Corda', 'link_22.img', 5),
(36, 'Pulley', 'link_23.img', 5),
(37, 'Remada Alta', 'link_24.img', 6),
(38, 'Desenvolvimento com Halteres', 'link_25.img', 6),
(41, 'Elevação Frontal', 'link_26.img', 6),
(42, 'Elevação Lateral', 'link_27.img', 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupo_exercicios`
--

CREATE TABLE `grupo_exercicios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descricao` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `grupo_exercicios`
--

INSERT INTO `grupo_exercicios` (`id`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Bícips', NULL, NULL),
(2, 'Costas', NULL, NULL),
(3, 'Peito', NULL, NULL),
(4, 'Perna', NULL, NULL),
(5, 'Tríceps', NULL, NULL),
(6, 'Ombro', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lista_exercicios`
--

CREATE TABLE `lista_exercicios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `treino_id` bigint(20) UNSIGNED NOT NULL,
  `exercicio_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `lista_exercicios`
--

INSERT INTO `lista_exercicios` (`id`, `treino_id`, `exercicio_id`) VALUES
(1, 1, 1),
(2, 1, 9),
(3, 1, 10),
(4, 1, 13),
(5, 1, 14),
(6, 1, 15),
(7, 1, 16),
(8, 1, 17),
(9, 1, 18),
(10, 1, 19),
(11, 1, 20),
(12, 1, 21),
(13, 1, 22),
(14, 1, 23),
(15, 1, 24),
(28, 2, 1),
(30, 2, 9),
(16, 2, 25),
(17, 2, 26),
(29, 2, 31),
(19, 2, 32),
(20, 2, 33),
(21, 2, 34),
(22, 2, 35),
(23, 2, 36),
(24, 2, 37),
(25, 2, 38),
(26, 2, 41),
(27, 2, 42),
(31, 3, 10),
(32, 3, 13),
(34, 3, 15),
(35, 3, 16),
(36, 3, 18),
(37, 3, 21),
(38, 3, 22),
(39, 3, 23),
(40, 3, 24),
(33, 3, 32),
(41, 4, 1),
(42, 4, 9),
(43, 4, 10),
(44, 4, 13),
(45, 4, 14),
(46, 4, 15),
(47, 4, 16),
(48, 4, 17),
(49, 4, 18),
(50, 4, 19),
(51, 4, 20),
(52, 4, 21),
(53, 4, 22),
(54, 4, 23),
(55, 4, 24),
(68, 5, 1),
(70, 5, 9),
(56, 5, 25),
(57, 5, 26),
(69, 5, 31),
(59, 5, 32),
(60, 5, 33),
(61, 5, 34),
(62, 5, 35),
(63, 5, 36),
(64, 5, 37),
(65, 5, 38),
(66, 5, 41),
(67, 5, 42),
(71, 6, 10),
(73, 6, 13),
(74, 6, 15),
(72, 6, 32),
(84, 7, 1),
(75, 7, 16),
(76, 7, 18),
(77, 7, 21),
(78, 7, 22),
(79, 7, 23),
(80, 7, 24),
(81, 7, 41),
(83, 7, 42),
(86, 8, 9),
(87, 8, 10),
(88, 8, 13),
(90, 8, 15),
(91, 8, 16),
(92, 8, 18),
(93, 8, 21),
(94, 8, 22),
(95, 8, 23),
(96, 8, 24),
(85, 8, 31);

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_11_035936_create_tipos_usuarios_table', 1),
(21, '2013_10_11_035936_create_tipo_usuarios_table', 2),
(22, '2014_10_12_000000_create_users_table', 2),
(23, '2014_10_12_100000_create_password_resets_table', 2),
(24, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(25, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(26, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(27, '2016_06_01_000004_create_oauth_clients_table', 2),
(28, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(29, '2019_07_28_040043_create_ufs_table', 2),
(30, '2019_07_28_040055_create_cidades_table', 2),
(31, '2019_07_29_170836_create_academias_table', 2),
(32, '2019_07_29_170837_create_enderecos_table', 2),
(33, '2019_07_29_170859_create_cotas_table', 2),
(34, '2019_07_29_170910_create_avaliacao_fisicas_table', 2),
(35, '2019_07_29_170919_create_treinos_table', 2),
(36, '2019_07_29_170929_create_treino_atletas_table', 2),
(37, '2019_07_29_170937_create_exercicios_table', 2),
(38, '2019_07_29_170943_create_lista_exercicios_table', 2),
(39, '2019_07_29_170955_create_anamnese_bases_table', 2),
(40, '2019_07_29_171000_create_anamnese_complementars_table', 2),
(41, '2019_08_03_005915_create_grupos_table', 3),
(42, '2019_08_03_010846_add_grupo_id_table_users', 4),
(43, '2019_08_03_005915_create_grupo_exercicios_table', 5),
(44, '2019_08_03_013714_create_grupo_exercicios_table', 6),
(45, '2019_08_03_013914_add_grupo_exercicio_id_table_exercicios', 7),
(46, '2019_08_03_014511_create_grupo_exercicios_table', 8),
(47, '2019_08_03_015545_update_exercicios_table', 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('72fa1f41d041b9ee6c251a5f1a4ca7177f4d213d661a90eeaa19d7e5440aab6ebe4c521fba71fff2', 1, 1, 'paulo@mail.com', '[]', 0, '2019-07-29 20:32:49', '2019-07-29 20:32:49', '2020-07-29 17:32:49');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'N7qnMnm7O6KQH4VmtCoGV8Ls86qTsuaIPaIzm1F7', 'http://localhost', 1, 0, 0, '2019-07-29 20:28:17', '2019-07-29 20:28:17'),
(2, NULL, 'Laravel Password Grant Client', 'P81NZkyP73zjwVuPm9bsUg1iPhCaduo6opbs3t8j', 'http://localhost', 0, 1, 0, '2019-07-29 20:28:17', '2019-07-29 20:28:17');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-07-29 20:28:17', '2019-07-29 20:28:17');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_usuarios`
--

CREATE TABLE `tipo_usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descricao` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `tipo_usuarios`
--

INSERT INTO `tipo_usuarios` (`id`, `descricao`) VALUES
(1, 'Administrador'),
(3, 'Atleta'),
(2, 'Owner');

-- --------------------------------------------------------

--
-- Estrutura para tabela `treinos`
--

CREATE TABLE `treinos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descricao` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `treinos`
--

INSERT INTO `treinos` (`id`, `descricao`) VALUES
(1, 'Treino_1'),
(2, 'Treino_2'),
(3, 'Treino_3'),
(4, 'Treino_4'),
(5, 'Treino_5'),
(6, 'Treino_6'),
(7, 'Treino_7'),
(8, 'Treino_8');

-- --------------------------------------------------------

--
-- Estrutura para tabela `treino_atletas`
--

CREATE TABLE `treino_atletas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `treino_id` bigint(20) UNSIGNED NOT NULL,
  `cota_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `treino_atletas`
--

INSERT INTO `treino_atletas` (`id`, `treino_id`, `cota_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 2, 4, NULL, NULL),
(5, 1, 6, NULL, NULL),
(6, 3, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ufs`
--

CREATE TABLE `ufs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sigla` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `ufs`
--

INSERT INTO `ufs` (`id`, `sigla`, `descricao`) VALUES
(1, 'AC', 'Acre'),
(2, 'AL', 'Alagoas'),
(3, 'AP', 'Amapá'),
(4, 'AM', 'Amazonas'),
(5, 'BA', 'Bahia'),
(6, 'CE', 'Ceará'),
(7, 'DF', 'Distrito Federal'),
(8, 'ES', 'Espírito Santo'),
(9, 'GO', 'Goiás'),
(10, 'MA', 'Maranhão'),
(11, 'MT', 'Mato Grosso'),
(12, 'MS', 'Mato Grosso do Sul'),
(13, 'MG', 'Minas Gerais'),
(14, 'PA', 'Pará'),
(15, 'PB', 'Paraiba'),
(16, 'PR', 'Parana'),
(17, 'PE', 'Pernambuco'),
(18, 'PI', 'Piauí'),
(19, 'RJ', 'Rio de Janeiro'),
(20, 'RN', 'Rio Grando do Norte'),
(21, 'RS', 'Rio Grando do Sul'),
(22, 'RO', 'Rondônia'),
(23, 'RR', 'Roraima'),
(24, 'SC', 'Santa Catarina'),
(25, 'SP', 'São Paulo'),
(26, 'SE', 'Sergipe'),
(27, 'TO', 'Tocantins');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_usuario_id` bigint(20) UNSIGNED NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `sexo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `tipo_usuario_id`, `data_nascimento`, `sexo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Paulo Henrique', 'paulo@mail.com', NULL, '$2y$10$tDxigA91bTIRjRHjAGUpjeaYVOWV2GITVRUvKlUHHH0oGCJrvst3W', 1, NULL, NULL, NULL, '2019-07-29 20:32:49', '2019-07-29 20:32:49'),
(2, 'Pedro', 'pedro@mail.com', '2019-07-30 03:00:00', '123456', 2, '1995-06-30', 'Masculino', NULL, '2019-07-30 03:00:00', '2019-07-30 03:00:00'),
(3, 'Fernanda', 'fernanda@mail.com', '2019-07-30 03:00:00', '123456', 3, '1995-07-30', 'Feminino', NULL, '2019-07-30 03:00:00', '2019-07-30 03:00:00'),
(4, 'Edna', 'edna@mail.com', '2019-07-30 03:00:00', '123456', 3, '1975-03-03', 'Feminino', NULL, '2019-07-30 03:00:00', '2019-07-30 03:00:00'),
(5, 'Domingos', 'domingos@mail.com', '2019-07-30 03:00:00', '123456', 2, '1945-07-30', 'Masculino', NULL, '2019-07-30 03:00:00', '2019-07-30 03:00:00'),
(6, 'Jimi Hendrix', 'jimi@mail.com', '2019-07-30 03:00:00', '123456', 3, '1950-07-31', 'Masculino', NULL, '2019-07-30 03:00:00', '2019-07-30 03:00:00'),
(7, 'Nina Simone', 'nina@mail.com', '2019-07-30 03:00:00', '123456', 3, '1930-07-16', 'Feminino', NULL, NULL, NULL),
(8, 'Djonga', 'djonga@mail.com', '2019-07-30 03:00:00', '123456', 2, '1990-07-30', 'Masculino', NULL, NULL, NULL);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `academias`
--
ALTER TABLE `academias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `academias_cnpj_unique` (`cnpj`),
  ADD KEY `academias_user_id_foreign` (`user_id`);

--
-- Índices de tabela `anamnese_bases`
--
ALTER TABLE `anamnese_bases`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `anamnese_complementars`
--
ALTER TABLE `anamnese_complementars`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `avaliacao_fisicas`
--
ALTER TABLE `avaliacao_fisicas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `avaliacao_fisicas_cota_id_foreign` (`cota_id`);

--
-- Índices de tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cidades_cep_unique` (`cep`),
  ADD KEY `cidades_uf_id_foreign` (`uf_id`);

--
-- Índices de tabela `cotas`
--
ALTER TABLE `cotas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_academias` (`user_id`,`academia_id`),
  ADD KEY `cotas_user_id_foreign` (`user_id`),
  ADD KEY `cotas_academia_id_foreign` (`academia_id`);

--
-- Índices de tabela `enderecos`
--
ALTER TABLE `enderecos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enderecos_academia_id_foreign` (`academia_id`),
  ADD KEY `enderecos_cidade_id_foreign` (`cidade_id`);

--
-- Índices de tabela `exercicios`
--
ALTER TABLE `exercicios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exercicios_imagem_unique` (`imagem`),
  ADD KEY `exercicios_grupo_exercicio_id_foreign` (`grupo_exercicio_id`);

--
-- Índices de tabela `grupo_exercicios`
--
ALTER TABLE `grupo_exercicios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lista_exercicios`
--
ALTER TABLE `lista_exercicios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `treinos_exercicios` (`treino_id`,`exercicio_id`),
  ADD KEY `exercicio_treinos_treino_id_foreign` (`treino_id`),
  ADD KEY `exercicio_treinos_exercicio_id_foreign` (`exercicio_id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Índices de tabela `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Índices de tabela `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Índices de tabela `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices de tabela `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipo_usuarios_descricao_unique` (`descricao`);

--
-- Índices de tabela `treinos`
--
ALTER TABLE `treinos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `treino_atletas`
--
ALTER TABLE `treino_atletas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `treino_atletas_cota_id_foreign` (`cota_id`),
  ADD KEY `treino_atletas_treino_id_foreign` (`treino_id`);

--
-- Índices de tabela `ufs`
--
ALTER TABLE `ufs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ufs_sigla_unique` (`sigla`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_tipo_usuario_id_foreign` (`tipo_usuario_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `academias`
--
ALTER TABLE `academias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de tabela `anamnese_bases`
--
ALTER TABLE `anamnese_bases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `anamnese_complementars`
--
ALTER TABLE `anamnese_complementars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `avaliacao_fisicas`
--
ALTER TABLE `avaliacao_fisicas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `cotas`
--
ALTER TABLE `cotas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `enderecos`
--
ALTER TABLE `enderecos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de tabela `exercicios`
--
ALTER TABLE `exercicios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT de tabela `grupo_exercicios`
--
ALTER TABLE `grupo_exercicios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `lista_exercicios`
--
ALTER TABLE `lista_exercicios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT de tabela `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `treinos`
--
ALTER TABLE `treinos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `treino_atletas`
--
ALTER TABLE `treino_atletas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `ufs`
--
ALTER TABLE `ufs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `academias`
--
ALTER TABLE `academias`
  ADD CONSTRAINT `academias_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `avaliacao_fisicas`
--
ALTER TABLE `avaliacao_fisicas`
  ADD CONSTRAINT `avaliacao_fisicas_cota_id_foreign` FOREIGN KEY (`cota_id`) REFERENCES `cotas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cidades`
--
ALTER TABLE `cidades`
  ADD CONSTRAINT `cidades_uf_id_foreign` FOREIGN KEY (`uf_id`) REFERENCES `ufs` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cotas`
--
ALTER TABLE `cotas`
  ADD CONSTRAINT `cotas_academia_id_foreign` FOREIGN KEY (`academia_id`) REFERENCES `academias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cotas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `enderecos`
--
ALTER TABLE `enderecos`
  ADD CONSTRAINT `enderecos_academia_id_foreign` FOREIGN KEY (`academia_id`) REFERENCES `academias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enderecos_cidade_id_foreign` FOREIGN KEY (`cidade_id`) REFERENCES `cidades` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `exercicios`
--
ALTER TABLE `exercicios`
  ADD CONSTRAINT `exercicios_grupo_exercicio_id_foreign` FOREIGN KEY (`grupo_exercicio_id`) REFERENCES `grupo_exercicios` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `lista_exercicios`
--
ALTER TABLE `lista_exercicios`
  ADD CONSTRAINT `exercicio_treinos_exercicio_id_foreign` FOREIGN KEY (`exercicio_id`) REFERENCES `exercicios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exercicio_treinos_treino_id_foreign` FOREIGN KEY (`treino_id`) REFERENCES `treinos` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `treino_atletas`
--
ALTER TABLE `treino_atletas`
  ADD CONSTRAINT `treino_atletas_cota_id_foreign` FOREIGN KEY (`cota_id`) REFERENCES `cotas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `treino_atletas_treino_id_foreign` FOREIGN KEY (`treino_id`) REFERENCES `treinos` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_tipo_usuario_id_foreign` FOREIGN KEY (`tipo_usuario_id`) REFERENCES `tipo_usuarios` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
