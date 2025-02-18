CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    edad INT,
    sexo CHAR(1)
);

INSERT INTO usuarios (nombre, apellido, edad, sexo) VALUES ('Juan', 'Perez', 15, 'M');

INSERT INTO usuarios (nombre, apellido, edad, sexo) VALUES ('Maria', 'Rojas', 30, 'F');

INSERT INTO usuarios (nombre, apellido, edad, sexo) VALUES ('Teresa', 'Pata Tieza', 22, 'F');
