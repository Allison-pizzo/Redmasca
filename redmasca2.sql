-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/07/2025 às 01:53
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
-- Banco de dados: `redmasca2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `redmasca_categorias`
--

CREATE TABLE `redmasca_categorias` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `redmasca_categorias`
--

INSERT INTO `redmasca_categorias` (`id`, `name`) VALUES
(1, 'Secretariado'),
(2, 'Informática'),
(3, 'Logística'),
(4, 'Contabilidade');

-- --------------------------------------------------------

--
-- Estrutura para tabela `redmasca_comentarios`
--

CREATE TABLE `redmasca_comentarios` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `redmasca_comentarios`
--

INSERT INTO `redmasca_comentarios` (`id`, `topic_id`, `user_id`, `comment`, `created_at`, `parent_id`) VALUES
(29, 26, 11, 'Nesse caso soma-se o adicional noturno (20% sobre o valor da hora normal) ao valor da hora extra (50% sobre o valor da hora normal)\r\n\r\nSe um trabalhador recebe R$ 2.000,00 por mês e trabalha 200 horas mensais, o cálculo seria: \r\nValor da hora normal: R$ 2.000,00 / 200 horas = R$ 10,00 por hora. \r\nValor da hora noturna: R$ 10,00 + (R$ 10,00 * 20%) = R$ 12,00 por hora noturna. \r\nValor da hora extra noturna: R$ 12,00 + (R$ 12,00 * 50%) = R$ 18,00 por hora extra noturna. \r\nValor total das horas extras noturnas: Se o trabalhador realizou 10 horas extras noturnas, o valor total a ser pago seria R$ 18,00 * 10 = R$ 180,00.\r\n\r\nEspero ter ajudado :)', '2025-06-24 01:09:46', NULL),
(30, 25, 11, 'De acordo com a Lei das S.A., as participações nos lucros serão calculadas sucessivamente,\r\nna seguinte ordem:\r\na) de debêntures;\r\nb) de empregados;\r\nc) de administradores;\r\nd) de partes beneficiárias;\r\ne) para instituições ou fundos de assistência ou previdência de empregados.\r\n\r\nEspero ter ajudado :)', '2025-06-24 01:10:17', NULL),
(31, 26, 9, 'Com um exemplo prático para facilitar a sua compreensão: um trabalhador que recebe R$ 2.500,00 e fez duas horas noturnas.\r\n\r\nPara começar, o valor da hora de trabalho seria calculado assim: \r\nR$ 2.500,00 ÷ 220 = R$ 11,36.\r\n\r\nEm seguida, o cálculo do adicional noturno seria: \r\nR$ 11,36 + 20% = R$ 11,36 + R$ 2,27 = R$ 13,63.\r\n\r\nPortanto, o valor da hora noturna é R$ 13,63. Como o trabalhador fez 2 horas extras noturnas, ele deve receber R$ 27,26 (2 × R$ 13,63).', '2025-06-24 01:12:42', NULL),
(32, 25, 9, 'Administradores, debentures, empregados, partes beneficiarias, outros', '2025-06-24 01:13:16', NULL),
(33, 26, 11, 'Não confie em Judas', '2025-06-24 01:13:38', 31),
(34, 25, 11, 'Não confie no Judas', '2025-06-24 01:13:48', 32),
(35, 27, 1, 'O profissional de secretariado é fundamental nas organizações contemporâneas, pois atua como elo entre a liderança, as equipes e o público externo. Além de executar atividades administrativas e de apoio, esse profissional participa da gestão de informações estratégicas, organização de agendas, eventos e documentos, garantindo fluidez nos processos organizacionais. Sua atuação contribui diretamente para a otimização do tempo dos gestores, a melhoria na comunicação interna e externa e o suporte eficiente para a tomada de decisões.', '2025-06-25 00:55:47', NULL),
(37, 29, 11, 'As competências digitais são essenciais para o profissional de secretariado, considerando o ambiente corporativo cada vez mais tecnológico. O domínio de ferramentas digitais para comunicação, armazenamento em nuvem, organização de arquivos e gestão de projetos permite maior agilidade e segurança no manuseio de informações. Além disso, a habilidade em utilizar plataformas de videoconferência, redes sociais corporativas e aplicativos de produtividade torna o secretariado um agente facilitador na integração de processos e no suporte à inovação organizacional.', '2025-06-25 01:01:16', NULL),
(38, 31, 14, 'Uma rede local (LAN) é uma rede que conecta computadores e dispositivos em uma área geográfica limitada, como uma casa, escritório ou campus. Ela permite a comunicação e o compartilhamento de recursos, como impressoras e arquivos, entre os dispositivos conectados.', '2025-06-25 01:10:59', NULL),
(39, 30, 14, 'Um sistema operacional é um software que gerencia o hardware do computador e fornece serviços para os programas de aplicação. Sua função principal é atuar como intermediário entre o usuário e o hardware, permitindo que os usuários executem programas e gerenciem recursos do sistema.', '2025-06-25 01:11:13', NULL),
(40, 32, 12, 'Henry Ford influenciou profundamente os sistemas logísticos ao integrar a produção com a distribuição. Com a criação da linha de montagem, ele otimizou o tempo de produção e padronizou processos, o que exigiu também melhorias na logística de suprimentos e na entrega dos produtos. Seu modelo incentivou o desenvolvimento de sistemas logísticos mais ágeis, planejados e eficientes, capazes de atender à demanda em grande escala.', '2025-06-25 17:11:13', NULL),
(41, 33, 9, 'O sistema de produção em massa criado por Ford exigiu um controle rigoroso sobre a armazenagem e o transporte de materiais. Para garantir o fluxo contínuo na linha de montagem, era necessário ter estoques bem organizados e um transporte eficiente de insumos e produtos. Isso contribuiu para o avanço das práticas logísticas, como o uso de centros de distribuição e o planejamento de rotas para entregas mais rápidas e econômicas.', '2025-06-25 17:11:59', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `redmasca_tags`
--

CREATE TABLE `redmasca_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `redmasca_topicos`
--

