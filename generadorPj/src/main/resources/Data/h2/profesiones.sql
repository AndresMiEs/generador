
CREATE TABLE profesiones (
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
clase VARCHAR(50) NOT NULL,
raza_id INT NOT NULL,
rango_min INT NOT NULL,
rango_max INT NOT NULL,
FOREIGN KEY (raza_id) REFERENCES razas(id)
);

INSERT INTO profesiones (id, nombre, clase, raza_id, rango_min, rango_max)
VALUES 
--Humano
(1, "Hechicero", 1, 1, 20 ), (2, "Noble", 1, 21, 40), (3, "Sacerdote Guerrero",1 , 41, 60 ), (4, "Cazador de Brujas", 1, 61, 80), (5, "Campesino", 1, 81, 100),
--Enano
(6, "Matador", 2, 1, 20 ), (7, "Ingeniero", 2, 21, 40), (8, "Soldado", 2, 41, 60 ), (9, "Luchador de foso", 2, 61, 80), (10, "Artesano", 2, 81, 100),
--Mediano
(11, "Ladrón", 3, 1, 20 ), (12, "Vendedor Ambulante", 3, 21, 40), (13, "Investigador", 3 , 41, 60 ), (14, "Místico", 3, 61, 80), (15, "Explorador", 3, 81, 100),
--Alto Elfo
(16, "Explorador", 4, 1, 20 ), (17, "Médico", 4, 21, 40), (18, "Ladrón",4 , 41, 60 ), (19, "Soldado", 4, 61, 80), (20, "Mercader", 4, 81, 100),
--Elfo Silvano
(21, "Explorador", 1, 1, 20 ), (22, "Guerrero", 1, 21, 40), (23, "Cazador",1 , 41, 60 ), (24, "Hechicero", 1, 61, 80), (25, "Místico", 1, 81, 100),
--Gnomo
(26, "Hechicero", 2, 1, 20 ), (27, "Ladrón", 2, 21, 40), (28, "Explorador", 2, 41, 60 ), (29, "Místico", 2, 61, 80), (30, "Artesano", 2, 81, 100);


INSERT INTO profesiones (nombre, clase, raza_id, rango_min, rango_max)
VALUES 
("Abogado", "Académico", 1, 1, 1), 
("Abogado", "Académico", 2, 1, 2), 
("Abogado", "Académico", 3, 1, 2), 
("Abogado", "Académico", 4, 1, 4),
("Abogado", "Académico", 6, 1, 1),

("Boticario", "Académico", 1, 2, 2),
("Boticario", "Académico", 2, 3, 3),
("Boticario", "Académico", 3, 3, 3),
("Boticario", "Académico", 4, 5, 6),
("Boticario", "Académico", 6, 2, 2),

("Erudito", "Académico", 1, 3, 4),
("Erudito", "Académico", 2, 4, 5),
("Erudito", "Académico", 3, 4, 5),
("Erudito", "Académico", 4, 7, 10),
("Erudito", "Académico", 5, 1, 1),
("Erudito", "Académico", 6, 3, 4),

("Físico", "Académico", 1, 5, 5),
("Físico", "Académico", 2, 6, 6),
("Físico", "Académico", 3, 6, 7),
("Físico", "Académico", 4, 11, 12),
("Físico", "Académico", 6, 5, 6),

("Hechicero", "Académico", 1, 6, 6),
("Hechicero", "Académico", 4, 13, 16),
("Hechicero", "Académico", 5, 2, 5),
("Hechicero", "Académico", 6, 7, 13),

("Ingeniero", "Académico", 1, 7, 7),
("Ingeniero", "Académico", 2, 7, 9),
("Ingeniero", "Académico", 3, 8, 8),

("Monja", "Académico", 1, 8, 9),

("Sacerdote", "Académico", 1, 10, 14),
("Sacerdote", "Académico", 6, 14, 14),

("Alborotador", "Burgués", 1, 15, 15),
("Alborotador", "Burgués", 2, 10, 11),
("Alborotador", "Burgués", 3, 9, 10),
("Alborotador", "Burgués", 6, 15, 15),

("Artesano", "Burgués", 1, 16, 17),
("Artesano", "Burgués", 2, 12, 17),
("Artesano", "Burgués", 3, 11, 15),
("Artesano", "Burgués", 4, 17, 19),
("Artesano", "Burgués", 5, 6, 10),
("Artesano", "Burgués", 6, 16, 17),

