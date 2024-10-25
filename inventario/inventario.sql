-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-09-2024 a las 18:03:49
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `idv` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `idprod` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_purchase`
--

CREATE TABLE `cart_purchase` (
  `idcpr` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `idprod` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcate` int(11) NOT NULL,
  `nocate` varchar(100) NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcate`, `nocate`, `state`, `fere`) VALUES
(11, 'Juguetes para niñass', '1', '2024-09-29 15:38:02'),
(12, 'Juguetes para niños', '1', '2023-07-11 05:58:50'),
(13, 'Juguetes didácticos para bebés', '1', '2023-07-11 06:00:06'),
(14, 'Ropas y prendas de vestir para Dama, Caballero, Niños y Niñas', '1', '2023-07-11 06:00:39'),
(15, 'Artículos para el hogar', '1', '2023-07-11 06:06:39'),
(16, 'Artículos de librería', '1', '2023-07-11 06:07:05'),
(17, 'Cuidados personales', '1', '2023-07-11 06:07:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idcli` int(11) NOT NULL,
  `tipd` varchar(25) NOT NULL,
  `nudoc` char(8) NOT NULL,
  `nocl` varchar(35) NOT NULL,
  `apcl` varchar(35) NOT NULL,
  `telfcl` char(9) NOT NULL,
  `state` char(1) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idcli`, `tipd`, `nudoc`, `nocl`, `apcl`, `telfcl`, `state`, `username`, `password`, `rol`, `fere`) VALUES
(5, 'dni', '72373252', 'Miguel', 'Gómez', '958251873', '1', '', '', '', '2023-07-11 07:14:25'),
(6, 'dni', '75192631', 'María', 'Suárez', '942512531', '1', '', '', '', '2023-07-11 07:15:10'),
(7, 'dni', '76234124', 'jorge', 'dominguez', '125431231', '1', '', '', '', '2024-09-26 13:40:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `idmar` int(11) NOT NULL,
  `nomarc` text NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`idmar`, `nomarc`, `state`, `fere`) VALUES
(3, '', '1', '2023-07-11 06:07:35'),
(4, 'Tailoy', '1', '2023-07-11 06:46:44'),
(5, 'Mattel', '1', '2023-07-11 06:52:45'),
(6, 'Hasbro', '1', '2023-07-11 06:58:29'),
(7, 'Harvest', '1', '2023-07-11 07:04:31'),
(8, 'queen', '1', '2023-07-11 07:09:36'),
(9, 'pinball xd', '1', '2024-09-26 13:39:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `idord` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nomcl` text NOT NULL,
  `method` varchar(50) NOT NULL,
  `total_products` text NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `placed_on` varchar(15) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `tipc` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`idord`, `user_id`, `nomcl`, `method`, `total_products`, `total_price`, `placed_on`, `payment_status`, `tipc`) VALUES
(5, 1, 'María Suárez', 'Contado', ', juego de sabanas y edredón ( 1 ), Medias para niños y niñas ( 2 )', 125.00, '11-Jul-2023', 'Aceptado', 'Boleta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_purchase`
--

CREATE TABLE `orders_purchase` (
  `idordpur` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `idprov` int(11) NOT NULL,
  `method` varchar(50) NOT NULL,
  `total_products` text NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `placed_on` varchar(15) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `tipc` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idprod` int(11) NOT NULL,
  `codpro` char(14) NOT NULL,
  `nomprd` text NOT NULL,
  `desprd` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` char(3) NOT NULL,
  `idmar` int(11) NOT NULL,
  `idcate` int(11) NOT NULL,
  `modelo` text NOT NULL,
  `peso` text NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idprod`, `codpro`, `nomprd`, `desprd`, `foto`, `precio`, `stock`, `idmar`, `idcate`, `modelo`, `peso`, `state`, `fere`) VALUES
(5, '00001', 'Muñeca barbie con vestido', 'Muñeca barbie con vestido.', '868271.jpg', 15.00, '14', 4, 11, 'Barbie Cutie Reveal', '44g', '1', '2024-09-26 13:45:15'),
(6, '00002', 'Muñeca barbie clásica', 'Muñeca barbie clásica.', '54597.jpg', 10.00, '5', 5, 11, 'Barbie clásica', '420g', '1', '2023-07-11 06:56:16'),
(7, '00003', 'Transformer colgante', 'Transformer colgante.', '931998.jpg', 20.00, '28', 6, 12, 'Transformer colgante', '200gr', '1', '2023-07-11 07:02:39'),
(8, '00004', 'Medias para niños y niñas', 'Medias para niños y niñas.', '276000.jpg', 2.50, '2', 7, 14, 'Medias de algodón', '3kg', '1', '2023-07-11 07:07:39'),
(9, '00005', 'juego de sabanas y edredón', 'juego de sabanas y edredón.', '985729.jpg', 120.00, '100', 8, 15, 'Sabanas y edredón', '4kg', '1', '2023-07-11 07:13:05'),
(10, '00006', 'carro a control remoto', 'es un carro a control remoto', '45306.jpg', 10.50, '100', 4, 12, 'Carro a control remoto', '44g', '1', '2024-09-26 13:47:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idprov` int(11) NOT NULL,
  `rucprv` char(11) NOT NULL,
  `nomprv` text NOT NULL,
  `corrprv` varchar(35) NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idprov`, `rucprv`, `nomprv`, `corrprv`, `state`, `fere`) VALUES
(5, '11943812520', 'Importaciones Marjorie S.A.C.', 'Mar241_jori@gmail.com', '1', '2023-07-11 07:17:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `correo` varchar(35) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `state` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `username`, `correo`, `password`, `rol`, `fere`, `state`) VALUES
(1, 'Administrador', 'administrador', 'administrador@gmail.com', '96e79218965eb72c92a549dd5a330112', '1', '2023-12-11 04:28:32', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idv`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idprod` (`idprod`);

--
-- Indices de la tabla `cart_purchase`
--
ALTER TABLE `cart_purchase`
  ADD PRIMARY KEY (`idcpr`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idprod` (`idprod`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcate`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcli`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`idmar`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idord`);

--
-- Indices de la tabla `orders_purchase`
--
ALTER TABLE `orders_purchase`
  ADD PRIMARY KEY (`idordpur`),
  ADD KEY `idprov` (`idprov`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idprod`),
  ADD KEY `idmar` (`idmar`),
  ADD KEY `idcate` (`idcate`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idprov`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `idv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cart_purchase`
--
ALTER TABLE `cart_purchase`
  MODIFY `idcpr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idcli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `idmar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `idord` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `orders_purchase`
--
ALTER TABLE `orders_purchase`
  MODIFY `idordpur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idprod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idprov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`idprod`) REFERENCES `productos` (`idprod`);

--
-- Filtros para la tabla `cart_purchase`
--
ALTER TABLE `cart_purchase`
  ADD CONSTRAINT `cart_purchase_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `cart_purchase_ibfk_2` FOREIGN KEY (`idprod`) REFERENCES `productos` (`idprod`);

--
-- Filtros para la tabla `orders_purchase`
--
ALTER TABLE `orders_purchase`
  ADD CONSTRAINT `orders_purchase_ibfk_1` FOREIGN KEY (`idprov`) REFERENCES `proveedores` (`idprov`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idmar`) REFERENCES `marca` (`idmar`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`idcate`) REFERENCES `categoria` (`idcate`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
