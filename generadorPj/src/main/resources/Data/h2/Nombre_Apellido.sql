CREATE TABLE nombres (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    raza_id INT NOT NULL,
    sexo CHAR(1) NOT NULL,
    FOREIGN KEY (raza_id) REFERENCES razas(id)
);

CREATE TABLE apellidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    apellido VARCHAR(50) NOT NULL,
    raza_id INT NOT NULL,
    FOREIGN KEY (raza_id) REFERENCES razas(id)
);

--Insert de Nombres de Hombre Humano
INSERT INTO nombres (nombre, raza_id, sexo)
VALUES ("Armin", 1, "H"),  ("Adolf", 1, "H"),  ("Adolphus", 1, "H"),  
("Albrecht", 1, "H"),  ("Alexander", 1, "H"),  ("Aldred", 1, "H"),  
("Alfred", 1, "H"),  ("Anders", 1, "H"),  ("Anton", 1, "H"),  
("Axel", 1, "H"),  ("Bernard", 1, "H"),  ("Bernd", 1, "H"),  
("Bert", 1, "H"),  ("Boris", 1, "H"),  ("Bruno", 1, "H"),  
("Chedwic", 1, "H"),  ("Christian", 1, "H"),  ("Christoph", 1, "H"),  
("Claus", 1, "H"),  ("Clemons", 1, "H"),  ("Conrad", 1, "H"),  
("Konrad", 1, "H"),  ("Dahlbert", 1, "H"),  ("Detlef", 1, "H"),  
("Dieter", 1, "H"),  ("Dirk", 1, "H"),  ("Erberhardt", 1, "H"),  
("Erik", 1, "H"),  ("Erich", 1, "H"),  ("Ernst", 1, "H"),  ("Erwin", 1, "H"),
("Erzbet", 1, "H"),  ("Félix", 1, "H"),  ("Franz", 1, "H"),  ("Friedrich", 1, "H"),
("Fredrick", 1, "H"),  ("Fritz", 1, "H"),  ("Georg", 1, "H"),  ("Gerd", 1, "H"),  
("Gotz", 1, "H"),  ("Gregor", 1, "H"),  ("Gunter", 1, "H"),  ("Gunther", 1, "H"),  
("Gustav", 1, "H"),  ("Hannes", 1, "H"),  ("Hans", 1, "H"),  ("Hanzi", 1, "H"),  
("Heiner", 1, "H"),  ("Heinrich", 1, "H"),  ("Heinz", 1, "H"),  ("Hieronymus", 1, "H"),  
("Helmut", 1, "H"),  ("Henri", 1, "H"),  ("Holger", 1, "H"),  ("Ingo", 1, "H"),  ("Jens", 1, "H"),  
("Joachim", 1, "H"),  ("Johann", 1, "H"),  ("Johannes", 1, "H"),  ("Jonas", 1, "H"),  ("Jorg", 1, "H"),  
("Josef", 1, "H"),  ("Jurgen", 1, "H"),  ("Kaster", 1, "H");

--Insert de Nombres de Mujer Humana
INSERT INTO nombres (nombre, raza_id, sexo)
VALUES ("Andrea", 1 , "M"), ("Angelika", 1 , "M"), ("Anita", 1 , "M"), ("Anna-Lise", 1 , "M"), ("Astrid", 1 , "M"), ("Brigid", 1 , "M"), ("Brigitte", 1 , "M"),
("Camilla", 1 , "M"), ("Celeste", 1 , "M"), ("Charlotte", 1 , "M"), ("Christa", 1 , "M"), ("Christiane", 1 , "M"), ("Clementine", 1 , "M"),
("Cordula", 1 , "M"), ("Daniele", 1 , "M"), ("Doris", 1 , "M"), ("Eva", 1 , "M"), ("Edda", 1 , "M"), ("Edith", 1 , "M"), ("Elga", 1 , "M"), ("Elisabeth", 1 , "M"),
("Elixabet", 1 , "M"), ("Ellen", 1 , "M"), ("Etti", 1 , "M"), ("Frances", 1 , "M"), ("Frieda", 1 , "M"), ("Gabrielle", 1 , "M"), ("Gaby", 1 , "M"), ("Gerd", 1 , "M");

