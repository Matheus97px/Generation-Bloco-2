-- Cria um novo banco de dados 
CREATE DATABASE db_generation_game_online;
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona o banco de dados 
USE db_generation_game_online;
-- --------------------------------------------------------------------------------------- -- 
-- Cria a tabela tb_classes para armazenar informações sobre as classes de personagens
CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,  
    nome VARCHAR(255),                     
    descricao VARCHAR(255)                 
);
-- --------------------------------------------------------------------------------------- -- 
-- Cria a tabela tb_personagens para armazenar informações sobre os personagens
CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,  
    nome VARCHAR(255) NOT NULL,                      
    nivel INT NOT NULL,                             
    poder_ataque DECIMAL(6,2),            
    poder_defesa DECIMAL(6,2),            
    ponto_vida INT                        
);
-- --------------------------------------------------------------------------------------- -- 
-- Adiciona uma coluna classes_id à tabela tb_personagens para referenciar a classe do personagem
ALTER TABLE tb_personagens ADD classes_id BIGINT;
-- --------------------------------------------------------------------------------------- -- 
-- Cria uma restrição de chave estrangeira para garantir a integridade referencial entre personagens e classes
ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classes_id) REFERENCES tb_classes(id);
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona todos os registros da tabela tb_personagens
SELECT * FROM tb_personagens;
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona todos os registros da tabela tb_classes
SELECT * FROM tb_classes;
-- --------------------------------------------------------------------------------------- -- 
-- Insere várias classes de personagens na tabela tb_classes
INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo, força e resistência.'),
('Mago', 'Utiliza feitiços para atacar e defender. Frágil, mas poderoso.'),
('Arqueiro', 'Ataques à distância com alta precisão.'),
('Assassino', 'Ágil e furtivo, com dano crítico alto.'),
('Cavaleiro', 'Combina defesa robusta com ataques decentes.'),
('Druida', 'Mestre da natureza, controla plantas e animais em combate.'),
('Necromante', 'Invocador de mortos-vivos e manipulador das forças sombrias.'),
('Paladino', 'Guerreiro sagrado com habilidades de cura e proteção divina.'),
('Bardo', 'Usa música para inspirar aliados e confundir inimigos.'),
('Elementalista', 'Domina os elementos naturais: fogo, água, terra e ar.'),
('Monge', 'Especialista em artes marciais e meditação. Equilíbrio entre ataque e defesa.'),
('Invocador', 'Controla criaturas mágicas e monstros para lutar em seu lugar.'),
('Feiticeiro do Caos', 'Manipula o acaso e magias imprevisíveis com grandes riscos e recompensas.');
-- --------------------------------------------------------------------------------------- -- 
-- Insere vários personagens na tabela tb_personagens, associando-os às suas respectivas classes
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, ponto_vida, classes_id) VALUES
('Thorgar Punho de Pedra', 40, 1950.00, 1800.00, 2500, 1), 
('Aelirenn, a Tempestade Arcana', 38, 2400.00, 950.00, 1600, 2), 
('Caelion Olhos de Falcão', 35, 2100.00, 1000.00, 1400, 3), 
('Sombra Célere', 32, 2300.00, 850.00, 1350, 4), 
('Sir Cedric Escudo de Aço', 45, 1850.00, 1900.00, 2800, 5), 
('Líria Folhassilvestres', 37, 1700.00, 1600.00, 2000, 6), 
('Morgrul, o Despertador de Ossos', 42, 2150.00, 1200.00, 1700, 7),
('Auriel, Escudo Sagrado', 39, 1600.00, 2000.00, 2400, 8), 
('Canto Sombrio', 31, 1100.00, 1300.00, 1550, 9),  
('Ignys da Chama Eterna', 36, 2450.00, 950.00, 1500, 10), 
('Chan, o Silencioso', 33, 1800.00, 1400.00, 2000, 11), 
('Zhul, Senhor dos Demônios', 44, 2200.00, 1000.00, 1750, 12), 
('Caosandrith, Filho do Vórtice', 41, 2600.00, 700.00, 1450, 13),
('Brakkus Machado Sangrento', 43, 2050.00, 1750.00, 2600, 1),
('Cyrandil Sombras Eternas', 39, 2500.00, 900.00, 1450, 2), 
('Cassandra Olho Ágil', 36, 2150.00, 1150.00, 1600, 3),
('Velkan Punhal Rápido', 34, 2200.00, 950.00, 1400, 4), 
('Darian Escudo Solar', 41, 1900.00, 1950.00, 2700, 5), 
('Celya Guardiã Verde', 35, 1750.00, 1650.00, 2100, 6), 
('Nerzul Voz da Cripta', 45, 2300.00, 1250.00, 1800, 7), 
('Elrandor Mão de Luz', 38, 1650.00, 1800.00, 2450, 8), 
('Clarinete das Sombras', 33, 1200.00, 1450.00, 1650, 9), 
('Pyra da Tempestade Ígnea', 40, 2550.00, 850.00, 1500, 10), 
('Chen Long do Lótus', 37, 1850.00, 1400.00, 2100, 11), 
('Krozan, Chamado das Feras', 42, 2250.00, 1100.00, 1750, 12), 
('Caelthos, Arauto do Caos', 44, 2700.00, 750.00, 1400, 13); 
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona todos os personagens com poder de ataque maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona todos os personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona todos os personagens cujo nome contém a letra 'c'
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
-- --------------------------------------------------------------------------------------- -- 
-- Realiza um INNER JOIN entre tb_personagens e tb_classes para obter informações sobre as classes dos personagens
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id;
-- INNER JOIN sem id e a classe id
SELECT tb_personagens.nome,nivel,poder_ataque,poder_defesa,ponto_vida,tb_classes.nome,descricao
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id;
-- --------------------------------------------------------------------------------------- -- 
-- Seleciona todos os personagens da classe com id 3 (arqueiro) utilizando um INNER JOIN
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id WHERE tb_classes.id = 3;
-- seleciona todos os personagens usando o like 
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id WHERE tb_classes.nome LIKE "%arqueiro%";
--  Seleciona todos os personagens da classe Arqueiro porem ocultando id 
SELECT tb_personagens.nome,nivel,poder_ataque,poder_defesa,ponto_vida,tb_classes.nome,descricao 
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id WHERE tb_classes.id = 3;
-- --------------------------------------------------------------------------------------- -- 