("Cazarratas", "Burgués", 1, 18, 19),
("Cazarratas", "Burgués", 2, 18, 18),
("Cazarratas", "Burgués", 3, 16, 18),
("Cazarratas", "Burgués", 6, 18, 18),

("Ciudadano", "Burgués", 1, 20, 22),
("Ciudadano", "Burgués", 2, 19, 24),
("Ciudadano", "Burgués", 3, 19, 21),
("Ciudadano", "Burgués", 4, 20, 21),
("Ciudadano", "Burgués", 6, 19, 24),

("Investigador", "Burgués", 1, 23, 23),
("Investigador", "Burgués", 2, 25, 26),
("Investigador", "Burgués", 3, 22, 23),
("Investigador", "Burgués", 4, 22, 23),
("Investigador", "Burgués", 6, 25, 25),

("Mendigo", "Burgués", 1, 24, 25),
("Mendigo", "Burgués", 2, 27, 27),
("Mendigo", "Burgués", 3, 24, 27),
("Mendigo", "Burgués", 6, 26, 26),

("Mercader", "Burgués", 1, 26, 26),
("Mercader", "Burgués", 2, 28, 31),
("Mercader", "Burgués", 3, 28, 31),
("Mercader", "Burgués", 4, 24, 28),
("Mercader", "Burgués", 6, 27, 28),

("Vigilante", "Burgués", 1, 27, 27),
("Vigilante", "Burgués", 2, 32, 34),
("Vigilante", "Burgués", 3, 32, 33),
("Vigilante", "Burgués", 4, 29, 29),
("Vigilante", "Burgués", 6, 29, 29),

("Adivino", "Campesino", 1, 28, 28),

("Aldeano", "Campesino", 1, 29, 33),
("Aldeano", "Campesino", 2, 35, 35),
("Aldeano", "Campesino", 3, 34, 36),
("Aldeano", "Campesino", 6, 43, 46),

("Alguacil", "Campesino", 1, 34, 34),
("Alguacil", "Campesino", 2, 36, 37),
("Alguacil", "Campesino", 3, 37, 37),
("Alguacil", "Campesino", 6, 47, 47),

("Cazador", "Campesino", 1, 35, 36),
("Cazador", "Campesino", 2, 38, 39),
("Cazador", "Campesino", 3, 38, 39),
("Cazador", "Campesino", 4, 30, 32),
("Cazador", "Campesino", 5, 11, 20),
("Cazador", "Campesino", 6, 48, 49),

("Explorador", "Campesino", 1, 37, 37),
("Explorador", "Campesino", 2, 40, 40),
("Explorador", "Campesino", 3, 40, 40),
("Explorador", "Campesino", 4, 33, 38),
("Explorador", "Campesino", 5, 21, 31),
("Explorador", "Campesino", 6, 50, 53),

("Herbolario", "Campesino", 1, 38, 38),
("Herbolario", "Campesino", 3, 41, 43),
("Herbolario", "Campesino", 4, 39, 40),
("Herbolario", "Campesino", 5, 32, 38),
("Herbolario", "Campesino", 6, 54, 54),

("Minero", "Campesino", 1, 39, 39),
("Minero", "Campesino", 2, 41, 45),
("Minero", "Campesino", 3, 44, 44),
("Minero", "Campesino", 6, 55, 62),

("Místico", "Campesino", 1, 40, 40),
("Místico", "Campesino", 5, 39, 43),

("Artista", "Cortesano", 1, 41, 41),
("Artista", "Cortesano", 2, 46, 46),
("Artista", "Cortesano", 3, 45, 46),
("Artista", "Cortesano", 4, 41, 41),
("Artista", "Cortesano", 5, 44, 47),
("Artista", "Cortesano", 6, 30, 30),

("Asesor", "Cortesano", 1, 42, 42),
("Asesor", "Cortesano", 2, 47, 48),
("Asesor", "Cortesano", 3, 47, 47),
("Asesor", "Cortesano", 4, 42, 43),
("Asesor", "Cortesano", 5, 48, 51),
("Asesor", "Cortesano", 6, 31, 31),

("Duelista", "Cortesano", 1, 43, 43),
("Duelista", "Cortesano", 2, 49, 49),
("Duelista", "Cortesano", 4, 44, 45),

