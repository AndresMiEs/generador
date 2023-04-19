CREATE TABLE razas (
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    ha_base INT NOT NULL,
    hp_base INT NOT NULL,
    fuerza_base INT NOT NULL,
    resistencia_base INT NOT NULL,
    iniciativa_base INT NOT NULL,
    agilidad_base INT NOT NULL,
    destreza_base INT NOT NULL,
    inteligencia_base INT NOT NULL,
    voluntad_base INT NOT NULL,
    carisma_base INT NOT NULL
);

INSERT INTO razas (id, nombre, ha_base, hp_base, fuerza_base, resistencia_base, iniciativa_base, agilidad_base, destreza_base, inteligencia_base, voluntad_base, carisma_base)
VALUES 
(1, "Humano", 20, 20, 20, 20, 20, 20, 20, 20, 20, 20), 
(2, "Enano",30, 20, 20, 30, 20, 10, 30, 20, 40, 10), 
(3, "Mediano",10, 30, 10, 20, 20, 20, 30, 20, 30, 30), 
(4, "Alto Elfo",30, 30, 20, 20, 40, 30, 30, 30, 30, 20), 
(5, "Elfo Silvano",30, 30, 20, 20, 40, 30, 30, 30, 30, 20),
(6, "Gnomo",20, 10, 10, 15, 30, 30, 30, 30, 40, 15);