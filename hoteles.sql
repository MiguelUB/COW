-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2023 a las 01:58:46
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hoteles`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoteles`
--

CREATE TABLE `hoteles` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `ciudad` varchar(80) DEFAULT NULL,
  `pais` varchar(80) DEFAULT NULL,
  `zona` varchar(80) DEFAULT NULL,
  `piscina` int(11) DEFAULT 0,
  `img` varchar(2083) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `hoteles`
--

INSERT INTO `hoteles` (`id`, `nombre`, `ciudad`, `pais`, `zona`, `piscina`, `img`, `description`) VALUES
(10001, 'Hotel Roc Doblemar', 'La Manga', 'España', 'Playa', 1, 'https://www.roc-hotels.com/uploads/galeriahoteles/DSC-4746x.jpg', 'Localizado en la parte central de La Manga, el hotel Roc Doblemar destaca por su privilegiada ubicación junto a la arena de la playa del mar Menor. Sus habitaciones están equipadas con calefacción, aire acondicionado, televisor con canales por satélite y terraza amueblada con vistas al mar, e incluyen caja fuerte de alquiler y baño privado con ducha, secador de cabello y artículos de aseo de cortesía. El complejo está adaptado para personas de movilidad reducida y dispone de piscina al aire libre con jardines y solárium, recepción 24 horas y parking exterior vigilado por un suplemento adicional. Además, se ofrece wifi gratuito, servicio de lavandería y programa de entretenimiento diurno y nocturno para todas las edades. El Roc Doblemar alberga un bar, y también un restaurante de tipo buffet especializado en cocina mediterránea y platos internacionales. El faro del Estacio queda a unos diez minutos en automóvil, lo mismo que el puerto deportivo Tomás Maestre.'),
(10002, 'Hotel Nelva', 'Múrcia', 'España', 'Interior', 1, 'https://t-ec.bstatic.com/images/hotel/max1024x768/800/8006648.jpg', 'Hotel Murcia Nelva cuenta con hasta 12 salas, con diferentes capacidades, para poder celebrar toda clase de actos o celebraciones.'),
(10003, 'Hotel Park Puigcerdà & Spa', 'Cerdanya', 'España', 'Montaña', 1, 'http://www.hotelparkpuigcerda.com/slideshow/hotel_estiu/set001.jpg', 'El Puigcerda Park Hotel es un acogedor alojamiento situado a las afueras de Puigcerda que queda a tan solo 5 minutos de Francia y tiene a 17 kilómetros dos estaciones de esquí, por lo que ofrece servicios para esquiadores como el de guardaesquís y el de alquiler de material para la nieve. Además, el establecimiento cuenta con una refrescante piscina exterior y disfruta durante todo el año de un centro de bienestar con gimnasio, baño de vapor, sauna y bañera de hidromasaje. Las habitaciones son sencillas y acogedoras, con un diseño clásico que incluye suelos de madera. Muchas de ellas están disponibles con balcón y además facilitan caja fuerte, mini bar, teléfono, aire acondicionado y baño con secador, bañera y amenities. Se pueden degustar platos típicos de la región en el restaurante y también hay un bar perfecto para tomar una copa.'),
(10004, 'Hotel Cabana', 'Benidorm', 'España', 'Playa', 1, 'https://s-ec.bstatic.com/images/hotel/max1280x900/101/101430248.jpg', 'El Hotel Cabana es un completo alojamiento de playa que se encuentra ubicado junto a una animada zona de la costa de Benidorm. Este hospedaje pone a disposición de sus huéspedes 249 amplias, confortables y luminosas habitaciones con una sencilla y acogedora decoración que cuentan con televisión, aire acondicionado, escritorio, caja fuerte y cuarto de baño con bañera. Además, algunas de las estancias tienen terraza amueblada.\n\nEl restaurante del Hotel Cabana prepara un completo y variado buffet internacional para desayunos, almuerzos y cenas con platos dietéticos y especiales. Igualmente, en la cafetería del alojamiento se pueden degustar infinidad de bebidas y aperitivos.\n\nEl Hotel Cabana dispone de una gran piscina al aire libre con zona infantil, solárium con hamacas y sombrillas y bar. Además, los huéspedes pueden disfrutar de salas de televisión y de juegos, con billar y ping pong, zona infantil de juegos exterior y un extenso programa de actividades durante los meses de verano.'),
(10005, 'Nestor Hotel', 'Ayia Napa', 'Chipre', 'Playa', 1, 'https://q-ec.bstatic.com/images/hotel/max1024x768/147/147997361.jpg', 'El establecimiento Nestor Hotel se encuentra en el centro de Ayia Napa, a solo 300 metros de la playa de Ayia Napa, y ofrece piscina cubierta y al aire libre, bañera de hidromasaje, spa y sauna. Se proporciona aparcamiento privado gratuito. Todas las habitaciones incluyen balcón. En los alrededores hay varios bares y restaurantes.\nLas habitaciones del Hotel Nestor disponen de balcón con vistas panorámicas al mar Mediterráneo o al interior, muebles sencillos, aire acondicionado y minibar.\nEl alojamiento Nestor Hotel dispone de recepción 24 horas, pista de tenis y gimnasio.\nEl restaurante Minos sirve platos locales e internacionales, y el bar Dionysus ofrece bebidas y aperitivos.\nEl establecimiento Nestor Hotel está a 1 minuto a pie del “Thalassa”, el Museo Municipal del Mar.'),
(10006, 'Hotel Perrakis', 'Andros Island', 'Grécia', 'Playa', 1, 'https://hotelperrakis.com/wp-content/uploads/slider-back-hotel.jpg', 'En el barrio de ocio, Hotel Perrakis es una buena opción de alojamiento en Andros. La piscina de temporada es ideal para darse un chapuzón antes de pasar por Cyclades Restaurant, que se especializa en cocina mediterránea y sirve desayunos, almuerzos y cenas. Entre las instalaciones destacan también un bar en la playa, un snack bar o delicatessen y una terraza. La amabilidad del personal y la proximidad de la playa son dos aspectos que destacan otros viajeros.'),
(10007, 'Hotel Cezar', 'Banja Luka', 'Bosnia y Herzegovina', 'Interior', 0, 'https://t-ec.bstatic.com/images/hotel/max1280x900/185/185533772.jpg', 'Ven a disfrutar de un espacio con más de cien años de historia y tradición, de un jardín con piscina, de unas horas de sauna y de una exquisita cocina mediterránea.\n\nA pocos metros de la playa de Vilanova i la Geltrú, a 30 minutos de Barcelona y Tarragona, en el corazón de la Costa de Barcelona, entre el Parque Natural del Garraf y el de Foix, el Hotel Cèsar se encuentra dentro de una casa de indianos que aún conserva su estructura y su jardín.'),
(10008, 'Hotel Angelica', 'Limenas', 'Grécia', 'Playa', 0, 'https://q-ec.bstatic.com/images/hotel/max1024x768/797/79726354.jpg', 'El Hotel Angelica \" Stazione Santa Maria Novella \" ofrece alojamiento de 2 estrellas en Florencia, a menos de 1 km del palacio Strozzi y a 7 minutos a pie del centro de convenciones Fortezza da Basso. Este hotel de 2 estrellas cuenta con salón compartido y habitaciones con aire acondicionado, WiFi gratuita y baño privado. El establecimiento se encuentra a 500 metros de Santa Maria Novella y a 700 metros del centro de la ciudad.\nTodas las habitaciones del hotel están equipadas con zona de estar y TV de pantalla plana con canales por cable. Todas las habitaciones tienen escritorio.\n\nEl Hotel Angelica \" Stazione Santa Maria Novella \" sirve un desayuno buffet o italiano.\n\nEn las inmediaciones hay varios lugares de interés, como la iglesia de San Marcos de Florencia, la Galería de la Academia y la Piazza del Duomo di Firenze. Por un suplemento, el Hotel Angelica \" Stazione Santa Maria Novella\" ofrece un servicio de enlace con el aeropuerto de Florencia, el más cercano, ubicado a 8 km.\n\nNuestros clientes dicen que esta parte de Florencia es su favorita, según los comentarios independientes.\n\nA las parejas les encanta la ubicación — Le han puesto un 9,4 para viajes de dos personas.'),
(10009, 'Hotel Alanda', 'Marbella', 'España', 'Playa', 1, 'https://www.alandahotelmarbella.com/wp-content/blogs.dir/1672/files/1-home/Pool-1-Final.jpg.pagespeed.ce.8nUFSglAN6.jpg', 'Un total de 199 habitaciones (estándar, superiores, suites y ático) componen la oferta del hotel Alanda, en Marbella. En plena Milla de Oro de esta ciudad malagueña, se puede disfrutar de habitaciones decoradas con un estilo contemporáneo. Todas están insonorizadas y ofrecen vistas al mar Mediterráneo o a la Sierra Blanca.\n\nEl establecimiento, de cuatro estrellas, dispone en sus instalaciones de spa con sauna y baños de vapor, centro fitness, salas de reuniones y banquetes totalmente equipadas, zona de jardines, terraza y un bar junto a la piscina exterior. También hay restaurante de cocina internacional, caracterizado por no ser servir en su carta derivados del cerdo o bebidas con alcohol.'),
(10010, 'Marconfort Griego Hotel', 'Torremolinos', 'España', 'Playa', 1, 'https://www.marconfort.com/sites/default/files/styles/poster_image/public/images/marconfort-griego-hotel.jpg?itok=5yV8MoHH', 'Marconfort Griego Hotel es un hotel todo incluido en Torremolinos cercano a la famosa playa del Bajondillo, en la maravillosa Costa del Sol. Se ha reformado recientemente mejorando sus instalaciones que ahora incluyen una piscina exterior y varios restaurantes y bares para el gusto de todos. El hotel es perfecto para parejas y familias que buscan un hotel donde disfrutar de unas merecidas vacaciones en todo incluido en Málaga.'),
(10011, 'Hotel H10 Tindaya', 'Fuerteventura', 'España', 'Playa', 1, 'https://imgcy.trivago.com/c_lfill,d_dummy.jpeg,f_auto,h_450,q_auto:eco,w_450/itemimages/15/96/15968_v6.jpeg', 'Emplazado en Costa Calma y con acceso directo a la espectacular playa de arena blanca de Sotavento, al sur de la isla de Fuerteventura, el H10 Tindaya destaca por sus amplias piscinas, exuberantes jardines y espectaculares vistas al mar desde sus instalaciones. Ofrece una completa oferta gastronómica que incluye el Restaurante a la carta Route 66 y la cafetería Mike’s Coffee, además de otros servicios como el Despacio Thalasso Centre, el barco pirata Daisy Adventure y el Splash Park.'),
(10012, 'H10 Lanzarote Princess', 'Playa Blanca', 'España', 'Playa', 1, 'https://imgcy.trivago.com/c_lfill,d_dummy.jpeg,f_auto,h_450,q_auto:eco,w_450/itemimages/72/04/7204_v16.jpeg', 'Situado en el pueblo de pescadores de Playa Blanca, el H10 Lanzarote Princess cuenta con un interiorismo actual con toques vintage. Destaca su completa oferta gastronómica con dos restaurantes internacionales a la carta. Además, cuenta con un Despacio Beauty Centre, la zona infantil Daisy Adventure con barco pirata y atracciones de agua y un programa de animación para toda la familia.'),
(10013, 'Eurostars León', 'León', 'España', 'Interior', 0, 'https://imgcy.trivago.com/c_lfill,d_dummy.jpeg,f_auto,h_450,q_auto:eco,w_450/itemimages/80/90/80900_v15.jpeg', 'El Hotel Eurostars León es un moderno establecimiento de cuatro estrellas situado junto al casco antiguo de León, a pocos minutos de las estaciones de autobús y ferrocarril y bien orientado a las principales salidas de la ciudad. Cuenta con habitaciones pensadas para parejas y familias en las que estas encontrarán una larga lista de comodidades como calefacción y aire acondicionado, conexión wifi, minibar, televisor y teléfono. El hotel también cuenta con estacionamiento privado, bar cafetería, servicio de masajes y salones equipados para celebrar eventos. Queda a 15 minutos de la Catedral y a once minutos en coche del Museo de Arte Contemporáneo de Castilla y León (MUSAC).'),
(10014, 'Hotel NH Amistad', 'Múrcia', 'España', 'Playa', 1, 'https://imgcy.trivago.com/c_lfill,d_dummy.jpeg,f_auto,h_450,q_auto:eco,w_450/itemimages/40/71/40716_v6.jpeg', 'Desde que entras por la puerta del hotel NH Collection Amistad Córdoba, ya estás rodeado de historia. Los patios tradicionales, arcos y carpintería de estas dos casas nobles palaciegas de los siglos XVII y XVIII se han restaurado para que luzcan con el mismo esplendor de antaño, y además se han incorporado algunos detalles modernos muy estudiados. Está enclavado en pleno centro histórico de Córdoba, a cinco minutos andando de las mejores tiendas, de los lugares turísticos y del Palacio de Congresos.'),
(10015, 'Fuerte Conil-Costa Luz', 'Conil de la Frontera', 'España', 'Playa', 1, 'https://imgcy.trivago.com/c_lfill,d_dummy.jpeg,f_auto,h_450,q_auto:eco,w_450/itemimages/81/78/81787_v5.jpeg', '\nEste hotel en Conil está ubicado justo en frente de la extensa playa de La Fontanilla, considerada como una de las mejores de España, y ofrece las mejores condiciones para pasar unas inolvidables vacaciones en la Costa de la Luz.\n\nEn los alrededores se encuentran otras playas de aguas cristalinas, como la de Castilnovo, una de las pocas playas vírgenes ubicadas cerca de una población; o la playa de Los Bateles, la más cercana al núcleo urbano de Conil.'),
(10016, 'Urban Sea Atocha', 'Madrid', 'España', 'Interior', 0, 'https://imgcy.trivago.com/c_lfill,d_dummy.jpeg,f_auto,h_450,q_auto:eco,w_450/itemimages/12/73/1273691_v3.jpeg', '¡Bienvenido a URBANSEA Atocha 113 en Madrid, un hotel urbano y moderno en el centro de Madrid!\n\nPerfecto para todos aquellos que buscan alojarse a pocos minutos de los puntos de interés en Madrid, situado a sólo 300 metros de la estación de Atocha.\n\nActualmente, contamos con 36 habitaciones equipadas para ofrecerte el máximo confort. Todas incluyen una cama de matrimonio o individual, wifi gratuito, televisión, aire acondicionado y baño privado con secador de pelo.\n\nDisponemos además de una pequeña terraza en la azotea del hotel para que te relajes contemplando las espectaculares vistas que ofrece la ciudad de Madrid.\n\nEn los alrededores del hotel encontrarás una gran variedad de tiendas, bares, cafeterías y restaurantes que harán que disfrutes de la auténtica gastronomía española. Desde los típicos y madrileños chocolates con churros hasta exquisitas tapas junto a familiares o amigos. También podrás cenar en alguno de los excelentes restaurantes que ofrece Madrid. ¡Quedarás encantado!\n\nNuestro hotel se encuentra a escasos metros del famoso triángulo del arte de Madrid. El URBANSEA Atocha 113 se encuentra a tan solo 10 minutos de museos como el Thyssen-Bornemisza, el Prado o el Reina Sofía. Además, se encuentra muy cerca también de los lugares conocidos y monumentos que ofrece la capital. Junto al hotel tienes el Parque del Retiro o el fabuloso Jardín Botánico en los que podrás pasear y desconectar del ritmo frenético de esta ciudad.\n\nTe informamos que la hora de entrada al hotel es a partir de las 15h y que deberás abandonar tu habitación a las 12h.\n\nTambién, disponemos de habitación adaptada a personas con movilidad reducida (sujeta a disponibilidad).\n\n¿Te hemos convencido?\n\nPermítenos ayudarte a organizar tus vacaciones y disfruta de una confortable estancia en nuestro URBANSEA Atocha 113 en Madrid.\n\n¡Nos encantaría que formaras parte de esta gran familia!'),
(10017, 'Hotel Playafels', 'Casteldefels', 'España', 'Playa', 1, 'https://imgcy.trivago.com/c_lfill,d_dummy.jpeg,f_auto,h_450,q_auto:eco,w_450/itemimages/11/06/110638_v3.jpeg', 'El Hotel Playafels, de 4 estrellas, ubicado en primera línea de la playa de Castelldefels. El hotel ha sido completamente renovado en 2020.\n\nEl Hotel Playafels cuenta con 5 tipos de habitaciones, 48 en total, decoradas de estilo urbana y equipadas todas ellas con Wifi, baño, cafetera, tetera, caja fuerte y minibar.\n\nAdemás, ofrece la posibilidad de celebrar reuniones de empresas, bodas y celebraciones. Cuenta con salas de reuniones equipadas con medios audiovisuales y de sonido y mobiliario especial para viajeros business.\n\nLa piscina con acceso directo a la playa lo convierte en un lugar idílico a tan solo 15 minutos en coche de Barcelona.\n\nEl Restaurante Embarcadero llega como un homenaje a ese embarcadero que en 1974  fue inaugurado en nuestra playa frente al Hotel Playafels para que manos curtidas de pescadores desembarcarán sus frescos pescados y marisco.'),
(10018, 'Meliá Sevilla', 'Sevilla', 'España', 'Playa', 1, 'https://imgcy.trivago.com/c_lfill,d_dummy.jpeg,f_auto,h_450,q_auto:eco,w_450/itemimages/80/88/80884_v10.jpeg', 'El Hotel Meliá Sevilla es un hotel completamente renovado, perfecto tanto para los viajes de negocio como para disfrutar del ocio en la ciudad del Guadalquivir. Cuenta con una oferta gastronómica extraordinaria, gracias a su desayuno de buffet internacional, reconocido como uno de los mejores de la ciudad. La impresionante piscina exterior completa el servicio de este alojamiento que incluye una opción de acceso exclusivo para sus clientes VIP al The Level Lounge, un espacio privado, privilegiado, con atención personalizada, recepción individualizada, desayuno exclusivo y salones especiales. Es, además, un magnífico lugar para celebrar congresos, convenciones y todo tipo de eventos de negocios, ya que cuenta con veinticuatro salones que pueden acoger cerca de dos mil quinientas personas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `id_hotel` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `hoteles`
--
ALTER TABLE `hoteles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
