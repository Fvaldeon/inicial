CREATE DATABASE registro_homicidas;
USE registro_homicidas;

CREATE TABLE homicidas(
id serial primary key ,
apodo varchar(30) not null,
arma varchar(30) not null,
asesino_serie boolean not null default false,
annos_carcel int
);

CREATE TABLE victimas(
id serial primary key,
nombre varchar(30) not null,
genero_masculino boolean not null,
fecha_defuncion date not null,
causa_muerte varchar(100),
id_homicida int,
FOREIGN KEY (id_homicida) REFERENCES homicidas(id)
);

INSERT INTO victimas (nombre, genero_masculino, fecha_defuncion, causa_muerte) VALUES ('Fernando', 'true', '2019-01-21', 'acceso datos');
INSERT INTO victimas (nombre, genero_masculino, fecha_defuncion, causa_muerte) VALUES ('Maria', 'false', '2018-05-06', 'cuchillo');
INSERT INTO victimas (nombre, genero_masculino, fecha_defuncion, causa_muerte) VALUES ('Jorge', 'true', '2019-03-03', 'pistola');
INSERT INTO victimas (nombre, genero_masculino, fecha_defuncion, causa_muerte) VALUES ('Laura', 'false', '2017-03-07', 'atropello');

INSERT INTO homicidas (apodo, arma, asesino_serie, annos_carcel) VALUES ('el coleta', 'navaja', 'false', '5');
INSERT INTO homicidas (apodo, arma, asesino_serie, annos_carcel) VALUES ('paquito', 'fusil', 'true', '1');
INSERT INTO homicidas (apodo, arma, asesino_serie, annos_carcel) VALUES ('el Gorbe', 'machete', 'true', '0');
INSERT INTO homicidas (apodo, arma, asesino_serie, annos_carcel) VALUES ('el pistolas', 'pistola', 'false', '21');