CREATE TABLE `redmasca_topicos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `category_id` int(11) DEFAULT NULL,
  `new_image_path` varchar(255) DEFAULT NULL,
  `approved` tinyint(1) DEFAULT 0,
  `image_path` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `redmasca_topicos`
--

INSERT INTO `redmasca_topicos` (`id`, `user_id`, `title`, `content`, `created_at`, `category_id`, `new_image_path`, `approved`, `image_path`, `active`) VALUES
(23, 1, 'ssss', 'sss', '2025-06-19 18:07:53', 2, NULL, 0, NULL, 0),
(24, 1, 'aaaaa', 'aaaaaaa', '2025-06-19 18:30:35', 2, NULL, 0, NULL, 0),
(25, 10, 'Calculo de Participação (BP)', 'Qual a ordem de Calculo das participações segundo a Lei das S.A.?', '2025-06-24 01:06:25', 4, NULL, 1, NULL, 1),
(26, 10, 'Hora Extra Noturna', 'Como fazer cálculo de hora extra noturna?\r\nAprendi a fazer durante o 1º semestre mas não lembro mais como faz', '2025-06-24 01:07:08', 4, NULL, 1, NULL, 1),
(27, 12, 'me ajudemm, prova daqui 2 diaaas', 'Qual a importância do profissional de secretariado nas organizações contemporâneas?\r\n', '2025-06-25 00:53:50', 1, NULL, 1, NULL, 1),
(29, 12, 'Avanço técnologico', 'Como as competências digitais impactam a atuação do profissional de secretariado?\r\n', '2025-06-25 00:57:24', 1, NULL, 1, NULL, 1),
(30, 13, 'Windows, Linux e macOS', 'O que é um sistema operacional e qual a sua função principal?', '2025-06-25 01:08:29', 2, NULL, 1, NULL, 1),
(31, 13, 'Redes', 'O que é uma rede local (LAN)?', '2025-06-25 01:09:15', 2, NULL, 1, NULL, 1),
(32, 15, 'Henry Ford', 'Como Henry Ford influenciou os sistemas logísticos modernos?', '2025-06-25 17:09:39', 3, NULL, 1, NULL, 1),
(33, 15, 'sistema de produção em massa de Henry Ford', 'De que forma o sistema de produção em massa de Henry Ford está ligado à logística de armazenagem e transporte?\r\n', '2025-06-25 17:10:32', 3, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `redmasca_topicos_tags`
--

CREATE TABLE `redmasca_topicos_tags` (
  `topic_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `redmasca_usuario`
--

CREATE TABLE `redmasca_usuario` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `curso_id` int(11) DEFAULT NULL,
  `role` enum('user','admin') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `redmasca_usuario`
--

