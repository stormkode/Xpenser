CREATE DATABASE supreme;

USE supreme;

CREATE TABLE usuario (
id INT (5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(20) NOT NULL,
ap_paterno VARCHAR(20) NOT NULL,
ap_materno VARCHAR(20) NOT NULL,
password VARCHAR(20) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE producto (
id INT (1) NOT NULL AUTO_INCREMENT PRIMARY KEY,
nom_producto VARCHAR(15) NOT NULL,
precio_producto INT(2) NOT NULL,
cant_producto int(1) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE registro (
id_ticket int(2) NOT NULL AUTO_INCREMENT PRIMARY KEY,
UsuarioID_user INT(5) NOT NULL,
ProductoID_producto INT(1) NOT NULL,
CONSTRAINT `fk_registro_usuario`
		FOREIGN KEY (UsuarioID_user) REFERENCES usuario (id)
		ON DELETE CASCADE
		ON UPDATE RESTRICT,
CONSTRAINT `fk_registro_producto`
		FOREIGN KEY (ProductoID_producto) REFERENCES producto (id)
		ON DELETE CASCADE
		ON UPDATE RESTRICT

) ENGINE = InnoDB;

INSERT INTO usuario VALUES (20781,'Eduardo','Martínez','Vázquez','password');