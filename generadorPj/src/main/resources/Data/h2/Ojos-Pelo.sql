CREATE TABLE ojos  (
id INT PRIMARY KEY NOT NULL,
color_ojos varchar(45),
raza_id INT,
FOREIGN KEY (raza_id) REFERENCES razas(id)
);

INSERT INTO ojos (id, color_ojos, raza_id)
VALUES (1, "Bicolor", 1), (2, "Verdes", 1), (3,"Azules Claros", 1), (4,"Azules", 1), (5,"Grises claros", 1), 
      (6,"Grises", 1), (7,"Castaños", 1), (8,"Avellana", 1), (9,"Castaños Oscuros", 1), (10, "Negros", 1),
      
      (11, "Carbón", 2), (12, "Plomo", 2), (13,"Acero", 2), (14,"Azul Oscuro", 2), (15,"Castaño Terroso", 2), 
      (16,"Castaño Oscuro", 2), (17,"Avellana", 2), (18,"Esmeralda", 2), (19,"Pardos", 2), (20, "Azabache", 2),
      
      (21, "Gris Claro", 3), (22, "Gris", 3), (23, "Azul Claro", 3), (24, "Azul", 3), (25, "Verde", 3), 
      (26, "Avellana", 3), (27, "Castaño", 3), (28,"Cobre", 3), (29, "Castaño Oscuro", 3), (30, "Verde Oscuro", 3),
      
      (31, "Azabache", 4), (32, "Amatista", 4), (33, "Aguamarina", 4), (34, "Zafiro", 4), (35, "Turquesa", 4), 
      (36, "Esmeralda", 4), (37, "Ámbar", 4), (38, "Cobre", 4), (39, "Citrino", 4), (40, "Oro", 4),
      
      (41, "Marfil", 5), (42, "Carbón", 5), (43, "Verde hiedra", 5), (44, "Verde Musgo", 5), (45, "Castaño", 5),
      (46, "Ámbar", 5), (47, "Castaño Oscuro", 5), (48, "Tostado", 5), (49, "Castaño Arenoso", 5), (50, "Violeta", 5),
      
      (51, "Azul claro", 6), (52, "Azul", 6), (53, "Azul Oscuro", 6), (54, "Azul Turquesa", 6), 
      (55, "Verde Claro", 6), (56, "Avellana", 6), (57, "Miel", 6), (58, "Violeta", 6), (59, "Plateado", 6);

CREATE TABLE pelo  (
id INT PRIMARY KEY NOT NULL,
color_pelo varchar(45),
raza_id INT,
FOREIGN KEY (raza_id) REFERENCES razas(id)
);

INSERT INTO pelo (id, color_pelo, raza_id)
VALUES (1, "Rubio Blanquecino", 1), (2, "Rubio Dorado", 1), (3,"Rubio", 1), (4,"Castaño Claro", 1), (5,"Castaño Oscuro", 1), 
      (6,"Rojo", 1), (7,"Negro", 1), (8,"Caoba", 1), (9,"Gris", 1), (10, "Rubio Rojizo", 1),
      
      (11, "Blanco", 2), (12, "Gris", 2), (13,"Rubio Claro", 2), (14,"Dorado", 2), (15,"Castaño", 2), 
      (16,"Castaño Oscuro", 2), (17,"Castaño Rojizo", 2), (18,"Bronce", 2), (19,"Cobre", 2), (20, "Negro", 2),
      
      (21, "Gris", 3), (22, "Rubio Intenso", 3), (23, "Bermejo", 3), (24, "Miel", 3), (25, "Castaño", 3), 
      (26, "Rojo", 3), (27, "Mostaza", 3), (28,"Marfil", 3), (29, "Chocolate", 3), (30, "Regaliz", 3),
      
      (31, "Plata", 4), (32, "Blanco", 4), (33, "Rubio Claro", 4), (34, "Rubio", 4), (35, "Rubio Cobrizo", 4), 
      (36, "Rubio Rojizo", 4), (37, "Caoba", 4), (38, "Negro", 4), (39, "Rojo Claro", 4), (40, "Rubio Blanquecino", 4),
      
      (41, "Rubio Ceniza", 5), (42, "Oro Rosáceo", 5), (43, "Miel", 5), (44, "Rubio Verdoso", 5), (45, "Castaño", 5),
      (46, "Rojo", 5), (47, "Castaño Oscuro", 5), (48, "Caoba", 5), (49, "Ébano", 5), (50, "Negro Azulado", 5),
      
      (51, "Negro", 6), (52, "Castaño Oscuro", 6), (53, "Caoba", 6), (54, "Castaño", 6), 
      (55, "Castaño Claro", 6), (56, "Bermejo", 6), (57, "Rubio Rojizo", 6), (58, "Rubio Dorado", 6), (59, "Rubio Blanquecino", 6), (60, "Blanco", 6);