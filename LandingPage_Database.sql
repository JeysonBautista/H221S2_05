/* Crear base de datos dbRestaurante */
CREATE DATABASE db_landing_page;

/* Poner en uso la base de datos */
USE db_landing_page;

/* Crear tabla Pedido */
DROP TABLE IF EXISTS CONTACTO;
CREATE TABLE CONTACTO
(
     IDPED int AUTO_INCREMENT,
     USERPED varchar(80),
     EMAUSPED varchar(80),
     CELUSPED char(9),
     FOODPED varchar(80),
     MSGPED   varchar(250),
     PRIMARY KEY (IDPED)
);

/* Insertar registros */
INSERT INTO CONTACTO
(USERPED, EMAUSPED, CELUSPED, FOODPED, MSGPED)
VALUES
('José Ramírez', 'jose.ramirez@outlook.com', '974815236', 'Arroz con Pollo', 'Por favor enviar a la dirección Av. Miraflores 253, San Vicente de Cañete'),
('Ana Guerra Solano', 'ana.guerra@gmail.com', '981526321', 'Sopa Seca de Gallina', 'Necesito 4 platos');

/* Listar los registros de la tabla PEDIDO */
SELECT * FROM CONTACTO;

DROP TABLE IF EXISTS USUARIO;
CREATE TABLE USUARIO
(
     IDUSU int AUTO_INCREMENT,
     USERUSU varchar(80) NOT NULL,
     PASSUSE varchar(55) NOT NULL,
     PRIMARY KEY (IDUSU)
);

INSERT INTO USUARIO
(USERUSU, PASSUSE)
VALUES
('efrain.bautista@vallegrande.edu.pe', 'vg2022');

SELECT * FROM USUARIO;

