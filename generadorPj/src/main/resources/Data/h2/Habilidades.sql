CREATE TABLE habilidades (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL
);
INSERT INTO habilidades (nombre)
CREATE TABLE personaje_habilidad (
    personaje_id INT NOT NULL,
    habilidad_id INT NOT NULL,
    valor INT NOT NULL,
    PRIMARY KEY (personaje_id, habilidad_id),
    FOREIGN KEY (personaje_id) REFERENCES personajes(id),
    FOREIGN KEY (habilidad_id) REFERENCES habilidades(id)
);