("Emisario", "Cortesano", 1, 44, 44),
("Emisario", "Cortesano", 2, 50, 51),
("Emisario", "Cortesano", 3, 48, 48),
("Emisario", "Cortesano", 4, 46, 48),
("Emisario", "Cortesano", 5, 52, 58),
("Emisario", "Cortesano", 6, 32, 32),

("Espía", "Cortesano", 1, 45, 45),
("Espía", "Cortesano", 2, 52, 52),
("Espía", "Cortesano", 3, 49, 49),
("Espía", "Cortesano", 4, 49, 51),
("Espía", "Cortesano", 5, 59, 62),
("Espía", "Cortesano", 6, 33, 37),

("Guarda", "Cortesano", 1, 46, 46),
("Guarda", "Cortesano", 2, 53, 54),
("Guarda", "Cortesano", 3, 50, 51),
("Guarda", "Cortesano", 4, 52, 53),
("Guarda", "Cortesano", 6, 38, 39),

("Noble", "Cortesano", 1, 47, 47),
("Noble", "Cortesano", 2, 55, 55),
("Noble", "Cortesano", 4, 54, 56),
("Noble", "Cortesano", 5, 63, 68),
("Noble", "Cortesano", 6, 40, 40),

("Sirviente", "Cortesano", 1, 48, 50),
("Sirviente", "Cortesano", 2, 56, 56),
("Sirviente", "Cortesano", 3, 52, 57),
("Sirviente", "Cortesano", 6, 41, 42),

("Caballero", "Guerrero", 1, 51, 51),
("Caballero", "Guerrero", 4, 57, 57),
("Caballero", "Guerrero", 5, 69, 70),

("Guardia", "Guerrero", 1, 52, 53),
("Guardia", "Guerrero", 2, 57, 59),
("Guardia", "Guerrero", 3, 58, 59),
("Guardia", "Guerrero", 4, 58, 59),
("Guardia", "Guerrero", 5, 71, 72),
("Guardia", "Guerrero", 6, 98, 98),

("Guerrero de Foso", "Guerrero", 1, 54, 54),
("Guerrero de Foso", "Guerrero", 2, 60, 62),
("Guerrero de Foso", "Guerrero", 3, 60, 60),
("Guerrero de Foso", "Guerrero", 4, 60, 61),
("Guerrero de Foso", "Guerrero", 5, 73, 74),

("Matador", "Guerrero", 2, 63, 66),

("Protagonista", "Guerrero", 1, 55, 55),
("Protagonista", "Guerrero", 2, 67, 69),
("Protagonista", "Guerrero", 4, 62, 62),

("Reitre", "Guerrero", 1, 56, 57),
("Reitre", "Guerrero", 4, 63, 66),
("Reitre", "Guerrero", 5, 75, 79),

("Caballero", "Guerrero", 1, 58, 58),
("Caballero", "Guerrero", 6, 99, 99),

("Soldado", "Guerrero", 1, 59, 62),
("Soldado", "Guerrero", 2, 70, 72),
("Soldado", "Guerrero", 3, 61, 63),
("Soldado", "Guerrero", 4, 67, 68),
("Soldado", "Guerrero", 5, 80, 83),
("Soldado", "Guerrero", 6, 100, 100),

("Brujo", "Pícaro", 1, 63, 63),

("Chalán", "Pícaro", 1, 64, 65),
("Chalán", "Pícaro", 2, 64, 66),
("Chalán", "Pícaro", 3, 64, 66),
("Chalán", "Pícaro", 4, 69, 70),
("Chalán", "Pícaro", 6, 85, 86),

("Charlatán", "Pícaro", 1, 66, 66),
("Charlatán", "Pícaro", 3, 67, 67),
("Charlatán", "Pícaro", 4, 71, 73),
("Charlatán", "Pícaro", 6, 87, 91),

("Forajido", "Pícaro", 1, 67, 70),
("Forajido", "Pícaro", 2, 73, 75),
("Forajido", "Pícaro", 3, 68, 68),
("Forajido", "Pícaro", 4, 74, 76),
("Forajido", "Pícaro", 5, 84, 89),
("Forajido", "Pícaro", 6, 84, 84),

("Ladrón", "Pícaro", 1, 71, 73),
("Ladrón", "Pícaro", 2, 76, 76),
("Ladrón", "Pícaro", 3, 69, 72),
("Ladrón", "Pícaro", 6, 92, 94),

