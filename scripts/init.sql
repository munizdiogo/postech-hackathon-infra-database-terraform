-- Criar um banco de dados (caso ainda não exista)
CREATE DATABASE IF NOT EXISTS dbpostech_colaboradores;

-- Usar o banco de dados criado
USE dbpostech_colaboradores;


CREATE TABLE `colaboradores` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` varchar(20) NOT NULL,
  `cadastrado_em` datetime NOT NULL,
  `atualizado_em` datetime NOT NULL,
  `nome` varchar(60) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  `horario_inicio_expediente` datetime DEFAULT NULL,
  `horario_termino_expediente` datetime DEFAULT NULL,
  `horario_inicio_almoco` datetime DEFAULT NULL,
  `horario_termino_almoco` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`,`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;





-- Criar um banco de dados (caso ainda não exista)
CREATE DATABASE IF NOT EXISTS dbpostech_registros_de_ponto;

-- Usar o banco de dados criado
USE dbpostech_registros_de_ponto;


CREATE TABLE IF NOT EXISTS `registros_de_ponto` (
    `id` BIGINT(20) NOT NULL,
    `status` VARCHAR(20) NOT NULL,
    `cadastrado_em` DATETIME NOT NULL,
    `modificado_em` DATETIME NOT NULL,
    `id_colaborador` BIGINT(20) NOT NULL,
    `tipo` VARCHAR(20) NOT NULL,
    `data_hora_inicio` DATETIME NOT NULL,
    `data_hora_termino` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