--Insert de Nombres de Hombre Enano
INSERT INTO nombres (nombre, raza_id, sexo)
VALUES("Adrik", 2, "H"),("Gunnar", 2, "H"),("Bardin", 2, "H"),("Baern", 2, "H"),("Barendd", 2, "H"),("Brouor", 2, "H"),("Bruenor", 2, "H"),
    ("Dain", 2, "H"),("Darrak", 2, "H"),("Delg", 2, "H"),("Eberk", 2, "H"),("Einkil", 2, "H"),("Skeggi", 2, "H"),("Skaldor", 2, "H"),("Fargrim", 2, "H"),("Flint", 2, "H"),("Gardain", 2, "H"),
    ("Harbek", 2, "H"),("Kildrak", 2, "H"),("Morgran", 2, "H"),("Orsik", 2, "H"),("Oskar", 2, "H"),("Rangrim", 2, "H"),("Rurik", 2, "H"),("Taklinn", 2, "H"),
    ("Thoradin", 2, "H"),("Tordek", 2, "H"),("Traubon", 2, "H"),("Travok", 2, "H"),("Ulfgar", 2, "H"),("Veit", 2, "H"),("Vondal", 2, "H");

--Insert de Nombres de Mujer Enana
INSERT INTO nombres (nombre, raza_id, sexo)
VALUES ("Amber", 2, "M"), ("Artin", 2, "M"), ("Audhild", 2, "M"), ("Bardryn", 2, "M"), ("Dagnal", 2, "M"),
        ("Diesa", 2, "M"), ("Eldeth", 2, "M"), ("Falkrunn", 2, "M"), ("Finellen", 2, "M"),  ("Gunnloda", 2, "M"), ("Gurdis", 2, "M"), ("Helja", 2, "M"),
        ("Hlin", 2, "M"), ("Kathra", 2, "M"), ("Kristryd", 2, "M"), ("Hilde", 2, "M"), ("Liftrasa", 2, "M"), ("Mardred", 2, "M"), ("Riswynn", 2, "M"),
        ("Sannl", 2, "M"), ("Torbera", 2, "M"), ("Torgga", 2, "M"), ("Vistra", 2, "M"),("Alrika", 2, "M"),("Asabelle", 2, "M"),("Askima", 2, "M"),("Astrid", 2, "M"),("Berta", 2, "M"),
        ("Birgit", 2, "M"),("Boria", 2, "M"),("Bredna", 2, "M"),("Brodrika", 2, "M"),("Brondra", 2, "M"),("Derna", 2, "M"),("Dertain", 2, "M"),("Dorbi", 2, "M"),("Dunhilda", 2, "M"),
        ("Duree", 2, "M"),("Fenna", 2, "M"),("Freda", 2, "M"),("Friga", 2, "M");

--Insert de Nombres de Hombre Mediano
INSERT INTO nombres (nombre, raza_id, sexo)
VALUES ("Alton", 3, "H"), ("Ander", 3, "H"), ("Cade", 3, "H"), ("Corrin", 3, "H"), ("Eldon", 3, "H"),
        ("Errich", 3, "H"), ("Finnan", 3, "H"), ("Garret", 3, "H"), ("Lindal", 3, "H"),  ("Lyle", 3, "H"), ("Merrie", 3, "H"), ("Milo", 3, "H"),
        ("Osborn", 3, "H"), ("Perrin", 3, "H"), ("Reed", 3, "H"), ("Roscoe", 3, "H"), ("Wellby", 3, "H"), ("Ferdinand", 3, "H"), ("Sam", 3, "H"),
        ("Pipe", 3, "H");

--Insert de Nombres de Mujer Mediana
INSERT INTO nombres (nombre, raza_id, sexo)
VALUES ("Andry", 3, "M"), ("Bree", 3, "M"), ("Callie", 3, "M"), ("Cora", 3, "M"), ("Euphemia", 3, "M"),
        ("Jillian", 3, "M"), ("Kithri", 3, "M"), ("Lavinia", 3, "M"), ("Lidda", 3, "M"),  ("Meda", 3, "M"), ("Nedda", 3, "M"), ("Paela", 3, "M"),
        ("Potria", 3, "M"), ("Seraphina", 3, "M"), ("Shaena", 3, "M"), ("Trym", 3, "M"), ("Rosi", 3, "M"), ("Thea", 3, "M"), ("Vani", 3, "M"),
        ("Antoiella", 3, "M");

--Insert de Nombres de Hombre Alto Elfo
INSERT INTO nombres (nombre, raza_id, sexo)
VALUES ("Adran", 4, "H"), ("Aelar", 4, "H"), ("Aramil", 4, "H"), ("Arannis", 4, "H"), ("Aust", 4, "H"),
        ("Beiro", 4, "H"), ("Berrian", 4, "H"), ("Carrie", 4, "H"), ("Enialis", 4, "H"),  ("Erevan", 4, "H"), ("Galinndan", 4, "H"), ("Hadarai", 4, "H"),
        ("Heian", 4, "H"), ("Himo", 4, "H"), ("Immeral", 4, "H"), ("Ivellios", 4, "H"), ("Laucian", 4, "H"), ("Mindartis", 4, "H"), ("Pheren", 4, "H"),
        ("Tharivol", 4, "H");

