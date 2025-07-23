CREATE DATABASE db_rh_empresa;

USE db_rh_empresa;

CREATE TABLE tb_funcionarios(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255),
    departamento VARCHAR(255),
    salario DECIMAL(8,2),
    data_adimissao DATE
);

INSERT INTO tb_funcionarios(nome,cargo,departamento,salario,data_adimissao) VALUES
('Alice Ferreira', 'Analista de RH', 'Recursos Humanos', 3200.00, '2022-05-10'),
('Bruno Silva', 'Desenvolvedor', 'TI', 4500.00, '2021-03-15'),
('Carla Nunes', 'Assistente Administrativo', 'Financeiro', 1900.00, '2023-01-20'),
('Daniel Souza', 'Estagiário', 'TI', 1500.00, '2024-02-01'),
('Eduarda Lima', 'Gerente', 'Marketing', 6000.00, '2019-09-30');

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET salario = 5500 WHERE id = 5;

SELECT * FROM tb_funcionarios;