("Ladrón de Tumbas", "Pícaro", 1, 74, 74),
("Ladrón de Tumbas", "Pícaro", 3, 73, 73),

("Pandillero", "Pícaro", 1, 75, 75),
("Pandillero", "Pícaro", 2, 77, 77),
("Pandillero", "Pícaro", 3, 74, 74),
("Pandillero", "Pícaro", 6, 95, 96),

("Perista", "Pícaro", 1, 76, 76),
("Perista", "Pícaro", 2, 78, 78),
("Perista", "Pícaro", 3, 75, 75),
("Perista", "Pícaro", 6, 97, 97),

("Barquero", "Ribereño", 1, 77, 78),
("Barquero", "Ribereño", 2, 79, 80),
("Barquero", "Ribereño", 3, 76, 76),
("Barquero", "Ribereño", 4, 77, 77),
("Barquero", "Ribereño", 6, 76, 76),

("Contrabandista", "Ribereño", 1, 79, 79),
("Contrabandista", "Ribereño", 2, 81, 82),
("Contrabandista", "Ribereño", 3, 77, 80),
("Contrabandista", "Ribereño", 4, 78, 78),
("Contrabandista", "Ribereño", 6, 77, 79),

("Estibador", "Ribereño", 1, 80, 81),
("Estibador", "Ribereño", 2, 83, 84),
("Estibador", "Ribereño", 3, 81, 83),

("Guardián de río", "Ribereño", 1, 82, 83),
("Guardián de río", "Ribereño", 3, 84, 84),

("Marino", "Ribereño", 1, 84, 85),
("Marino", "Ribereño", 2, 85, 85),
("Marino", "Ribereño", 3, 85, 85),
("Marino", "Ribereño", 4, 79, 93),

("Mujer de Río", "Ribereño", 1, 86, 88),
("Mujer de Río", "Ribereño", 2, 86, 87),
("Mujer de Río", "Ribereño", 3, 86, 88),
("Mujer de Río", "Ribereño", 6, 80, 83),

("Contrabandista", "Ribereño", 1, 63, 63),
("Contrabandista", "Ribereño", 2, 52, 52),
("Contrabandista", "Ribereño", 3, 49, 49),
("Contrabandista", "Ribereño", 4, 49, 51),
("Contrabandista", "Ribereño", 5, 59, 62),
("Contrabandista", "Ribereño", 6, 33, 37),

("Práctico", "Ribereño", 1, 89, 89),
("Práctico", "Ribereño", 2, 88, 88),
("Práctico", "Ribereño", 3, 89, 89),

("Raquero", "Ribereño", 1, 90, 90),
("Raquero", "Ribereño", 2, 89, 89),
("Raquero", "Ribereño", 5, 90, 90),

("Animador", "Rural", 1, 91, 92),
("Animador", "Rural", 2, 90, 91),
("Animador", "Rural", 3, 90, 92),
("Animador", "Rural", 4, 94, 96),
("Animador", "Rural", 5, 91, 95),
("Animador", "Rural", 6, 63, 67),

("Cazador de Brujas", "Rural", 1, 93, 93),

("Cazarrecompensas", "Rural", 1, 94, 94),
("Cazarrecompensas", "Rural", 2, 92, 95),
("Cazarrecompensas", "Rural", 3, 93, 93),
("Cazarrecompensas", "Rural", 4, 97, 99),
("Cazarrecompensas", "Rural", 5, 96, 97),
("Cazarrecompensas", "Rural", 6, 68, 68),

("Cochero", "Rural", 1, 95, 95),
("Cochero", "Rural", 2, 96, 96),
("Cochero", "Rural", 3, 94, 95),

("Flagelante", "Rural", 1, 96, 97),

("Guardia de caminos", "Rural", 1, 98, 98),
("Guardia de caminos", "Rural", 3, 96, 96),

("Mensajero", "Rural", 1, 99, 99),
("Mensajero", "Rural", 2, 97, 98),
("Mensajero", "Rural", 3, 97, 98),
("Mensajero", "Rural", 4, 100, 100),
("Mensajero", "Rural", 5, 98, 100),
("Mensajero", "Rural", 6, 69, 69),

("Vendedor Ambulante", "Rural", 1, 100, 100),
("Vendedor Ambulante", "Rural", 2, 99, 100),
("Vendedor Ambulante", "Rural", 3, 99, 100),
("Vendedor Ambulante", "Rural", 6, 70, 75),
