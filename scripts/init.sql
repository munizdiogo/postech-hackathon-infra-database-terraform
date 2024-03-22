-- Criar um banco de dados (caso ainda não exista)
CREATE DATABASE IF NOT EXISTS dbpostech_colaboradores;

-- Usar o banco de dados criado
USE dbpostech_colaboradores;


CREATE TABLE IF NOT EXISTS `colaboradores` (
    `id` BIGINT(20) NOT NULL,
    `status` VARCHAR(20) NOT NULL,
    `cadastrado_em` DATETIME NOT NULL,
    `atualizado_em` DATETIME NOT NULL,
    `nome` VARCHAR(60) NOT NULL,
    `cpf` VARCHAR(14) NOT NULL,
    `email` VARCHAR(200) NOT NULL,
    `telefone` VARCHAR(20),
    `data_nascimento` DATE NOT NULL,
    `horario_inicio_expediente` DATETIME,
    `horario_termino_expediente` DATETIME,
    `horario_inicio_almoco` DATETIME,
    `horario_termino_almoco` DATETIME,
    PRIMARY KEY (`id`),
    UNIQUE (`id`, `cpf`)
);





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
);
