CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    ensino VARCHAR(255) NOT NULL,
    serie INT NOT NULL,
    sala VARCHAR(255),
    nota DECIMAL(3,1),
    situacao VARCHAR(255)
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes(nome,ensino,serie,sala,nota,situacao) VALUES
('Alice Nascimento', 'fundamental_1', 3, 'A', 8.5, 'ativo'),
('Bruno Oliveira', 'fundamental_1', 2, 'B', 7.2, 'ativo'),
('Carlos Souza', 'fundamental_2', 6, 'C', 6.9, 'ativo'),
('Daniela Lima', 'medio', 1, 'A', 8.8, 'ativo'),
('Eduardo Mendes', 'fundamental_2', 7, 'B', 9.0, 'ativo'),
('Fernanda Castro', 'medio', 2, 'C', 5.5, 'ativo'),
('Gabriel Santos', 'fundamental_1', 4, 'A', 6.0, 'transferido'),
('Helena Costa', 'fundamental_2', 9, 'B', 7.5, 'formado'),
('Igor Almeida', 'fundamental_1', 1, 'C', 8.3, 'ativo'),
('Juliana Freitas', 'medio', 3, 'A', 9.7, 'ativo'),
('Kauã Martins', 'fundamental_2', 8, 'B', 6.2, 'ativo'),
('Larissa Teixeira', 'medio', 3, 'C', 5.8, 'ativo'),
('Matheus Ribeiro', 'fundamental_2', 6, 'A', 7.0, 'ativo'),
('Nathalia Dias', 'fundamental_1', 5, 'B', 9.1, 'ativo'),
('Otávio Rocha', 'fundamental_1', 4, 'C', 6.7, 'ativo'),
('Priscila Gomes', 'medio', 1, 'A', 8.9, 'ativo'),
('Rafael Moreira', 'fundamental_2', 7, 'B', 4.5, 'transferido'),
('Sofia Barros', 'medio', 2, 'C', 7.3, 'ativo'),
('Thiago Rezende', 'fundamental_2', 9, 'A', 5.0, 'formado'),
('Vanessa Martins', 'fundamental_1', 2, 'B', 7.9, 'ativo');

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET situacao = "transferido" WHERE id = 13;

SELECT * FROM tb_estudantes;

