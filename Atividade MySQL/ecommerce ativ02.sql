CREATE DATABASE db_retro_games;

USE db_retro_games;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    quantidade INT NOT NULL,
    plataforma VARCHAR(255),
    genero VARCHAR(255),
    tipo VARCHAR(255)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome,preco,quantidade,plataforma,genero,tipo) VALUES
('Chrono Trigger', 650.00, 3, 'SNES', 'RPG', 'Deluxe Edition'),
('Sonic the Hedgehog', 200.00, 5, 'Mega Drive', 'Ação', 'Standard Edition'),
('Castlevania: Symphony of the Night', 720.00, 2, 'PS1', 'Aventura', 'Deluxe Edition'),
('Super Mario Kart', 350.00, 4, 'SNES', 'Corrida', 'Standard Edition'),
('Final Fantasy VII', 550.00, 1, 'PS1', 'RPG', 'Deluxe Edition'),
('Donkey Kong Country', 280.00, 6, 'SNES', 'Plataforma', 'Standard Edition'),
('Street Fighter II Turbo', 220.00, 2, 'SNES', 'Luta', 'Standard Edition'),
('The Legend of Zelda: A Link to the Past', 630.00, 3, 'SNES', 'Aventura', 'Deluxe Edition'),
('Mega Man X', 310.00, 4, 'SNES', 'Ação', 'Standard Edition'),
('Resident Evil 2', 580.00, 2, 'PS1', 'Terror', 'Deluxe Edition'),
('Metroid Fusion', 450.00, 3, 'GBA', 'Aventura', 'Standard Edition'),
('Contra III: The Alien Wars', 395.00, 2, 'SNES', 'Ação', 'Standard Edition'),
('Tetris', 150.00, 8, 'Game Boy', 'Puzzle', 'Standard Edition'),
('EarthBound', 890.00, 1, 'SNES', 'RPG', 'Deluxe Edition'),
('Pokémon Red', 670.00, 2, 'Game Boy', 'RPG', 'Deluxe Edition'),
('Mortal Kombat II', 260.00, 3, 'SNES', 'Luta', 'Standard Edition'),
('DuckTales', 180.00, 5, 'NES', 'Plataforma', 'Standard Edition'),
('Aladdin', 220.00, 4, 'Mega Drive', 'Plataforma', 'Standard Edition'),
('Crash Bandicoot', 540.00, 3, 'PS1', 'Plataforma', 'Deluxe Edition'),
('F-Zero', 370.00, 2, 'SNES', 'Corrida', 'Standard Edition');

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET quantidade = 10 WHERE id = 1;

SELECT * FROM tb_produtos;
