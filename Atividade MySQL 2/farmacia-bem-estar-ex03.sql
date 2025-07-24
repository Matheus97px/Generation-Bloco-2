-- Cria um novo banco de dados
CREATE DATABASE db_farmacia_bem_estar;
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona o banco de dados
USE db_farmacia_bem_estar;
-- --------------------------------------------------------------------------------------- -- 
-- Cria a tabela tb_categorias para armazenar informações sobre as categorias de produtos
CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,  
    nome VARCHAR(255),                     
    descricao VARCHAR(255)                 
);
-- --------------------------------------------------------------------------------------- -- 
-- Cria a tabela tb_produtos para armazenar informações sobre os produtos
CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,  
	nome VARCHAR(255) NOT NULL,                      
    preco DECIMAL(6,2) NOT NULL, 
    estoque INT NOT NULL,
    descricao VARCHAR(255),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona todos os registros da tabela tb_produtos
SELECT * FROM tb_produtos;
-- Seleciona todos os registros da tabela tb_categorias
SELECT * FROM tb_categorias;
-- --------------------------------------------------------------------------------------- -- 
-- Insere várias categorias de produtos na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Remédios para diversas condições de saúde'),
('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
('Vitaminas', 'Suplementos vitamínicos e minerais'),
('Higiene Pessoal', 'Produtos para cuidados diários'),
('Dermocosméticos', 'Produtos dermatológicos com função estética');
-- --------------------------------------------------------------------------------------- -- 
-- Insere vários produtos na tabela tb_produtos, associando-os às suas respectivas categorias
INSERT INTO tb_produtos (nome, preco, estoque, descricao, categoria_id) VALUES
('Paracetamol 750mg', 12.50, 100, 'Analgésico e antitérmico', 1),
('Shampoo Anticaspa', 32.90, 50, 'Tratamento capilar', 2),
('Vitamina C 1g', 19.99, 80, 'Reforço imunológico', 3),
('Sabonete Líquido Neutro', 8.90, 150, 'Higiene diária para peles sensíveis', 4),
('Protetor Solar FPS 60', 62.00, 30, 'Proteção contra raios UV', 5),
('Creme Anti-idade', 74.50, 20, 'Tratamento facial noturno', 5),
('Dipirona Sódica 1g', 6.50, 200, 'Analgésico e antitérmico', 1),
('Desodorante Roll-On', 11.20, 120, 'Proteção contra odor', 4);
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona todos os produtos com preço maior que 50.00
SELECT * FROM tb_produtos WHERE preco > 50.00;
-- Evitando os id
SELECT nome,preco,estoque,descricao FROM tb_produtos WHERE preco > 50.00;
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona todos os produtos com preço entre 5.00 e 60.00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
-- Evitando os id
SELECT nome,preco,estoque,descricao WHERE preco BETWEEN 5.00 AND 60.00;
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona todos os produtos cujo nome contém a letra 'c'
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
-- Evitando os id
SELECT nome,preco,estoque,descricao FROM tb_produtos WHERE nome LIKE "%c%";
-- --------------------------------------------------------------------------------------- -- 
-- Realiza um INNER JOIN entre tb_produtos e tb_categorias para obter informações sobre as categorias dos produtos
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
-- Evitando os id
SELECT tb_produtos.nome,preco,estoque,tb_produtos.descricao, tb_categorias.nome,tb_categorias.descricao 
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona todos os produtos da categoria com id 2 (Cosméticos) utilizando um INNER JOIN
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.id = 2;
-- Evitando os id
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.id = 2;
-- --------------------------------------------------------------------------------------- -- 

