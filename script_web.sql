DROP DATABASE IF EXISTS `tienda_online`; 
CREATE DATABASE `tienda_online` CHARACTER SET utf8mb4;
USE `tienda_online`;

CREATE TABLE `roles` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `rol` varchar(255)
);

CREATE TABLE `usuarios` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_rol` int,
  `email` varchar(255),
  `clave` varchar(255),
  `nombre` varchar(255),
  `apellido1` varchar(255),
  `apellido2` varchar(255),
  `direccion` varchar(255),
  `localidad` varchar(255),
  `provincia` varchar(255),
  `telefono` varchar(255),
  `dni` varchar(255)
);

ALTER TABLE `usuarios` ADD FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id`);


INSERT INTO `roles` (`id`, `rol`) VALUES
(1, 'Admin'),
(2, 'Empleado'),
(3, 'Cliente');

INSERT INTO `usuarios` (`id_rol`, `email`, `clave`, `nombre`, `apellido1`, `apellido2`, `direccion`, `localidad`, `provincia`, `telefono`, `dni`) VALUES
(1, 'admin@tiendaonline.es', '1234', 'Admin', '', '', '', 'Zamora', 'Zamora', '', '');