-- Cria um novo banco de dados 
CREATE DATABASE db_pizzaria_legal;
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona o banco de dados 
USE db_pizzaria_legal;
-- --------------------------------------------------------------------------------------- -- 
-- Cria a tabela tb_classes para armazenar informações sobre as classes categorias
CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,  
    nome VARCHAR(255),                     
    descricao VARCHAR(255)                 
);
-- --------------------------------------------------------------------------------------- -- 
-- Cria a tabela tb_personagens para armazenar informações sobre os personagens
CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,  
    nome VARCHAR(255) NOT NULL,                      
    preco DECIMAL(5,2) NOT NULL,                           
    ingredientes VARCHAR(255),        
    pedacos INT 
);
-- --------------------------------------------------------------------------------------- -- 
-- Adiciona uma coluna categorias_id a tabela tb_pizzas para referenciar a categoria da pizzas
ALTER TABLE tb_pizzas ADD categorias_id BIGINT;
-- --------------------------------------------------------------------------------------- -- 
-- Cria uma restrição de chave estrangeira para garantir a integridade referencial entre pizzas e categoria
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categoria
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id);
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona todos os registros da tabela tb_pizzas
SELECT * FROM tb_pizzas;
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona todos os registros da tabela tb_categorias
SELECT * FROM tb_categorias;
-- --------------------------------------------------------------------------------------- -- 
-- Insere várias categorias de pizzas na tabela tb_categorias
INSERT INTO tb_categorias(nome,descricao) VALUES 
('Tradicional', 'Sabores clássicos e populares'),
('Especial', 'Ingredientes selecionados e combinações exclusivas'),
('Doce', 'Pizzas com recheios doces, ideais como sobremesa'),
('Vegana', 'Sem ingredientes de origem animal'),
('Apimentada', 'Com pimentas e ingredientes ardidos');
-- --------------------------------------------------------------------------------------- -- 
-- Insere várias pizzas na tabela tb_pizzas, associando-as às suas respectivas categorias
INSERT INTO tb_pizzas(nome,preco,ingredientes,pedacos,categorias_id) VALUES 
('Calabresa', 39.90, 'Molho, mussarela, calabresa, cebola', 8, 1),
('Marguerita', 42.00, 'Molho, mussarela, tomate, manjericão', 6, 1),
('Quatro Queijos', 49.90, 'Molho, mussarela, parmesão, provolone, gorgonzola', 8, 2),
('Frango com Catupiry', 45.00, 'Molho, frango, catupiry, mussarela', 8, 2),
('Chocolate com Morango', 39.90, 'Chocolate, morango, leite condensado', 6, 3),
('Romeu e Julieta', 37.50, 'Goiabada, queijo branco', 6, 3),
('Vegana Supreme', 47.00, 'Molho, tofu, vegetais grelhados', 8, 4),
('Mexicana', 48.90, 'Molho picante, calabresa, pimenta jalapeño', 8, 5),
('Portuguesa', 44.90, 'Molho, mussarela, presunto, ovo, cebola, pimentão, azeitona', 8, 1),
('Napolitana', 41.00, 'Molho, mussarela, tomate, orégano, parmesão', 6, 1),
('Baiana', 46.00, 'Molho, calabresa, cebola, pimenta, ovos', 8, 1),
('Camarão Premium', 69.90, 'Molho, camarão, catupiry, alho, cheiro verde', 8, 2),
('Picanha com Cheddar', 62.50, 'Molho, picanha desfiada, cheddar, cebola caramelizada', 8, 2),
('Trufada', 74.90, 'Molho branco, trufas, mussarela especial', 6, 2),
('Inferno Mexicano', 50.90, 'Molho apimentado, jalapeños, calabresa, pimenta dedo-de-moça', 8, 5),
('Pepperoni Extra', 47.90, 'Molho, mussarela, pepperoni picante', 8, 5);

-- --------------------------------------------------------------------------------------- -- 
-- Seleciona todas as pizzas com preço maior que 45.00
SELECT * FROM tb_pizzas WHERE preco > 45.00;
-- Evitando os id
SELECT nome,preco,ingredientes,pedacos FROM tb_pizzas WHERE preco > 45.00;
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona todas as pizzas com preço entre 50.00 e 100.00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
-- Evitando os id
SELECT nome,preco,ingredientes,pedacos FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona todas as pizzas cujo nome contém a letra 'M'
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";
-- Evitando os id
SELECT nome,preco,ingredientes,pedacos FROM tb_pizzas WHERE nome LIKE "%M%";
-- --------------------------------------------------------------------------------------- -- 
-- Realiza um INNER JOIN entre tb_pizzas e tb_categorias para obter informações sobre as categorias das pizzas
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;
-- INNER JOIN evitando os id
SELECT tb_pizzas.nome,preco,ingredientes,pedacos,tb_categorias.nome,descricao FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona todas as pizzas da categoria com id 3 (Doce) utilizando INNER JOIN
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id WHERE tb_categorias.id = 3;
-- Evitando os id
SELECT tb_pizzas.nome,preco,ingredientes,pedacos,tb_categorias.nome,descricao FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id WHERE tb_categorias.id = 3;
-- --------------------------------------------------------------------------------------- -- 