INSERT INTO `redmasca_usuario` (`id`, `username`, `email`, `password`, `created_at`, `curso_id`, `role`) VALUES
(1, 'allison', 'admin@admin.com', '$2y$10$LXpx2FnHKRGs/6r79jtg0.C9PdFi9hSD.HAfsGtoYbiL1Xn/eY4Lq', '2024-12-10 22:37:37', 2, 'admin'),
(7, 'teste1', 'teste@gmail.com', '$2y$10$bSHelpOUhBeS5BuCAO/QSuwsHF9qq668w1/eobuarOtqtHfQrIiWS', '2024-12-17 17:57:41', 1, 'user'),
(8, 'teste3', 'teste@teste.com', '$2y$10$v2E1.uf.M/DoVletzb0Hi.9Z.DQavA33dWy2SsPftl5YUf.R/EWAa', '2024-12-17 18:44:06', 2, 'user'),
(9, 'judas', 'Allisonpizzolatto@gmail.com', '$2y$10$gxPpoXlWRPjNpx2o3ThJUuzAzW3dk2/qyX/r6ezRcaTdBf75WjHQy', '2025-06-19 18:08:51', 4, 'user'),
(10, 'Loko_da_Contabilidade', 'contabilidade@loko.com', '$2y$10$nI9jjyD9rib4Q.gZx5.OROPDSiFtzl4Jhia/J62rQsnujbkVXGPr2', '2025-06-24 01:01:58', 4, 'user'),
(11, 'Gaby (^-^)', 'gaby@contabilidade.com', '$2y$10$B7TcEZdD69c2Bt9W/FwMwu7Ah/MroIswBt5KxfMl1MgEl4xYZi5Bu', '2025-06-24 01:08:25', 4, 'user'),
(12, 'Ilana', 'ilana@gmail.com', '$2y$10$lzTBFYpqTGaUmNjo96ZK0u.hLc5U9eneQE0eWBZs2FA9YLu.KnJsi', '2025-06-25 00:52:12', 1, 'user'),
(13, 'MW informatica', 'MW@gmail.com', '$2y$10$5uDj.yAsx19MrbpOUsvj5u17CYfs16jIr6U5cQbtP14kn6jG6rZXm', '2025-06-25 01:06:44', 2, 'user'),
(14, 'Estabilizador', 'estabilizador@gmail.com', '$2y$10$E5g7VS9zChXkzIxW7UEXT.ac/wFkURKt315CRZWozuvQ0WLkaQ4XK', '2025-06-25 01:10:05', 2, 'user'),
(15, 'Gabriel', 'gabriel@gmail.com', '$2y$10$1g0GxKQtZR8iPidvhOS4duA4Lmx94lsPysEFFg0qnkmvvf7Q.HyQe', '2025-06-25 17:08:39', 3, 'user');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `redmasca_categorias`
--
ALTER TABLE `redmasca_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `redmasca_comentarios`
--
ALTER TABLE `redmasca_comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `fk_parent_comment` (`parent_id`),
  ADD KEY `fk_comments_user` (`user_id`);

--
-- Índices de tabela `redmasca_tags`
--
ALTER TABLE `redmasca_tags`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `redmasca_topicos`
--
ALTER TABLE `redmasca_topicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Índices de tabela `redmasca_topicos_tags`
--
ALTER TABLE `redmasca_topicos_tags`
  ADD PRIMARY KEY (`topic_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Índices de tabela `redmasca_usuario`
--
ALTER TABLE `redmasca_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `redmasca_categorias`
--
ALTER TABLE `redmasca_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `redmasca_comentarios`
--
ALTER TABLE `redmasca_comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `redmasca_tags`
--
ALTER TABLE `redmasca_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `redmasca_topicos`
--
ALTER TABLE `redmasca_topicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `redmasca_usuario`
--
ALTER TABLE `redmasca_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `redmasca_comentarios`
--
ALTER TABLE `redmasca_comentarios`
  ADD CONSTRAINT `fk_comments_user` FOREIGN KEY (`user_id`) REFERENCES `redmasca_usuario` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_parent_comment` FOREIGN KEY (`parent_id`) REFERENCES `redmasca_comentarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `redmasca_comentarios_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `redmasca_topicos` (`id`);

--
-- Restrições para tabelas `redmasca_topicos`
--
ALTER TABLE `redmasca_topicos`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `redmasca_usuario` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `redmasca_topicos_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `redmasca_categorias` (`id`);

--
-- Restrições para tabelas `redmasca_topicos_tags`
--
ALTER TABLE `redmasca_topicos_tags`
  ADD CONSTRAINT `redmasca_topicos_tags_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `redmasca_topicos` (`id`),
  ADD CONSTRAINT `redmasca_topicos_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `redmasca_tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