--Insert de Nombres de Mujer Alto Elfo
INSERT INTO nombres (nombre, raza_id, sexo)
VALUES ("Adrie", 4, "M"), ("Althaea", 4, "M"), ("Anastriana", 4, "M"), ("Andraste", 4, "M"), ("Antinua", 4, "M"),
        ("Bethrynna", 4, "M"), ("Birel", 4, "M"), ("Caelyn", 4, "M"), ("Drusilia", 4, "M"),  ("Enna", 4, "M"), ("Felosial", 4, "M"), ("Ielenia", 4, "M"),
        ("Malenia", 4, "M"), ("Jenneleth", 4, "M"), ("Sariel", 4, "M"), ("Shava", 4, "M"), ("Valanthe", 4, "M"), ("Quillathe", 4, "M"), ("Sariel", 4, "M"),
        ("Silaqui", 4, "M");

--Insert de Nombres de Hombre Elfo Silvano
INSERT INTO nombres (nombre, raza_id, sexo)
VALUES ("Adran", 5, "H"), ("Aelar", 5, "H"), ("Aramil", 5, "H"), ("Arannis", 5, "H"), ("Aust", 5, "H"),
        ("Beiro", 5, "H"), ("Berrian", 5, "H"), ("Carrie", 5, "H"), ("Enialis", 5, "H"),  ("Erevan", 5, "H"), ("Galinndan", 5, "H"), ("Hadarai", 5, "H"),
        ("Heian", 5, "H"), ("Himo", 5, "H"), ("Immeral", 5, "H"), ("Ivellios", 5, "H"), ("Laucian", 5, "H"), ("Mindartis", 5, "H"), ("Pheren", 5, "H"),
        ("Tharivol", 5, "H");

--Insert de Nombres de Mujer Elfo Silvano
INSERT INTO nombres (nombre, raza_id, sexo)
VALUES ("Adrie", 5, "M"), ("Althaea", 5, "M"), ("Anastriana", 5, "M"), ("Andraste", 5, "M"), ("Antinua", 5, "M"),
        ("Bethrynna", 5, "M"), ("Birel", 5, "M"), ("Caelyn", 5, "M"), ("Drusilia", 5, "M"),  ("Enna", 5, "M"), ("Felosial", 5, "M"), ("Ielenia", 5, "M"),
        ("Malenia", 5, "M"), ("Jenneleth", 5, "M"), ("Sariel", 5, "M"), ("Shava", 5, "M"), ("Valanthe", 5, "M"), ("Quillathe", 5, "M"), ("Sariel", 5, "M"),
        ("Silaqui", 5, "M");

--Insert de Nombres de Hombre Gnomo
INSERT INTO nombres (nombre, raza_id, sexo)
VALUES ("Breward", 6, "H"), ("Daveth", 6, "H"), ("Gwinear", 6, "H"), ("Mawnan", 6, "H"), ("Meriasek", 6, "H"),
        ("Niveth", 6, "H"), ("Talan", 6, "H"), ("Arvlan", 6, "H"), ("Arlcallad", 6, "H"),  ("Aseaus", 6, "H"), ("Uranoch", 6, "H"), ("Cinskor", 6, "H"),
        ("Drean", 6, "H"), ("Lundre", 6, "H"), ("Iros", 6, "H");
--Insert de Nombres de Mujer Gnomo
INSERT INTO nombres (nombre, raza_id, sexo)
VALUES ("Elowen", 6, "M"), ("Ia", 6, "M"), ("Kerra", 6, "M"), ("Ladoca", 6, "M"), ("Metheven", 6, "M"),
        ("Morwen", 6, "M"), ("Steren", 6, "M"), ("Tryfena", 6, "M"), ("Arlli", 6, "M"),  ("Ardhe", 6, "M"), ("Arlis", 6, "M"), ("Mirow", 6, "M"),
        ("Varati", 6, "M"), ("Inoil", 6, "M"), ("Drethi", 6, "M");

--Insert de Apellidos Humanos

--Insert de Apellidos Enanos

--Insert de Apellidos Medianos

--Insert de Apellidos Altos Elfos

--Insert de Apellidos Elfos Silvanos

--Insert de Apellidos Gnomos
