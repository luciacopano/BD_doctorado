-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 07-12-2025 a las 11:53:26
-- Versión del servidor: 8.0.42-0ubuntu0.20.04.1
-- Versión de PHP: 8.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `BD_doctorado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `id` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `descripcion` text,
  `horas_minimas` int UNSIGNED NOT NULL,
  `horas_maximas` int UNSIGNED NOT NULL,
  `horas_estandar` int UNSIGNED NOT NULL,
  `req_documentacion` text,
  `tipo` varchar(20) NOT NULL,
  `id_estudiante` int NOT NULL
) ;

--
-- RELACIONES PARA LA TABLA `actividad`:
--   `id_estudiante`
--       `estudiante` -> `id`
--

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`id`, `nombre`, `activo`, `descripcion`, `horas_minimas`, `horas_maximas`, `horas_estandar`, `req_documentacion`, `tipo`, `id_estudiante`) VALUES
(1, 'Iniciación a los estudios de Doctorado', 1, 'Primer contacto con la investigación doctoral', 5, 10, 8, 'Informe inicial', 'Formativa', 1),
(2, 'Seminarios de metodologías de investigación', 1, 'Aprendizaje de métodos de investigación avanzados', 3, 6, 5, 'Asistencia a seminarios', 'Formativa', 1),
(3, 'Publicaciones', 1, 'Redacción de artículos científicos', 5, 15, 10, 'Borradores o artículos publicados', 'Investigación', 1),
(4, 'Participación activa en congresos internacionales y nacionales', 1, 'Presentación de resultados de investigación y networking', 10, 20, 15, 'Acta de participación', 'Investigación', 2),
(5, 'Cursos de formación especializada', 1, 'Cursos avanzados según el programa doctoral', 4, 8, 6, 'Certificado de asistencia', 'Formativa', 2),
(6, 'Jornadas anuales de doctorales en la Escuela de Doctorado', 1, 'Reuniones anuales con otros doctorandos', 2, 5, 3, 'Informe de asistencia', 'Formativa', 2),
(7, 'Búsqueda, gestión, comunicación y difusión de la información', 1, 'Aprendizaje de técnicas de documentación científica', 2, 6, 4, 'Resumen de búsquedas bibliográficas', 'Investigación', 3),
(8, 'Seminarios de metodologías de investigación', 1, 'Aprendizaje de métodos de investigación avanzados', 3, 6, 5, 'Asistencia a seminarios', 'Formativa', 3),
(9, 'Curso de deontología profesional', 1, 'Formación en ética profesional y normas de investigación', 2, 4, 3, 'Certificado de asistencia', 'Formativa', 3),
(10, 'Jornadas anuales de doctorales en la Escuela de Doctorado', 1, 'Reuniones anuales con otros doctorandos', 2, 5, 3, 'Informe de asistencia', 'Formativa', 4),
(11, 'Asistencia a conferencias, seminarios y reuniones especializadas', 1, 'Actualización en el área de investigación', 3, 6, 4, 'Acta de asistencia', 'Formativa', 4),
(12, 'Participación activa en congresos internacionales y nacionales', 1, 'Presentación de resultados de investigación y networking', 10, 20, 15, 'Acta de participación', 'Investigación', 4),
(13, 'Curso de deontología profesional', 1, 'Formación en ética profesional y normas de investigación', 2, 4, 3, 'Certificado de asistencia', 'Formativa', 5),
(14, 'Publicaciones', 1, 'Redacción de artículos científicos', 5, 15, 10, 'Borradores o artículos publicados', 'Investigación', 5),
(15, 'Seminarios de metodologías de investigación', 1, 'Aprendizaje de métodos de investigación avanzados', 3, 6, 5, 'Asistencia a seminarios', 'Formativa', 5),
(16, 'Iniciación a los estudios de Doctorado', 1, 'Primer contacto con la investigación doctoral', 5, 10, 8, 'Informe inicial', 'Formativa', 6),
(17, 'Participación activa en congresos internacionales y nacionales', 1, 'Presentación de resultados de investigación y networking', 10, 20, 15, 'Acta de participación', 'Investigación', 6),
(18, 'Jornadas anuales de doctorales en la Escuela de Doctorado', 1, 'Reuniones anuales con otros doctorandos', 2, 5, 3, 'Informe de asistencia', 'Formativa', 6),
(19, 'Seminarios de metodologías de investigación', 1, 'Aprendizaje de métodos de investigación avanzados', 3, 6, 5, 'Asistencia a seminarios', 'Formativa', 7),
(20, 'Búsqueda, gestión, comunicación y difusión de la información', 1, 'Aprendizaje de técnicas de documentación científica', 2, 6, 4, 'Resumen de búsquedas bibliográficas', 'Investigación', 7),
(21, 'Curso de deontología profesional', 1, 'Formación en ética profesional y normas de investigación', 2, 4, 3, 'Certificado de asistencia', 'Formativa', 7),
(22, 'Cursos de formación especializada', 1, 'Cursos avanzados según el programa doctoral', 4, 8, 6, 'Certificado de asistencia', 'Formativa', 8),
(23, 'Jornadas anuales de doctorales en la Escuela de Doctorado', 1, 'Reuniones anuales con otros doctorandos', 2, 5, 3, 'Informe de asistencia', 'Formativa', 8),
(24, 'Participación activa en congresos internacionales y nacionales', 1, 'Presentación de resultados de investigación y networking', 10, 20, 15, 'Acta de participación', 'Investigación', 8),
(25, 'Iniciación a los estudios de Doctorado', 1, 'Primer contacto con la investigación doctoral', 5, 10, 8, 'Informe inicial', 'Formativa', 9),
(26, 'Publicaciones', 1, 'Redacción de artículos científicos', 5, 15, 10, 'Borradores o artículos publicados', 'Investigación', 9),
(27, 'Asistencia a conferencias, seminarios y reuniones especializadas', 1, 'Actualización en el área de investigación', 3, 6, 4, 'Acta de asistencia', 'Formativa', 9),
(28, 'Seminarios de metodologías de investigación', 1, 'Aprendizaje de métodos de investigación avanzados', 3, 6, 5, 'Asistencia a seminarios', 'Formativa', 10),
(29, 'Participación activa en congresos internacionales y nacionales', 1, 'Presentación de resultados de investigación y networking', 10, 20, 15, 'Acta de participación', 'Investigación', 10),
(30, 'Curso de deontología profesional', 1, 'Formación en ética profesional y normas de investigación', 2, 4, 3, 'Certificado de asistencia', 'Formativa', 10),
(31, 'Jornadas anuales de doctorales en la Escuela de Doctorado', 1, 'Reuniones anuales con otros doctorandos', 2, 5, 3, 'Informe de asistencia', 'Formativa', 11),
(32, 'Búsqueda, gestión, comunicación y difusión de la información', 1, 'Aprendizaje de técnicas de documentación científica', 2, 6, 4, 'Resumen de búsquedas bibliográficas', 'Investigación', 11),
(33, 'Cursos de formación especializada', 1, 'Cursos avanzados según el programa doctoral', 4, 8, 6, 'Certificado de asistencia', 'Formativa', 11),
(34, 'Iniciación a los estudios de Doctorado', 1, 'Primer contacto con la investigación doctoral', 5, 10, 8, 'Informe inicial', 'Formativa', 12),
(35, 'Participación activa en congresos internacionales y nacionales', 1, 'Presentación de resultados de investigación y networking', 10, 20, 15, 'Acta de participación', 'Investigación', 12),
(36, 'Seminarios de metodologías de investigación', 1, 'Aprendizaje de métodos de investigación avanzados', 3, 6, 5, 'Asistencia a seminarios', 'Formativa', 12),
(37, 'Asistencia a conferencias, seminarios y reuniones especializadas', 1, 'Actualización en el área de investigación', 3, 6, 4, 'Acta de asistencia', 'Formativa', 13),
(38, 'Publicaciones', 1, 'Redacción de artículos científicos', 5, 15, 10, 'Borradores o artículos publicados', 'Investigación', 13),
(39, 'Curso de deontología profesional', 1, 'Formación en ética profesional y normas de investigación', 2, 4, 3, 'Certificado de asistencia', 'Formativa', 13),
(40, 'Jornadas anuales de doctorales en la Escuela de Doctorado', 1, 'Reuniones anuales con otros doctorandos', 2, 5, 3, 'Informe de asistencia', 'Formativa', 14),
(41, 'Seminarios de metodologías de investigación', 1, 'Aprendizaje de métodos de investigación avanzados', 3, 6, 5, 'Asistencia a seminarios', 'Formativa', 14),
(42, 'Participación activa en congresos internacionales y nacionales', 1, 'Presentación de resultados de investigación y networking', 10, 20, 15, 'Acta de participación', 'Investigación', 14),
(43, 'Curso de deontología profesional', 1, 'Formación en ética profesional y normas de investigación', 2, 4, 3, 'Certificado de asistencia', 'Formativa', 15),
(44, 'Búsqueda, gestión, comunicación y difusión de la información', 1, 'Aprendizaje de técnicas de documentación científica', 2, 6, 4, 'Resumen de búsquedas bibliográficas', 'Investigación', 15),
(45, 'Cursos de formación especializada', 1, 'Cursos avanzados según el programa doctoral', 4, 8, 6, 'Certificado de asistencia', 'Formativa', 15),
(46, 'Iniciación a los estudios de Doctorado', 1, 'Primer contacto con la investigación doctoral', 5, 10, 8, 'Informe inicial', 'Formativa', 16),
(47, 'Participación activa en congresos internacionales y nacionales', 1, 'Presentación de resultados de investigación y networking', 10, 20, 15, 'Acta de participación', 'Investigación', 16),
(48, 'Seminarios de metodologías de investigación', 1, 'Aprendizaje de métodos de investigación avanzados', 3, 6, 5, 'Asistencia a seminarios', 'Formativa', 16),
(49, 'Jornadas anuales de doctorales en la Escuela de Doctorado', 1, 'Reuniones anuales con otros doctorandos', 2, 5, 3, 'Informe de asistencia', 'Formativa', 17),
(50, 'Publicaciones', 1, 'Redacción de artículos científicos', 5, 15, 10, 'Borradores o artículos publicados', 'Investigación', 17),
(51, 'Curso de deontología profesional', 1, 'Formación en ética profesional y normas de investigación', 2, 4, 3, 'Certificado de asistencia', 'Formativa', 17),
(52, 'Asistencia a conferencias, seminarios y reuniones especializadas', 1, 'Actualización en el área de investigación', 3, 6, 4, 'Acta de asistencia', 'Formativa', 18),
(53, 'Seminarios de metodologías de investigación', 1, 'Aprendizaje de métodos de investigación avanzados', 3, 6, 5, 'Asistencia a seminarios', 'Formativa', 18),
(54, 'Participación activa en congresos internacionales y nacionales', 1, 'Presentación de resultados de investigación y networking', 10, 20, 15, 'Acta de participación', 'Investigación', 18),
(55, 'Búsqueda, gestión, comunicación y difusión de la información', 1, 'Aprendizaje de técnicas de documentación científica', 2, 6, 4, 'Resumen de búsquedas bibliográficas', 'Investigación', 19),
(56, 'Curso de deontología profesional', 1, 'Formación en ética profesional y normas de investigación', 2, 4, 3, 'Certificado de asistencia', 'Formativa', 19),
(57, 'Cursos de formación especializada', 1, 'Cursos avanzados según el programa doctoral', 4, 8, 6, 'Certificado de asistencia', 'Formativa', 19),
(58, 'Iniciación a los estudios de Doctorado', 1, 'Primer contacto con la investigación doctoral', 5, 10, 8, 'Informe inicial', 'Formativa', 20),
(59, 'Participación activa en congresos internacionales y nacionales', 1, 'Presentación de resultados de investigación y networking', 10, 20, 15, 'Acta de participación', 'Investigación', 20),
(60, 'Jornadas anuales de doctorales en la Escuela de Doctorado', 1, 'Reuniones anuales con otros doctorandos', 2, 5, 3, 'Informe de asistencia', 'Formativa', 20),
(61, 'Seminarios de metodologías de investigación', 1, 'Aprendizaje de métodos de investigación avanzados', 3, 6, 5, 'Asistencia a seminarios', 'Formativa', 21),
(62, 'Publicaciones', 1, 'Redacción de artículos científicos', 5, 15, 10, 'Borradores o artículos publicados', 'Investigación', 21),
(63, 'Curso de deontología profesional', 1, 'Formación en ética profesional y normas de investigación', 2, 4, 3, 'Certificado de asistencia', 'Formativa', 21),
(64, 'Jornadas anuales de doctorales en la Escuela de Doctorado', 1, 'Reuniones anuales con otros doctorandos', 2, 5, 3, 'Informe de asistencia', 'Formativa', 22),
(65, 'Asistencia a conferencias, seminarios y reuniones especializadas', 1, 'Actualización en el área de investigación', 3, 6, 4, 'Acta de asistencia', 'Formativa', 22),
(66, 'Participación activa en congresos internacionales y nacionales', 1, 'Presentación de resultados de investigación y networking', 10, 20, 15, 'Acta de participación', 'Investigación', 22),
(67, 'Búsqueda, gestión, comunicación y difusión de la información', 1, 'Aprendizaje de técnicas de documentación científica', 2, 6, 4, 'Resumen de búsquedas bibliográficas', 'Investigación', 23),
(68, 'Seminarios de metodologías de investigación', 1, 'Aprendizaje de métodos de investigación avanzados', 3, 6, 5, 'Asistencia a seminarios', 'Formativa', 23),
(69, 'Curso de deontología profesional', 1, 'Formación en ética profesional y normas de investigación', 2, 4, 3, 'Certificado de asistencia', 'Formativa', 23),
(70, 'Iniciación a los estudios de Doctorado', 1, 'Primer contacto con la investigación doctoral', 5, 10, 8, 'Informe inicial', 'Formativa', 24),
(71, 'Participación activa en congresos internacionales y nacionales', 1, 'Presentación de resultados de investigación y networking', 10, 20, 15, 'Acta de participación', 'Investigación', 24),
(72, 'Seminarios de metodologías de investigación', 1, 'Aprendizaje de métodos de investigación avanzados', 3, 6, 5, 'Asistencia a seminarios', 'Formativa', 24),
(73, 'Jornadas anuales de doctorales en la Escuela de Doctorado', 1, 'Reuniones anuales con otros doctorandos', 2, 5, 3, 'Informe de asistencia', 'Formativa', 25),
(74, 'Publicaciones', 1, 'Redacción de artículos científicos', 5, 15, 10, 'Borradores o artículos publicados', 'Investigación', 25),
(75, 'Curso de deontología profesional', 1, 'Formación en ética profesional y normas de investigación', 2, 4, 3, 'Certificado de asistencia', 'Formativa', 25),
(76, 'Asistencia a conferencias, seminarios y reuniones especializadas', 1, 'Actualización en el área de investigación', 3, 6, 4, 'Acta de asistencia', 'Formativa', 26),
(77, 'Seminarios de metodologías de investigación', 1, 'Aprendizaje de métodos de investigación avanzados', 3, 6, 5, 'Asistencia a seminarios', 'Formativa', 26),
(78, 'Participación activa en congresos internacionales y nacionales', 1, 'Presentación de resultados de investigación y networking', 10, 20, 15, 'Acta de participación', 'Investigación', 26),
(79, 'Búsqueda, gestión, comunicación y difusión de la información', 1, 'Aprendizaje de técnicas de documentación científica', 2, 6, 4, 'Resumen de búsquedas bibliográficas', 'Investigación', 27),
(80, 'Curso de deontología profesional', 1, 'Formación en ética profesional y normas de investigación', 2, 4, 3, 'Certificado de asistencia', 'Formativa', 27),
(81, 'Cursos de formación especializada', 1, 'Cursos avanzados según el programa doctoral', 4, 8, 6, 'Certificado de asistencia', 'Formativa', 27),
(82, 'Iniciación a los estudios de Doctorado', 1, 'Primer contacto con la investigación doctoral', 5, 10, 8, 'Informe inicial', 'Formativa', 28),
(83, 'Participación activa en congresos internacionales y nacionales', 1, 'Presentación de resultados de investigación y networking', 10, 20, 15, 'Acta de participación', 'Investigación', 28),
(84, 'Seminarios de metodologías de investigación', 1, 'Aprendizaje de métodos de investigación avanzados', 3, 6, 5, 'Asistencia a seminarios', 'Formativa', 28),
(85, 'Jornadas anuales de doctorales en la Escuela de Doctorado', 1, 'Reuniones anuales con otros doctorandos', 2, 5, 3, 'Informe de asistencia', 'Formativa', 29),
(86, 'Publicaciones', 1, 'Redacción de artículos científicos', 5, 15, 10, 'Borradores o artículos publicados', 'Investigación', 29),
(87, 'Curso de deontología profesional', 1, 'Formación en ética profesional y normas de investigación', 2, 4, 3, 'Certificado de asistencia', 'Formativa', 29),
(88, 'Asistencia a conferencias, seminarios y reuniones especializadas', 1, 'Actualización en el área de investigación', 3, 6, 4, 'Acta de asistencia', 'Formativa', 30),
(89, 'Seminarios de metodologías de investigación', 1, 'Aprendizaje de métodos de investigación avanzados', 3, 6, 5, 'Asistencia a seminarios', 'Formativa', 30),
(90, 'Participación activa en congresos internacionales y nacionales', 1, 'Presentación de resultados de investigación y networking', 10, 20, 15, 'Acta de participación', 'Investigación', 30),
(91, 'Búsqueda, gestión, comunicación y difusión de la información', 1, 'Aprendizaje de técnicas de documentación científica', 2, 6, 4, 'Resumen de búsquedas bibliográficas', 'Investigación', 31),
(92, 'Curso de deontología profesional', 1, 'Formación en ética profesional y normas de investigación', 2, 4, 3, 'Certificado de asistencia', 'Formativa', 31),
(93, 'Cursos de formación especializada', 1, 'Cursos avanzados según el programa doctoral', 4, 8, 6, 'Certificado de asistencia', 'Formativa', 31),
(94, 'Iniciación a los estudios de Doctorado', 1, 'Primer contacto con la investigación doctoral', 5, 10, 8, 'Informe inicial', 'Formativa', 32),
(95, 'Participación activa en congresos internacionales y nacionales', 1, 'Presentación de resultados de investigación y networking', 10, 20, 15, 'Acta de participación', 'Investigación', 32),
(96, 'Seminarios de metodologías de investigación', 1, 'Aprendizaje de métodos de investigación avanzados', 3, 6, 5, 'Asistencia a seminarios', 'Formativa', 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `descripcion` text,
  `id_universidad` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- RELACIONES PARA LA TABLA `departamento`:
--   `id_universidad`
--       `universidad` -> `id`
--

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`, `activo`, `descripcion`, `id_universidad`) VALUES
(1, 'Departamento Filología', 1, 'Departamento de Filología de la Universidad de Florencia', 1),
(2, 'Departamento Biología', 1, 'Departamento de Biología de la Universidad de Florencia', 1),
(3, 'Departamento Organización de Empresas', 1, 'Departamento de Organización de Empresas de la Universidad de Florencia', 1),
(4, 'Departamento Derecho Público', 1, 'Departamento de Derecho Público de la Universidad de Pekín', 2),
(5, 'Departamento Física Aplicada', 1, 'Departamento de Física Aplicada de la Universidad de Pekín', 2),
(6, 'Departamento Psicología', 1, 'Departamento de Psicología de la Universidad de Pekín', 2),
(7, 'Departamento Didáctica', 1, 'Departamento de Didáctica de la Universidad Al-Aqsa', 3),
(8, 'Departamento Matemáticas', 1, 'Departamento de Matemáticas de la Universidad Al-Aqsa', 3),
(9, 'Departamento Química Orgánica', 1, 'Departamento de Química Orgánica de la Universidad Al-Aqsa', 3),
(10, 'Departamento Marketing y Comunicación', 1, 'Departamento de Marketing y Comunicación de la Victoria University', 4),
(11, 'Departamento Enfermería y Fisioterapia', 1, 'Departamento de Enfermería y Fisioterapia de la Victoria University', 4),
(12, 'Departamento Historia, Geografía y Filosofía', 1, 'Departamento de Historia, Geografía y Filosofía de la Victoria University', 4),
(13, 'Departamento Física de la Materia Condensada', 1, 'Departamento de Física de la Materia Condensada de la University of South Australia', 5),
(14, 'Departamento Derecho del Trabajo y de la Seguridad Social', 1, 'Departamento de Derecho del Trabajo y de la Seguridad Social de la University of South Australia', 5),
(15, 'Departamento Química Analítica', 1, 'Departamento de Química Analítica de la University of South Australia', 5),
(16, 'Departamento Anatomía y Embriología Humana', 1, 'Departamento de Anatomía y Embriología Humana de la Universidad de El Cairo', 6),
(17, 'Departamento Ingeniería Industrial e Ingeniería Civil', 1, 'Departamento de Ingeniería Industrial e Ingeniería Civil de la Universidad de El Cairo', 6),
(18, 'Departamento Historia Moderna, Contemporánea, de América y del Arte', 1, 'Departamento de Historia Moderna, Contemporánea, de América y del Arte de la Universidad de El Cairo', 6),
(19, 'Departamento Derecho Internacional Público, Penal y Procesal', 1, 'Departamento de Derecho Internacional Público, Penal y Procesal de la Universidad Keniata', 7),
(20, 'Departamento Ingeniería Eléctrica', 1, 'Departamento de Ingeniería Eléctrica de la Universidad Keniata', 7),
(21, 'Departamento Ciencias de la Tierra', 1, 'Departamento de Ciencias de la Tierra de la Universidad Keniata', 7),
(22, 'Departamento Didáctica EF, Plástica y Musical', 1, 'Departamento de Didáctica EF, Plástica y Musical de la Universidad del Bío-Bío', 8),
(23, 'Departamento Matemáticas', 1, 'Departamento de Matemáticas de la Universidad del Bío-Bío', 8),
(24, 'Departamento Física Aplicada', 1, 'Departamento de Física Aplicada de la Universidad del Bío-Bío', 8),
(25, 'Departamento Filología Francesa e Inglesa', 1, 'Departamento de Filología Francesa e Inglesa de la Universidad del Zulia', 9),
(26, 'Departamento Economía General', 1, 'Departamento de Economía General de la Universidad del Zulia', 9),
(27, 'Departamento Medicina y Cirugía', 1, 'Departamento de Medicina y Cirugía de la Universidad del Zulia', 9),
(28, 'Departamento Ciencias y Técnicas de la Navegación y Construcciones Navales', 1, 'Departamento de Ciencias y Técnicas de la Navegación y Construcciones Navales de la Universidad de Guadalajara', 10),
(29, 'Departamento Filología Clásica', 1, 'Departamento de Filología Clásica de la Universidad de Guadalajara', 10),
(30, 'Departamento Química Física', 1, 'Departamento de Química Física de la Universidad de Guadalajara', 10),
(31, 'Departamento Anatomía Patológica, Histología, Historia de la Ciencia, Medicina Legal y Forense y Toxicología', 1, 'Departamento de Anatomía Patológica, Histología, Historia de la Ciencia, Medicina Legal y Forense y Toxicología de la Universidad Pompeu Fabra', 11),
(32, 'Departamento Economía Financiera y Contabilidad', 1, 'Departamento de Economía Financiera y Contabilidad de la Universidad Pompeu Fabra', 11),
(33, 'Departamento Biomedicina, Biotecnología y Salud Pública', 1, 'Departamento de Biomedicina, Biotecnología y Salud Pública de la Universidad Pompeu Fabra', 11),
(34, 'Departamento Disciplinas Jurídicas Básicas', 1, 'Departamento de Disciplinas Jurídicas Básicas de la Universidad Miguel Hernández', 12),
(35, 'Departamento Química Analítica', 1, 'Departamento de Química Analítica de la Universidad Miguel Hernández', 12),
(36, 'Departamento Ingeniería Química y Tecnología de Alimentos', 1, 'Departamento de Ingeniería Química y Tecnología de Alimentos de la Universidad Miguel Hernández', 12),
(37, 'Departamento Didáctica', 1, 'Departamento de Didáctica de la Universidad Politécnica de Madrid', 13),
(38, 'Departamento Física de la Materia Condensada', 1, 'Departamento de Física de la Materia Condensada de la Universidad Politécnica de Madrid', 13),
(39, 'Departamento Ingeniería Mecánica y Diseño Industrial', 1, 'Departamento de Ingeniería Mecánica y Diseño Industrial de la Universidad Politécnica de Madrid', 13),
(40, 'Departamento Economía General', 1, 'Departamento de Economía General de la Universidad Jaume I', 14),
(41, 'Departamento Matemáticas', 1, 'Departamento de Matemáticas de la Universidad Jaume I', 14),
(42, 'Departamento Filología', 1, 'Departamento de Filología de la Universidad Jaume I', 14),
(43, 'Departamento Psicología', 1, 'Departamento de Psicología de la Universidad Autónoma de Barcelona', 15),
(44, 'Departamento Ingeniería en Automática, Electrónica, Arquitectura y Redes de Computadores', 1, 'Departamento de Ingeniería en Automática, Electrónica, Arquitectura y Redes de Computadores de la Universidad Autónoma de Barcelona', 15),
(45, 'Departamento Química Orgánica', 1, 'Departamento de Química Orgánica de la Universidad Autónoma de Barcelona', 15),
(46, 'Departamento Química Física', 1, 'Departamento de Química Física de la Universidad de La Rioja', 16),
(47, 'Departamento Marketing y Comunicación', 1, 'Departamento de Marketing y Comunicación de la Universidad de La Rioja', 16),
(48, 'Departamento Derecho Privado', 1, 'Departamento de Derecho Privado de la Universidad de La Rioja', 16),
(49, 'Departamento Enfermería y Fisioterapia', 1, 'Departamento de Enfermería y Fisioterapia de la Universidad de Barcelona', 17),
(50, 'Departamento Física Aplicada', 1, 'Departamento de Física Aplicada de la Universidad de Barcelona', 17),
(51, 'Departamento Filología Francesa e Inglesa', 1, 'Departamento de Filología Francesa e Inglesa de la Universidad de Barcelona', 17),
(52, 'Departamento Química Orgánica', 1, 'Departamento de Química Orgánica de la Universidad Complutense de Madrid', 18),
(53, 'Departamento Didáctica EF, Plástica y Musical', 1, 'Departamento de Didáctica EF, Plástica y Musical de la Universidad Complutense de Madrid', 18),
(54, 'Departamento Economía Financiera y Contabilidad', 1, 'Departamento de Economía Financiera y Contabilidad de la Universidad Complutense de Madrid', 18),
(55, 'Departamento Organización de Empresas', 1, 'Departamento de Organización de Empresas de la Universidad de La Coruña', 19),
(56, 'Departamento Historia, Geografía y Filosofía', 1, 'Departamento de Historia, Geografía y Filosofía de la Universidad de La Coruña', 19),
(57, 'Departamento Matemáticas', 1, 'Departamento de Matemáticas de la Universidad de La Coruña', 19),
(58, 'Departamento Derecho Internacional Público, Penal y Procesal', 1, 'Departamento de Derecho Internacional Público, Penal y Procesal de la Universidad de Salamanca', 20),
(59, 'Departamento Biología', 1, 'Departamento de Biología de la Universidad de Salamanca', 20),
(60, 'Departamento Didáctica de la Lengua y la Literatura', 1, 'Departamento de Didáctica de la Lengua y la Literatura de la Universidad de Salamanca', 20),
(61, 'Departamento Psicología', 1, 'Departamento de Psicología de la Universidad de Valencia', 21),
(62, 'Departamento Física Aplicada', 1, 'Departamento de Física Aplicada de la Universidad de Valencia', 21),
(63, 'Departamento Filología Clásica', 1, 'Departamento de Filología Clásica de la Universidad de Valencia', 21),
(64, 'Departamento Química Analítica', 1, 'Departamento de Química Analítica de la Universidad Nacional de Educación a Distancia', 22),
(65, 'Departamento Química Física', 1, 'Departamento de Química Física de la Universidad Nacional de Educación a Distancia', 22),
(66, 'Departamento Ingeniería Química y Tecnología de Alimentos', 1, 'Departamento de Ingeniería Química y Tecnología de Alimentos de la Universidad Nacional de Educación a Distancia', 22),
(67, 'Departamento Filología', 1, 'Departamento de Filología de la Universidad Pablo de Olavide', 23),
(68, 'Departamento Derecho Mercantil', 1, 'Departamento de Derecho Mercantil de la Universidad Pablo de Olavide', 23),
(69, 'Departamento Química Orgánica', 1, 'Departamento de Química Orgánica de la Universidad Pablo de Olavide', 23),
(70, 'Departamento Historia Moderna, Contemporánea, de América y del Arte', 1, 'Departamento de Historia Moderna, Contemporánea, de América y del Arte de la Universidad de Huelva', 24),
(71, 'Departamento Economía General', 1, 'Departamento de Economía General de la Universidad de Huelva', 24),
(72, 'Departamento Biomedicina, Biotecnología y Salud Pública', 1, 'Departamento de Biomedicina, Biotecnología y Salud Pública de la Universidad de Huelva', 24),
(73, 'Departamento Máquinas y Motores Térmicos', 1, 'Departamento de Máquinas y Motores Térmicos de la Universidad de La Laguna', 25),
(74, 'Departamento Ciencias de la Tierra', 1, 'Departamento de Ciencias de la Tierra de la Universidad de La Laguna', 25),
(75, 'Departamento Enfermería y Fisioterapia', 1, 'Departamento de Enfermería y Fisioterapia de la Universidad de La Laguna', 25),
(76, 'Departamento Derecho Público', 1, 'Departamento de Derecho Público de la Universidad de Jaén', 26),
(77, 'Departamento Psicología', 1, 'Departamento de Psicología de la Universidad de Jaén', 26),
(78, 'Departamento Ingeniería Eléctrica', 1, 'Departamento de Ingeniería Eléctrica de la Universidad de Jaén', 26),
(79, 'Departamento Filología Francesa e Inglesa', 1, 'Departamento de Filología Francesa e Inglesa de la Universidad de Madrid', 27),
(80, 'Departamento Didáctica', 1, 'Departamento de Didáctica de la Universidad de Madrid', 27),
(81, 'Departamento Matemáticas', 1, 'Departamento de Matemáticas de la Universidad de Madrid', 27),
(82, 'Departamento Ciencias de los Materiales e Ingeniería Metalúrgica y Química Inorgánica', 1, 'Departamento de Ciencias de los Materiales e Ingeniería Metalúrgica y Química Inorgánica de la Universidad de Zaragoza', 28),
(83, 'Departamento Derecho del Trabajo y de la Seguridad Social', 1, 'Departamento de Derecho del Trabajo y de la Seguridad Social de la Universidad de Zaragoza', 28),
(84, 'Departamento Marketing y Comunicación', 1, 'Departamento de Marketing y Comunicación de la Universidad de Zaragoza', 28),
(85, 'Departamento Economía Financiera y Contabilidad', 1, 'Departamento de Economía Financiera y Contabilidad de la Universidad de Las Palmas de Gran Canaria', 29),
(86, 'Departamento Química Física', 1, 'Departamento de Química Física de la Universidad de Las Palmas de Gran Canaria', 29),
(87, 'Departamento Historia, Geografía y Filosofía', 1, 'Departamento de Historia, Geografía y Filosofía de la Universidad de Las Palmas de Gran Canaria', 29),
(88, 'Departamento Ingeniería Informática', 1, 'Departamento de Ingeniería Informática de la Universidad de Cádiz', 30),
(89, 'Departamento Filología', 1, 'Departamento de Filología de la Universidad de Cádiz', 30),
(90, 'Departamento Psicología', 1, 'Departamento de Psicología de la Universidad de Cádiz', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id` int NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `contrasena` varchar(128) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `apellido1` varchar(150) NOT NULL,
  `apellido2` varchar(150) DEFAULT NULL,
  `tipo_documento` varchar(128) DEFAULT NULL,
  `documento_identidad` varchar(128) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `direccion` varchar(500) DEFAULT NULL,
  `num_tlf` varchar(20) DEFAULT NULL,
  `correo` varchar(254) DEFAULT NULL,
  `correo_inst` varchar(254) DEFAULT NULL,
  `ult_conex` datetime DEFAULT NULL,
  `nacionalidad` varchar(255) NOT NULL,
  `lugar_nacimiento` varchar(500) DEFAULT NULL,
  `fecha_ingreso` datetime NOT NULL,
  `genero` varchar(20) DEFAULT NULL,
  `calificacion_exp` float DEFAULT NULL,
  `id_tutor` int NOT NULL,
  `id_programa` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- RELACIONES PARA LA TABLA `estudiante`:
--   `id_tutor`
--       `profesor` -> `id`
--   `id_programa`
--       `programa` -> `id`
--

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id`, `activo`, `contrasena`, `usuario`, `nombre`, `apellido1`, `apellido2`, `tipo_documento`, `documento_identidad`, `fecha_nacimiento`, `direccion`, `num_tlf`, `correo`, `correo_inst`, `ult_conex`, `nacionalidad`, `lugar_nacimiento`, `fecha_ingreso`, `genero`, `calificacion_exp`, `id_tutor`, `id_programa`) VALUES
(1, 1, 'hashstu001', 'abianchi', 'Alessandro', 'Bianchi', 'Rossi', 'DNI', 'IT001001', '1990-02-15', 'Via Roma 12, Florencia', '+39 055123456', 'alessandro.bianchi@example.com', 'abianchi@unifi.it', '2024-11-01 10:00:00', 'Italia', 'Florencia', '2023-09-01 09:00:00', 'Masculino', 8.6, 1, 1),
(2, 1, 'hashstu002', 'gconti', 'Giulia', 'Conti', 'Verdi', 'DNI', 'IT001002', '1991-08-22', 'Via Dante 5, Florencia', '+39 055654321', 'giulia.conti@example.com', 'gconti@unifi.it', '2024-11-02 11:15:00', 'Italia', 'Florencia', '2023-09-01 09:15:00', 'Femenino', 9.1, 1, 1),
(3, 1, 'hashstu003', 'onasser', 'Omar', 'Nasser', 'Khalil', 'Pasaporte', 'PS001003', '1992-05-10', 'Beit Hanina, Jerusalén', '+972 2 1112222', 'omar.nasser@example.com', 'onasser@alaqsa.edu', '2024-11-01 09:30:00', 'Palestina', 'Jerusalén', '2023-09-02 09:00:00', 'Masculino', 8.8, 8, 3),
(4, 1, 'hashstu004', 'lhassan', 'Layla', 'Hassan', 'Abbas', 'Pasaporte', 'PS001004', '1993-03-18', 'Jerusalén', '+972 2 3334444', 'layla.hassan@example.com', 'lhassan@alaqsa.edu', '2024-11-02 10:45:00', 'Palestina', 'Jerusalén', '2023-09-02 09:15:00', 'Femenino', 9.2, 8, 3),
(5, 1, 'hashstu005', 'esmith', 'Ethan', 'Smith', 'Brown', 'ID', 'AU001005', '1990-12-12', 'Adelaide', '+61 8 12345678', 'ethan.smith@example.com', 'esmith@unisa.edu.au', '2024-11-01 08:50:00', 'Australia', 'Adelaide', '2023-09-03 09:00:00', 'Masculino', 8.7, 14, 5),
(6, 1, 'hashstu006', 'staylor', 'Sophia', 'Taylor', 'Evans', 'ID', 'AU001006', '1991-07-20', 'Adelaide', '+61 8 87654321', 'sophia.taylor@example.com', 'staylor@unisa.edu.au', '2024-11-02 09:25:00', 'Australia', 'Adelaide', '2023-09-03 09:15:00', 'Femenino', 9, 14, 5),
(7, 1, 'hashstu007', 'dmwangi', 'David', 'Mwangi', 'Kamau', 'Pasaporte', 'KE001007', '1990-04-10', 'Nairobi', '+254 20 1111111', 'david.mwangi@example.com', 'dmwangi@ku.ac.ke', '2024-11-01 11:00:00', 'Kenia', 'Nairobi', '2023-09-04 09:00:00', 'Masculino', 8.5, 21, 7),
(8, 1, 'hashstu008', 'awanjiku', 'Amina', 'Wanjiku', 'Njeri', 'Pasaporte', 'KE001008', '1992-11-15', 'Nairobi', '+254 20 2222222', 'amina.wanjiku@example.com', 'awanjiku@ku.ac.ke', '2024-11-02 10:30:00', 'Kenia', 'Nairobi', '2023-09-04 09:15:00', 'Femenino', 9.1, 21, 7),
(9, 1, 'hashstu009', 'mtorres', 'Miguel', 'Torres', 'Reyes', 'DNI', 'VE001009', '1991-06-12', 'Maracaibo, Venezuela', '+58 261 1111111', 'miguel.torres@example.com', 'mtorres@unizar.es', '2024-11-01 12:00:00', 'Venezuela', 'Maracaibo', '2023-09-05 09:00:00', 'Masculino', 8.9, 27, 9),
(10, 1, 'hashstu010', 'ilopez', 'Isabella', 'Lopez', 'Martinez', 'DNI', 'VE001010', '1992-08-20', 'Maracaibo, Venezuela', '+58 261 2222222', 'isabella.lopez@example.com', 'ilopez@unizar.es', '2024-11-02 11:30:00', 'Venezuela', 'Maracaibo', '2023-09-05 09:15:00', 'Femenino', 9.2, 27, 9),
(11, 1, 'hashstu011', 'mferrer', 'Marti', 'Ferrer', 'Solé', 'DNI', 'ES001011', '1990-01-18', 'Barcelona', '+34 932111111', 'marti.ferrer@example.com', 'mferrer@upf.edu', '2024-11-01 09:15:00', 'España', 'Barcelona', '2023-09-06 09:00:00', 'Masculino', 8.6, 31, 11),
(12, 1, 'hashstu012', 'cvila', 'Clara', 'Vila', 'Santos', 'DNI', 'ES001012', '1991-09-25', 'Barcelona', '+34 932222222', 'clara.vila@example.com', 'cvila@upf.edu', '2024-11-02 10:45:00', 'España', 'Barcelona', '2023-09-06 09:15:00', 'Femenino', 9, 31, 11),
(13, 1, 'hashstu013', 'cramirez', 'Carlos', 'Ramirez', 'Moreno', 'DNI', 'ES001013', '1990-03-12', 'Madrid', '+34 913111111', 'carlos.ramirez@example.com', 'cramirez@upm.es', '2024-11-01 10:30:00', 'España', 'Madrid', '2023-09-07 09:00:00', 'Masculino', 8.7, 39, 13),
(14, 1, 'hashstu014', 'egomez', 'Elena', 'Gomez', 'Lopez', 'DNI', 'ES001014', '1991-12-20', 'Madrid', '+34 913222222', 'elena.gomez@example.com', 'egomez@upm.es', '2024-11-02 11:45:00', 'España', 'Madrid', '2023-09-07 09:15:00', 'Femenino', 9.1, 39, 13),
(15, 1, 'hashstu015', 'pserrano', 'Pau', 'Serrano', 'Vila', 'DNI', 'ES001015', '1990-05-10', 'Barcelona', '+34 934111111', 'pau.serrano@example.com', 'pserrano@uab.es', '2024-11-01 09:45:00', 'España', 'Barcelona', '2023-09-08 09:00:00', 'Masculino', 8.8, 44, 15),
(16, 1, 'hashstu016', 'lmiro', 'Laia', 'Miró', 'Pons', 'DNI', 'ES001016', '1992-10-18', 'Barcelona', '+34 934222222', 'laia.miro@example.com', 'lmiro@uab.es', '2024-11-02 10:20:00', 'España', 'Barcelona', '2023-09-08 09:15:00', 'Femenino', 9.2, 44, 15),
(17, 1, 'hashstu017', 'mroca', 'Marc', 'Roca', 'Pujol', 'DNI', 'ES001017', '1990-07-12', 'Barcelona', '+34 933111111', 'marc.roca@example.com', 'mroca@ub.edu', '2024-11-01 11:00:00', 'España', 'Barcelona', '2023-09-09 09:00:00', 'Masculino', 8.5, 49, 17),
(18, 1, 'hashstu018', 'ncasas', 'Nerea', 'Casas', 'Marti', 'DNI', 'ES001018', '1991-11-20', 'Barcelona', '+34 933222222', 'nerea.casas@example.com', 'ncasas@ub.edu', '2024-11-02 11:30:00', 'España', 'Barcelona', '2023-09-09 09:15:00', 'Femenino', 9, 49, 17),
(19, 1, 'hashstu019', 'jsantos', 'Javier', 'Santos', 'Lopez', 'DNI', 'ES001019', '1990-09-15', 'Madrid', '+34 913333111', 'javier.santos@example.com', 'jsantos@ucm.es', '2024-11-01 10:15:00', 'España', 'Madrid', '2023-09-10 09:00:00', 'Masculino', 8.6, 52, 18),
(20, 1, 'hashstu020', 'lmoreno', 'Lucia', 'Moreno', 'Fernandez', 'DNI', 'ES001020', '1992-02-28', 'Madrid', '+34 913333222', 'lucia.moreno@example.com', 'lmoreno@ucm.es', '2024-11-02 10:45:00', 'España', 'Madrid', '2023-09-10 09:15:00', 'Femenino', 9.1, 52, 18),
(21, 1, 'hashstu021', 'dblanco', 'Diego', 'Blanco', 'Santos', 'DNI', 'ES001021', '1990-08-12', 'Salamanca', '+34 923111111', 'diego.blanco@example.com', 'dblanco@usal.es', '2024-11-01 09:30:00', 'España', 'Salamanca', '2023-09-11 09:00:00', 'Masculino', 8.7, 60, 20),
(22, 1, 'hashstu022', 'cmorales', 'Carla', 'Morales', 'Vega', 'DNI', 'ES001022', '1991-04-20', 'Salamanca', '+34 923222222', 'carla.morales@example.com', 'cmorales@usal.es', '2024-11-02 10:20:00', 'España', 'Salamanca', '2023-09-11 09:15:00', 'Femenino', 9, 60, 20),
(23, 1, 'hashstu023', 'anavarro', 'Alvaro', 'Navarro', 'Santos', 'DNI', 'ES001023', '1990-03-15', 'Madrid', '+34 914111111', 'alvaro.navarro@example.com', 'anavarro@uned.es', '2024-11-01 10:00:00', 'España', 'Madrid', '2023-09-12 09:00:00', 'Masculino', 8.8, 66, 22),
(24, 1, 'hashstu024', 'egil', 'Elena', 'Gil', 'Moreno', 'DNI', 'ES001024', '1991-09-25', 'Madrid', '+34 914222222', 'elena.gil@example.com', 'egil@uned.es', '2024-11-02 10:45:00', 'España', 'Madrid', '2023-09-12 09:15:00', 'Femenino', 9.1, 66, 22),
(25, 1, 'hashstu025', 'jmartinez', 'Jorge', 'Martinez', 'Ruiz', 'DNI', 'ES001025', '1990-05-12', 'Huelva', '+34 959111111', 'jorge.martinez@example.com', 'jmartinez@uhu.es', '2024-11-01 09:45:00', 'España', 'Huelva', '2023-09-13 09:00:00', 'Masculino', 8.6, 72, 24),
(26, 1, 'hashstu026', 'sdiaz', 'Sofia', 'Diaz', 'Lopez', 'DNI', 'ES001026', '1991-11-18', 'Huelva', '+34 959222222', 'sofia.diaz@example.com', 'sdiaz@uhu.es', '2024-11-02 10:20:00', 'España', 'Huelva', '2023-09-13 09:15:00', 'Femenino', 9, 72, 24),
(27, 1, 'hashstu027', 'agarcia', 'Antonio', 'Garcia', 'Martinez', 'DNI', 'ES001027', '1990-07-10', 'Jaén', '+34 953111111', 'antonio.garcia@example.com', 'agarcia@ujaen.es', '2024-11-01 10:15:00', 'España', 'Jaén', '2023-09-14 09:00:00', 'Masculino', 8.7, 77, 26),
(28, 1, 'hashstu028', 'lsantos', 'Laura', 'Santos', 'Vega', 'DNI', 'ES001028', '1991-12-22', 'Jaén', '+34 953222222', 'laura.santos@example.com', 'lsantos@ujaen.es', '2024-11-02 10:45:00', 'España', 'Jaén', '2023-09-14 09:15:00', 'Femenino', 9.1, 77, 26),
(29, 1, 'hashstu029', 'mlopez', 'Miguel', 'Lopez', 'Garcia', 'DNI', 'ES001029', '1990-02-25', 'Zaragoza', '+34 976111111', 'miguel.lopez@example.com', 'mlopez@unizar.es', '2024-11-01 09:30:00', 'España', 'Zaragoza', '2023-09-15 09:00:00', 'Masculino', 8.8, 82, 28),
(30, 1, 'hashstu030', 'eruiz', 'Elena', 'Ruiz', 'Moreno', 'DNI', 'ES001030', '1991-09-12', 'Zaragoza', '+34 976222222', 'elena.ruiz@example.com', 'eruiz@unizar.es', '2024-11-02 10:20:00', 'España', 'Zaragoza', '2023-09-15 09:15:00', 'Femenino', 9, 82, 28),
(31, 1, 'hashstu031', 'cmoreno', 'Carlos', 'Moreno', 'Santos', 'DNI', 'ES001031', '1990-06-18', 'Cádiz', '+34 956111111', 'carlos.moreno@example.com', 'cmoreno@uca.es', '2024-11-01 10:00:00', 'España', 'Cádiz', '2023-09-16 09:00:00', 'Masculino', 8.6, 88, 30),
(32, 1, 'hashstu032', 'luciacop', 'Lucía', 'Copano', NULL, 'DNI', 'ES001032', '1991-11-28', 'Jerez', '+34 956222222', 'lucia.copano@example.com', 'lucop@uca.es', '2024-11-02 10:30:00', 'España', 'Jerez', '2023-09-16 09:15:00', 'Femenino', 9.1, 88, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea_investigacion`
--

CREATE TABLE `linea_investigacion` (
  `id` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- RELACIONES PARA LA TABLA `linea_investigacion`:
--

--
-- Volcado de datos para la tabla `linea_investigacion`
--

INSERT INTO `linea_investigacion` (`id`, `nombre`, `activo`, `descripcion`) VALUES
(1, 'Lingüística histórica', 1, 'Estudio del desarrollo histórico de las lenguas.'),
(2, 'Literatura comparada', 1, 'Análisis de obras literarias en distintos contextos culturales.'),
(3, 'Álgebra', 1, 'Investigación en estructuras algebraicas y teoría de grupos.'),
(4, 'Geometría diferencial', 1, 'Estudio de curvas y superficies con herramientas de cálculo.'),
(5, 'Derecho laboral internacional', 1, 'Normativa laboral comparada entre países.'),
(6, 'Seguridad social', 1, 'Sistemas y políticas de protección social.'),
(7, 'Geología estructural', 1, 'Estudio de la estructura de la corteza terrestre.'),
(8, 'Climatología', 1, 'Estudio de los climas y sus cambios.'),
(9, 'Cirugía experimental', 1, 'Desarrollo de nuevas técnicas quirúrgicas.'),
(10, 'Fisiología clínica', 1, 'Investigación sobre el funcionamiento de los órganos humanos.'),
(11, 'Histología molecular', 1, 'Análisis de tejidos a nivel molecular.'),
(12, 'Patología experimental', 1, 'Estudio de enfermedades mediante modelos experimentales.'),
(13, 'Diseño de maquinaria', 1, 'Optimización de sistemas mecánicos.'),
(14, 'Ingeniería de materiales', 1, 'Desarrollo de materiales avanzados.'),
(15, 'Control automático', 1, 'Sistemas de regulación y automatización.'),
(16, 'Electrónica de potencia', 1, 'Diseño y análisis de circuitos electrónicos de alta potencia.'),
(17, 'Cuidados intensivos', 1, 'Investigación en atención de pacientes críticos.'),
(18, 'Rehabilitación física', 1, 'Estudio de técnicas de recuperación funcional.'),
(19, 'Síntesis orgánica', 1, 'Desarrollo de nuevas moléculas y reacciones.'),
(20, 'Química de productos naturales', 1, 'Estudio de compuestos de origen natural.'),
(21, 'Metodología de la enseñanza', 1, 'Nuevas estrategias de enseñanza del lenguaje.'),
(22, 'Literatura infantil', 1, 'Estudio y creación de literatura para niños.'),
(23, 'Análisis instrumental', 1, 'Uso de técnicas instrumentales para análisis químico.'),
(24, 'Química ambiental', 1, 'Estudio de contaminantes y procesos ambientales.'),
(25, 'Biotecnología molecular', 1, 'Aplicación de técnicas genéticas en medicina.'),
(26, 'Epidemiología', 1, 'Estudio de la distribución de enfermedades en poblaciones.'),
(27, 'Psicología clínica', 1, 'Evaluación y tratamiento de trastornos psicológicos.'),
(28, 'Neurociencia cognitiva', 1, 'Estudio del cerebro y sus funciones cognitivas.'),
(29, 'Nanomateriales', 1, 'Desarrollo de materiales a escala nanométrica.'),
(30, 'Materiales compuestos', 1, 'Diseño y optimización de materiales compuestos.'),
(31, 'Inteligencia artificial', 1, 'Desarrollo de algoritmos inteligentes.'),
(32, 'Bases de datos bioinformáticas', 1, 'Investigación en almacenamiento, gestión y análisis de datos biológicos y genómicos, aplicando técnicas de minería de datos y aprendizaje automático.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id` int NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `contrasena` varchar(128) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `apellido1` varchar(150) NOT NULL,
  `apellido2` varchar(150) DEFAULT NULL,
  `tipo_documento` varchar(128) DEFAULT NULL,
  `documento_identidad` varchar(128) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `direccion` varchar(500) DEFAULT NULL,
  `num_tlf` varchar(20) DEFAULT NULL,
  `correo` varchar(254) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `orcid` varchar(250) DEFAULT NULL,
  `url_investigador` varchar(500) DEFAULT NULL,
  `id_departamento` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- RELACIONES PARA LA TABLA `profesor`:
--   `id_departamento`
--       `departamento` -> `id`
--

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `activo`, `contrasena`, `usuario`, `nombre`, `apellido1`, `apellido2`, `tipo_documento`, `documento_identidad`, `fecha_nacimiento`, `direccion`, `num_tlf`, `correo`, `categoria`, `orcid`, `url_investigador`, `id_departamento`) VALUES
(1, 1, 'hash1', 'mrossi', 'Marco', 'Rossi', 'Bianchi', 'ID', 'ITFLO1231', '1978-04-12', 'Via del Corso 22, Florencia', '+39 055100200', 'marco.rossi@unifi.it', 'Titular', '0000-0001-1234-0001', 'https://unifi.it/rossi', 1),
(2, 1, 'hash2', 'lverdi', 'Luca', 'Verdi', 'Conti', 'ID', 'ITFLO1232', '1980-09-21', 'Via Roma 14, Florencia', '+39 055100201', 'luca.verdi@unifi.it', 'Titular', '0000-0001-1234-0002', 'https://unifi.it/verdi', 2),
(3, 1, 'hash3', 'fmoretti', 'Francesca', 'Moretti', 'Galli', 'ID', 'ITFLO1233', '1975-02-08', 'Via Venezia 40, Florencia', '+39 055100202', 'francesca.moretti@unifi.it', 'Asociada', '0000-0001-1234-0003', 'https://unifi.it/moretti', 3),
(4, 1, 'hash4', 'lwang', 'Li', 'Wang', 'Wei', 'Passport', 'CNPEK4451', '1970-11-14', 'Haidian District, Beijing', '+86 108800100', 'li.wang@pku.edu.cn', 'Titular', '0000-0002-5000-0001', 'https://pku.edu.cn/wang', 4),
(5, 1, 'hash5', 'zchen', 'Zhang', 'Chen', 'Liu', 'Passport', 'CNPEK4452', '1982-06-20', 'Chaoyang District, Beijing', '+86 108800101', 'zhang.chen@pku.edu.cn', 'Asociado', '0000-0002-5000-0002', 'https://pku.edu.cn/chen', 5),
(6, 1, 'hash6', 'xli', 'Xiao', 'Li', 'Hua', 'Passport', 'CNPEK4453', '1976-03-05', 'Dongcheng District, Beijing', '+86 108800102', 'xiao.li@pku.edu.cn', 'Titular', '0000-0002-5000-0003', 'https://pku.edu.cn/li', 6),
(7, 1, 'hash7', 'msaleh', 'Mahmoud', 'Saleh', 'Hamdan', 'ID', 'PSGAZA771', '1974-10-10', 'Gaza City', '+970 82230001', 'm.saleh@alaqsa.edu.ps', 'Titular', '0000-0003-3000-0001', 'https://alaqsa.edu.ps/saleh', 7),
(8, 1, 'hash8', 'ahammad', 'Ali', 'Hammad', 'Khalil', 'ID', 'PSGAZA772', '1981-01-17', 'Khan Yunis', '+970 82230002', 'a.hammad@alaqsa.edu.ps', 'Asistente', '0000-0003-3000-0002', 'https://alaqsa.edu.ps/hammad', 8),
(9, 1, 'hash9', 'yabed', 'Yousef', 'Abed', 'Omar', 'ID', 'PSGAZA773', '1979-07-30', 'Rafah', '+970 82230003', 'y.abed@alaqsa.edu.ps', 'Asociado', '0000-0003-3000-0003', 'https://alaqsa.edu.ps/abed', 9),
(10, 1, 'hash10', 'jwilson', 'John', 'Wilson', 'Taylor', 'Passport', 'AUVIC111', '1972-05-22', 'Melbourne, VIC', '+61 391000100', 'john.wilson@vu.edu.au', 'Titular', '0000-0004-1000-0001', 'https://vu.edu.au/wilson', 10),
(11, 1, 'hash11', 'sclarke', 'Sarah', 'Clarke', 'Evans', 'Passport', 'AUVIC112', '1984-12-11', 'Melbourne, VIC', '+61 391000101', 'sarah.clarke@vu.edu.au', 'Asociada', '0000-0004-1000-0002', 'https://vu.edu.au/clarke', 11),
(12, 1, 'hash12', 'mwhite', 'Michael', 'White', 'Campbell', 'Passport', 'AUVIC113', '1976-03-29', 'Footscray, Melbourne', '+61 391000102', 'm.white@vu.edu.au', 'Titular', '0000-0004-1000-0003', 'https://vu.edu.au/white', 12),
(13, 1, 'hash13', 'mjohnson', 'Michael', 'Johnson', 'Brown', 'Passport', 'AUSA131', '1975-04-10', 'Adelaide, SA', '+61 882100100', 'm.johnson@unisa.edu.au', 'Titular', '0000-0004-2000-0001', 'https://unisa.edu.au/johnson', 13),
(14, 1, 'hash14', 'alewis', 'Anna', 'Lewis', 'Smith', 'Passport', 'AUSA132', '1980-09-22', 'Adelaide, SA', '+61 882100101', 'a.lewis@unisa.edu.au', 'Asociada', '0000-0004-2000-0002', 'https://unisa.edu.au/lewis', 14),
(15, 1, 'hash15', 'dthompson', 'David', 'Thompson', 'White', 'Passport', 'AUSA133', '1978-02-15', 'Adelaide, SA', '+61 882100102', 'd.thompson@unisa.edu.au', 'Titular', '0000-0004-2000-0003', 'https://unisa.edu.au/thompson', 15),
(16, 1, 'hash16', 'amansour', 'Ahmed', 'Mansour', 'Hassan', 'ID', 'EGCAIRO161', '1972-05-05', 'Cairo', '+20 223400101', 'a.mansour@cu.edu.eg', 'Titular', '0000-0005-3000-0001', 'https://cu.edu.eg/mansour', 16),
(17, 1, 'hash17', 'lfahmy', 'Laila', 'Fahmy', 'Omar', 'ID', 'EGCAIRO162', '1983-08-12', 'Cairo', '+20 223400102', 'l.fahmy@cu.edu.eg', 'Asociada', '0000-0005-3000-0002', 'https://cu.edu.eg/fahmy', 17),
(18, 1, 'hash18', 'hmohamed', 'Hassan', 'Mohamed', 'Ali', 'ID', 'EGCAIRO163', '1976-11-23', 'Cairo', '+20 223400103', 'h.mohamed@cu.edu.eg', 'Titular', '0000-0005-3000-0003', 'https://cu.edu.eg/mohamed', 18),
(19, 1, 'hash19', 'jkamau', 'James', 'Kamau', 'Mwangi', 'Passport', 'KEN1971', '1971-03-14', 'Nairobi', '+254 202100101', 'j.kamau@ku.ac.ke', 'Titular', '0000-0006-4000-0001', 'https://ku.ac.ke/kamau', 19),
(20, 1, 'hash20', 'anjeri', 'Anne', 'Njeri', 'Wanjiku', 'Passport', 'KEN1972', '1980-07-25', 'Nairobi', '+254 202100102', 'a.njeri@ku.ac.ke', 'Asociada', '0000-0006-4000-0002', 'https://ku.ac.ke/njeri', 20),
(21, 1, 'hash21', 'pmuthoni', 'Peter', 'Muthoni', 'Otieno', 'Passport', 'KEN1973', '1977-12-30', 'Nairobi', '+254 202100103', 'p.muthoni@ku.ac.ke', 'Titular', '0000-0006-4000-0003', 'https://ku.ac.ke/muthoni', 21),
(22, 1, 'hash22', 'jrojas', 'Juan', 'Rojas', 'Gonzalez', 'ID', 'CLUBB2201', '1975-06-18', 'Concepción', '+56 412300100', 'j.rojas@ubiobio.cl', 'Titular', '0000-0007-5000-0001', 'https://ubiobio.cl/rojas', 22),
(23, 1, 'hash23', 'mperez', 'Maria', 'Perez', 'Diaz', 'ID', 'CLUBB2202', '1982-09-09', 'Concepción', '+56 412300101', 'm.perez@ubiobio.cl', 'Asociada', '0000-0007-5000-0002', 'https://ubiobio.cl/perez', 23),
(24, 1, 'hash24', 'alvarez', 'Alvaro', 'Alvarez', 'Soto', 'ID', 'CLUBB2203', '1978-11-20', 'Concepción', '+56 412300102', 'a.alvarez@ubiobio.cl', 'Titular', '0000-0007-5000-0003', 'https://ubiobio.cl/alvarez', 24),
(25, 1, 'hash25', 'jmarquez', 'Juan', 'Marquez', 'Perez', 'ID', 'VEZUL251', '1976-02-14', 'Maracaibo', '+58 261200100', 'j.marquez@unizulia.edu.ve', 'Titular', '0000-0008-6000-0001', 'https://unizulia.edu.ve/marquez', 25),
(26, 1, 'hash26', 'lmendoza', 'Luis', 'Mendoza', 'Gomez', 'ID', 'VEZUL252', '1981-07-22', 'Maracaibo', '+58 261200101', 'l.mendoza@unizulia.edu.ve', 'Asociado', '0000-0008-6000-0002', 'https://unizulia.edu.ve/mendoza', 26),
(27, 1, 'hash27', 'acarvajal', 'Ana', 'Carvajal', 'Lopez', 'ID', 'VEZUL253', '1978-11-05', 'Maracaibo', '+58 261200102', 'a.carvajal@unizulia.edu.ve', 'Titular', '0000-0008-6000-0003', 'https://unizulia.edu.ve/carvajal', 27),
(28, 1, 'hash28', 'rlopez', 'Ricardo', 'Lopez', 'Sanchez', 'ID', 'MXGDL281', '1974-05-19', 'Guadalajara', '+52 333100100', 'r.lopez@udg.mx', 'Titular', '0000-0009-7000-0001', 'https://udg.mx/lopez', 28),
(29, 1, 'hash29', 'mluna', 'Maria', 'Luna', 'Fernandez', 'ID', 'MXGDL282', '1983-08-23', 'Guadalajara', '+52 333100101', 'm.luna@udg.mx', 'Asociada', '0000-0009-7000-0002', 'https://udg.mx/luna', 29),
(30, 1, 'hash30', 'jgutierrez', 'Jose', 'Gutierrez', 'Torres', 'ID', 'MXGDL283', '1977-11-12', 'Guadalajara', '+52 333100102', 'j.gutierrez@udg.mx', 'Titular', '0000-0009-7000-0003', 'https://udg.mx/gutierrez', 30),
(31, 1, 'hash31', 'dmartinez', 'David', 'Martinez', 'Soler', 'ID', 'ESUPF311', '1975-03-15', 'Barcelona', '+34 933100100', 'd.martinez@upf.edu', 'Titular', '0000-0010-8000-0001', 'https://upf.edu/martinez', 31),
(32, 1, 'hash32', 'clopez', 'Carla', 'Lopez', 'Ruiz', 'ID', 'ESUPF312', '1982-06-08', 'Barcelona', '+34 933100101', 'c.lopez@upf.edu', 'Asociada', '0000-0010-8000-0002', 'https://upf.edu/lopez', 32),
(33, 1, 'hash33', 'jgarcia', 'Jordi', 'Garcia', 'Pons', 'ID', 'ESUPF313', '1978-12-22', 'Barcelona', '+34 933100102', 'j.garcia@upf.edu', 'Titular', '0000-0010-8000-0003', 'https://upf.edu/garcia', 33),
(34, 1, 'hash34', 'pperez', 'Pablo', 'Perez', 'Alonso', 'ID', 'ESUMH341', '1976-07-05', 'Elche', '+34 965100100', 'p.perez@umh.es', 'Titular', '0000-0011-9000-0001', 'https://umh.es/perez', 34),
(35, 1, 'hash35', 'lsanchez', 'Laura', 'Sanchez', 'Martinez', 'ID', 'ESUMH342', '1980-09-18', 'Elche', '+34 965100101', 'l.sanchez@umh.es', 'Asociada', '0000-0011-9000-0002', 'https://umh.es/sanchez', 35),
(36, 1, 'hash36', 'jruiz', 'Javier', 'Ruiz', 'Gomez', 'ID', 'ESUMH343', '1979-11-28', 'Elche', '+34 965100102', 'j.ruiz@umh.es', 'Titular', '0000-0011-9000-0003', 'https://umh.es/ruiz', 36),
(37, 1, 'hash37', 'jlopez', 'Jose', 'Lopez', 'Fernandez', 'ID', 'ESPOL371', '1974-02-12', 'Madrid', '+34 913100100', 'j.lopez@upm.es', 'Titular', '0000-0012-1000-0001', 'https://upm.es/lopez', 37),
(38, 1, 'hash38', 'mmartin', 'Maria', 'Martin', 'Gonzalez', 'ID', 'ESPOL372', '1981-08-21', 'Madrid', '+34 913100101', 'm.martin@upm.es', 'Asociada', '0000-0012-1000-0002', 'https://upm.es/martin', 38),
(39, 1, 'hash39', 'aperez', 'Antonio', 'Perez', 'Sanchez', 'ID', 'ESPOL373', '1977-06-14', 'Madrid', '+34 913100102', 'a.perez@upm.es', 'Titular', '0000-0012-1000-0003', 'https://upm.es/perez', 39),
(40, 1, 'hash40', 'rcosta', 'Rafael', 'Costa', 'Lopez', 'ID', 'ESUJI401', '1975-05-10', 'Castellón', '+34 964100100', 'r.costa@uji.es', 'Titular', '0000-0013-2000-0001', 'https://uji.es/costa', 40),
(41, 1, 'hash41', 'amartinez', 'Ana', 'Martinez', 'Gomez', 'ID', 'ESUJI402', '1982-03-18', 'Castellón', '+34 964100101', 'a.martinez@uji.es', 'Asociada', '0000-0013-2000-0002', 'https://uji.es/martinez', 41),
(42, 1, 'hash42', 'jrodriguez', 'Javier', 'Rodriguez', 'Soler', 'ID', 'ESUJI403', '1978-12-05', 'Castellón', '+34 964100102', 'j.rodriguez@uji.es', 'Titular', '0000-0013-2000-0003', 'https://uji.es/rodriguez', 42),
(43, 1, 'hash43', 'cgarcia', 'Carlos', 'Garcia', 'Martinez', 'ID', 'ESUAB431', '1976-03-10', 'Barcelona', '+34 934100100', 'c.garcia@uab.es', 'Titular', '0000-0014-3000-0001', 'https://uab.es/garcia', 43),
(44, 1, 'hash44', 'lmoreno', 'Laura', 'Moreno', 'Gomez', 'ID', 'ESUAB432', '1982-07-21', 'Barcelona', '+34 934100101', 'l.moreno@uab.es', 'Asociada', '0000-0014-3000-0002', 'https://uab.es/moreno', 44),
(45, 1, 'hash45', 'jfernandez', 'Jordi', 'Fernandez', 'Pons', 'ID', 'ESUAB433', '1979-11-15', 'Barcelona', '+34 934100102', 'j.fernandez@uab.es', 'Titular', '0000-0014-3000-0003', 'https://uab.es/fernandez', 45),
(46, 1, 'hash46', 'amanmartin', 'Amanda', 'Martin', 'Lopez', 'ID', 'ESULR461', '1975-06-12', 'Logroño', '+34 941200100', 'a.martin@unirioja.es', 'Titular', '0000-0015-4000-0001', 'https://unirioja.es/martin', 46),
(47, 1, 'hash47', 'pajimenez', 'Pablo', 'Jimenez', 'Soto', 'ID', 'ESULR462', '1981-09-30', 'Logroño', '+34 941200101', 'p.jimenez@unirioja.es', 'Asociado', '0000-0015-4000-0002', 'https://unirioja.es/jimenez', 47),
(48, 1, 'hash48', 'chlopez', 'Carmen', 'Lopez', 'Martinez', 'ID', 'ESULR463', '1978-02-25', 'Logroño', '+34 941200102', 'c.lopez@unirioja.es', 'Titular', '0000-0015-4000-0003', 'https://unirioja.es/lopez', 48),
(49, 1, 'hash49', 'jordirodriguez', 'Jordi', 'Rodriguez', 'Soler', 'ID', 'ESUBAR491', '1976-04-10', 'Barcelona', '+34 934200100', 'j.rodriguez@ub.edu', 'Titular', '0000-0016-5000-0001', 'https://ub.edu/rodriguez', 49),
(50, 1, 'hash50', 'anamara', 'Ana', 'Mara', 'Pons', 'ID', 'ESUBAR492', '1983-08-14', 'Barcelona', '+34 934200101', 'a.mara@ub.edu', 'Asociada', '0000-0016-5000-0002', 'https://ub.edu/mara', 50),
(51, 1, 'hash51', 'perefernandez', 'Pere', 'Fernandez', 'Lopez', 'ID', 'ESUBAR493', '1979-11-21', 'Barcelona', '+34 934200102', 'p.fernandez@ub.edu', 'Titular', '0000-0016-5000-0003', 'https://ub.edu/fernandez', 51),
(52, 1, 'hash52', 'marlopez', 'Maria', 'Lopez', 'Gomez', 'ID', 'ESCUM521', '1975-03-08', 'Madrid', '+34 913200100', 'm.lopez@ucm.es', 'Titular', '0000-0017-6000-0001', 'https://ucm.es/lopez', 52),
(53, 1, 'hash53', 'josemartinez', 'Jose', 'Martinez', 'Soto', 'ID', 'ESCUM522', '1982-06-12', 'Madrid', '+34 913200101', 'j.martinez@ucm.es', 'Asociado', '0000-0017-6000-0002', 'https://ucm.es/martinez', 53),
(54, 1, 'hash54', 'carlopez', 'Carlos', 'Lopez', 'Fernandez', 'ID', 'ESCUM523', '1978-12-01', 'Madrid', '+34 913200102', 'c.lopez@ucm.es', 'Titular', '0000-0017-6000-0003', 'https://ucm.es/lopezc', 54),
(55, 1, 'hash55', 'raulfernandez', 'Raul', 'Fernandez', 'Lopez', 'ID', 'ESULC551', '1974-05-14', 'A Coruña', '+34 981100100', 'r.fernandez@udc.es', 'Titular', '0000-0018-7000-0001', 'https://udc.es/fernandez', 55),
(56, 1, 'hash56', 'anamartinez', 'Ana', 'Martinez', 'Santos', 'ID', 'ESULC552', '1981-09-22', 'A Coruña', '+34 981100101', 'a.martinez@udc.es', 'Asociada', '0000-0018-7000-0002', 'https://udc.es/martinez', 56),
(57, 1, 'hash57', 'javirodriguez', 'Javier', 'Rodriguez', 'Pereira', 'ID', 'ESULC553', '1979-11-05', 'A Coruña', '+34 981100102', 'j.rodriguez@udc.es', 'Titular', '0000-0018-7000-0003', 'https://udc.es/rodriguez', 57),
(58, 1, 'hash58', 'pedromartin', 'Pedro', 'Martin', 'Lopez', 'ID', 'ESSAL581', '1976-04-10', 'Salamanca', '+34 923200100', 'p.martin@usal.es', 'Titular', '0000-0019-8000-0001', 'https://usal.es/martin', 58),
(59, 1, 'hash59', 'laumoreno', 'Laura', 'Moreno', 'Sanchez', 'ID', 'ESSAL582', '1982-07-15', 'Salamanca', '+34 923200101', 'l.moreno@usal.es', 'Asociada', '0000-0019-8000-0002', 'https://usal.es/moreno', 59),
(60, 1, 'hash60', 'javgarcia', 'Javier', 'Garcia', 'Pons', 'ID', 'ESSAL583', '1979-11-20', 'Salamanca', '+34 923200102', 'j.garcia@usal.es', 'Titular', '0000-0019-8000-0003', 'https://usal.es/garcia', 60),
(61, 1, 'hash61', 'rafamartinez', 'Rafael', 'Martinez', 'Soler', 'ID', 'ESVAL611', '1975-03-08', 'Valencia', '+34 963200100', 'r.martinez@uv.es', 'Titular', '0000-0020-9000-0001', 'https://uv.es/martinez', 61),
(62, 1, 'hash62', 'carlamoreno', 'Carla', 'Moreno', 'Lopez', 'ID', 'ESVAL612', '1981-07-22', 'Valencia', '+34 963200101', 'c.moreno@uv.es', 'Asociada', '0000-0020-9000-0002', 'https://uv.es/moreno', 62),
(63, 1, 'hash63', 'javiergarciaf', 'Javier', 'Garcia', 'Fernandez', 'ID', 'ESVAL613', '1979-11-14', 'Valencia', '+34 963200102', 'j.garcia@uv.es', 'Titular', '0000-0020-9000-0003', 'https://uv.es/garcia', 63),
(64, 1, 'hash64', 'luisrodriguez', 'Luis', 'Rodriguez', 'Sanchez', 'ID', 'ESUNED641', '1976-06-18', 'Madrid', '+34 913300100', 'l.rodriguez@uned.es', 'Titular', '0000-0021-1000-0001', 'https://uned.es/rodriguez', 64),
(65, 1, 'hash65', 'amartinezlpz', 'Ana', 'Martinez', 'Lopez', 'ID', 'ESUNED642', '1982-09-29', 'Madrid', '+34 913300101', 'a.martinez@uned.es', 'Asociada', '0000-0021-1000-0002', 'https://uned.es/martinez', 65),
(66, 1, 'hash66', 'jgarciapons', 'Javier', 'Garcia', 'Pons', 'ID', 'ESUNED643', '1979-12-05', 'Madrid', '+34 913300102', 'j.garcia@uned.es', 'Titular', '0000-0021-1000-0003', 'https://uned.es/garcia', 66),
(67, 1, 'hash67', 'amalvarezsant', 'Ana', 'Alvarez', 'Santos', 'ID', 'ESPOL671', '1975-04-12', 'Sevilla', '+34 954300100', 'a.alvarez@upo.es', 'Titular', '0000-0022-2000-0001', 'https://upo.es/alvarez', 67),
(68, 1, 'hash68', 'jfernandezlpz', 'Javier', 'Fernandez', 'Lopez', 'ID', 'ESPOL672', '1981-07-22', 'Sevilla', '+34 954300101', 'j.fernandez@upo.es', 'Asociado', '0000-0022-2000-0002', 'https://upo.es/fernandez', 68),
(69, 1, 'hash69', 'lmartingmz', 'Laura', 'Martin', 'Gomez', 'ID', 'ESPOL673', '1979-11-15', 'Sevilla', '+34 954300102', 'l.martin@upo.es', 'Titular', '0000-0022-2000-0003', 'https://upo.es/martin', 69),
(70, 1, 'hash70', 'pmartinezsoler', 'Pedro', 'Martinez', 'Soler', 'ID', 'ESUHU701', '1976-05-10', 'Huelva', '+34 959200100', 'p.martinez@uhu.es', 'Titular', '0000-0023-3000-0001', 'https://uhu.es/martinez', 70),
(71, 1, 'hash71', 'cgarcialpz', 'Carlos', 'Garcia', 'Lopez', 'ID', 'ESUHU702', '1982-09-18', 'Huelva', '+34 959200101', 'c.garcia@uhu.es', 'Asociado', '0000-0023-3000-0002', 'https://uhu.es/garcia', 71),
(72, 1, 'hash72', 'amartinfdez', 'Ana', 'Martin', 'Fernandez', 'ID', 'ESUHU703', '1979-12-05', 'Huelva', '+34 959200102', 'a.martin@uhu.es', 'Titular', '0000-0023-3000-0003', 'https://uhu.es/martin', 72),
(73, 1, 'hash73', 'javierrodriguezpons', 'Javier', 'Rodriguez', 'Pons', 'ID', 'ESULL731', '1975-03-14', 'San Cristóbal de La Laguna', '+34 922200100', 'j.rodriguez@ull.es', 'Titular', '0000-0024-4000-0001', 'https://ull.es/rodriguez', 73),
(74, 1, 'hash74', 'lauramartingomez', 'Laura', 'Martin', 'Gomez', 'ID', 'ESULL732', '1981-08-21', 'San Cristóbal de La Laguna', '+34 922200101', 'l.martin@ull.es', 'Asociada', '0000-0024-4000-0002', 'https://ull.es/martin', 74),
(75, 1, 'hash75', 'carlosmorenolopez', 'Carlos', 'Moreno', 'Lopez', 'ID', 'ESULL733', '1979-12-03', 'San Cristóbal de La Laguna', '+34 922200102', 'c.moreno@ull.es', 'Titular', '0000-0024-4000-0003', 'https://ull.es/moreno', 75),
(76, 1, 'hash76', 'pepemartinez', 'Pepe', 'Martinez', 'Gomez', 'ID', 'ESUJA761', '1976-04-12', 'Jaén', '+34 953200100', 'pe.martinez@uja.es', 'Titular', '0000-0025-5000-0001', 'https://uja.es/martinez', 76),
(77, 1, 'hash77', 'luisagarcia', 'Luisa', 'Garcia', 'Lopez', 'ID', 'ESUJA762', '1982-06-22', 'Jaén', '+34 953200101', 'l.garcia@uja.es', 'Asociada', '0000-0025-5000-0002', 'https://uja.es/garcia', 77),
(78, 1, 'hash78', 'anamariamartin', 'Ana Maria', 'Martin', 'Santos', 'ID', 'ESUJA763', '1979-11-15', 'Jaén', '+34 953200102', 'a.martin@uja.es', 'Titular', '0000-0025-5000-0003', 'https://uja.es/martin', 78),
(79, 1, 'hash79', 'jorgelopez', 'Jorge', 'Lopez', 'Fernandez', 'ID', 'ESUMAD791', '1975-05-10', 'Madrid', '+34 913400100', 'j.lopez@uam.es', 'Titular', '0000-0026-6000-0001', 'https://uam.es/lopez', 79),
(80, 1, 'hash80', 'amagmartin', 'Ana Magdalena', 'Martin', 'Lopez', 'ID', 'ESUMAD792', '1981-09-22', 'Madrid', '+34 913400101', 'a.martin@uam.es', 'Asociada', '0000-0026-6000-0002', 'https://uam.es/martin', 80),
(81, 1, 'hash81', 'carlogarcia', 'Carlo', 'Garcia', 'Fernandez', 'ID', 'ESUMAD793', '1979-12-05', 'Madrid', '+34 913400102', 'c.garcia@uam.es', 'Titular', '0000-0026-6000-0003', 'https://uam.es/garcia', 81),
(82, 1, 'hash82', 'mfernandez', 'Marina', 'Fernandez', 'Rojas', 'ID', 'ESUZAR821', '1976-06-10', 'Zaragoza', '+34 976200100', 'm.fernandez@unizar.es', 'Titular', '0000-0027-7000-0001', 'https://unizar.es/fernandez', 82),
(83, 1, 'hash83', 'dcastillo', 'Diego', 'Castillo', 'Navarro', 'ID', 'ESUZAR822', '1982-08-18', 'Zaragoza', '+34 976200101', 'd.castillo@unizar.es', 'Asociado', '0000-0027-7000-0002', 'https://unizar.es/castillo', 83),
(84, 1, 'hash84', 'sreyes', 'Sofia', 'Reyes', 'Marin', 'ID', 'ESUZAR823', '1979-11-28', 'Zaragoza', '+34 976200102', 's.reyes@unizar.es', 'Titular', '0000-0027-7000-0003', 'https://unizar.es/reyes', 84),
(85, 1, 'hash85', 'martahernandez', 'Marta', 'Hernandez', 'Ramos', 'ID', 'ESULPGC851', '1975-03-15', 'Las Palmas', '+34 928200100', 'm.hernandez@ulpgc.es', 'Titular', '0000-0028-8000-0001', 'https://ulpgc.es/hernandez', 85),
(86, 1, 'hash86', 'jorgeramirez', 'Jorge', 'Ramirez', 'Lopez', 'ID', 'ESULPGC852', '1982-07-20', 'Las Palmas', '+34 928200101', 'j.ramirez@ulpgc.es', 'Asociado', '0000-0028-8000-0002', 'https://ulpgc.es/ramirez', 86),
(87, 1, 'hash87', 'sfernandez', 'Sonia', 'Fernandez', 'Marin', 'ID', 'ESULPGC853', '1979-11-22', 'Las Palmas', '+34 928200102', 's.fernandez@ulpgc.es', 'Titular', '0000-0028-8000-0003', 'https://ulpgc.es/fernandez', 87),
(88, 1, 'hash88', 'mpalomo', 'Manuel', 'Palomo', 'Duarte', 'ID', 'ESUCAD881', '1980-04-12', 'Cádiz', '+34 956200100', 'mpalomo@uca.es', 'Coordinador de la asignatura', '0000-0001-6002-0319', 'https://produccioncientifica.uca.es/investigadores/113142/detalle', 88),
(89, 1, 'hash89', 'fergarcia', 'Fernando', 'Garcia', 'Santos', 'ID', 'ESUCAD882', '1982-09-10', 'Cádiz', '+34 956200101', 'f.garcia@uca.es', 'Asociado', '0000-0029-9000-0002', 'https://uca.es/garcia', 89),
(90, 1, 'hash90', 'vnavarro', 'Veronica', 'Navarro', 'Lopez', 'ID', 'ESUCAD883', '1979-12-05', 'Cádiz', '+34 956200102', 'v.navarro@uca.es', 'Titular', '0000-0029-9000-0003', 'https://uca.es/navarro', 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `id` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `descripcion` text,
  `horas_minimas` int DEFAULT NULL,
  `doc_adicional` text,
  `fecha_verificacion` date DEFAULT NULL,
  `fecha_aprobacion` date DEFAULT NULL,
  `fecha_boe` date DEFAULT NULL,
  `req_grado` text,
  `objetivos` text,
  `perfil_admision` text,
  `req_cualificacion` text,
  `id_universidad` int NOT NULL,
  `id_departamento` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- RELACIONES PARA LA TABLA `programa`:
--   `id_universidad`
--       `universidad` -> `id`
--   `id_departamento`
--       `departamento` -> `id`
--

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`id`, `nombre`, `activo`, `descripcion`, `horas_minimas`, `doc_adicional`, `fecha_verificacion`, `fecha_aprobacion`, `fecha_boe`, `req_grado`, `objetivos`, `perfil_admision`, `req_cualificacion`, `id_universidad`, `id_departamento`) VALUES
(1, 'Doctorado en Filología', 1, 'Doctorado en Filología de la Universidad de Florencia.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-06-15', '2022-03-10', '2022-05-01', 'Grado en Filología o afines', 'Formar investigadores en filología avanzada.', 'Estudiantes con alto rendimiento académico y pasión por la investigación.', 'Experiencia en investigación recomendada.', 1, 1),
(2, 'Doctorado en Derecho Público', 0, 'Doctorado en Derecho Público de la Universidad de Pekín.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-07-01', '2022-04-15', '2022-06-01', 'Grado en Derecho o afines', 'Formar investigadores expertos en derecho público.', 'Estudiantes con alto rendimiento académico y compromiso con la investigación jurídica.', 'Experiencia en investigación recomendada.', 2, 4),
(3, 'Doctorado en Matemáticas', 1, 'Doctorado en Matemáticas de la Universidad Al-Aqsa.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-05-20', '2022-03-30', '2022-05-15', 'Grado en Matemáticas o afines', 'Formar investigadores en matemáticas avanzadas.', 'Estudiantes con capacidad analítica y pasión por la investigación.', 'Experiencia en investigación recomendada.', 3, 8),
(4, 'Doctorado en Marketing y Comunicación', 0, 'Doctorado en Marketing y Comunicación de Victoria University.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-06-10', '2022-04-05', '2022-05-20', 'Grado en Marketing, Comunicación o afines', 'Formar investigadores en estrategias de marketing y comunicación.', 'Estudiantes con creatividad y habilidades analíticas.', 'Experiencia en investigación recomendada.', 4, 10),
(5, 'Doctorado en Derecho del Trabajo y de la Seguridad Social', 1, 'Doctorado en Derecho del Trabajo y de la Seguridad Social de University of South Australia.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-07-12', '2022-05-01', '2022-06-10', 'Grado en Derecho o afines', 'Formar investigadores expertos en derecho laboral y seguridad social.', 'Estudiantes con interés en investigación jurídica.', 'Experiencia en investigación recomendada.', 5, 14),
(6, 'Doctorado en Anatomía y Embriología Humana', 0, 'Doctorado en Anatomía y Embriología Humana de la Universidad de El Cairo.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-08-05', '2022-05-20', '2022-06-25', 'Grado en Medicina o Biomedicina', 'Formar investigadores en anatomía y embriología humana.', 'Estudiantes con interés en investigación biomédica.', 'Experiencia en investigación recomendada.', 6, 16),
(7, 'Doctorado en Ciencias de la Tierra', 1, 'Doctorado en Ciencias de la Tierra de la Universidad Keniata.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-05-30', '2022-04-10', '2022-05-25', 'Grado en Geología o Ciencias de la Tierra', 'Formar investigadores en ciencias de la tierra avanzadas.', 'Estudiantes con curiosidad científica y habilidades analíticas.', 'Experiencia en investigación recomendada.', 7, 21),
(8, 'Doctorado en Didáctica EF, Plástica y Musical', 0, 'Doctorado en Didáctica EF, Plástica y Musical de la Universidad del Bío-Bío.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-06-18', '2022-04-22', '2022-06-05', 'Grado en Educación o afines', 'Formar investigadores en didáctica y metodologías educativas.', 'Estudiantes con habilidades pedagógicas y compromiso con la investigación.', 'Experiencia en investigación recomendada.', 8, 22),
(9, 'Doctorado en Medicina y Cirugía', 1, 'Doctorado en Medicina y Cirugía de la Universidad del Zulia.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-07-25', '2022-05-15', '2022-06-20', 'Grado en Medicina', 'Formar investigadores en medicina y cirugía avanzada.', 'Estudiantes con interés en investigación biomédica y clínica.', 'Experiencia en investigación recomendada.', 9, 27),
(10, 'Doctorado en Química Física ', 0, 'Doctorado en Química Física de la Universidad de Guadalajara.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-06-12', '2022-04-18', '2022-05-30', 'Grado en Química o Física', 'Formar investigadores en química y física avanzada.', 'Estudiantes con interés en investigación científica y analítica.', 'Experiencia en investigación recomendada.', 10, 30),
(11, 'Doctorado en Anatomía Patológica, Histología, Historia de la Ciencia, Medicina Legal y Forense y Toxicología', 1, 'Doctorado en Anatomía Patológica, Histología, Historia de la Ciencia, Medicina Legal y Forense y Toxicología de la Universidad Pompeu Fabra.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-07-05', '2022-04-28', '2022-06-08', 'Grado en Medicina o afines', 'Formar investigadores en áreas biomédicas especializadas.', 'Estudiantes con interés en investigación avanzada.', 'Experiencia en investigación recomendada.', 11, 31),
(12, 'Doctorado en Ingeniería Química y Tecnología de Alimentos', 0, 'Doctorado en Ingeniería Química y Tecnología de Alimentos de la Universidad Miguel Hernández.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-06-22', '2022-05-05', '2022-06-12', 'Grado en Ingeniería Química o afines', 'Formar investigadores en ingeniería química y tecnología de alimentos.', 'Estudiantes con interés en investigación aplicada.', 'Experiencia en investigación recomendada.', 12, 36),
(13, 'Doctorado en Ingeniería Mecánica y Diseño Industrial', 1, 'Doctorado en Ingeniería Mecánica y Diseño Industrial de la Universidad Politécnica de Madrid.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-07-10', '2022-05-15', '2022-06-20', 'Grado en Ingeniería Mecánica o afines', 'Formar investigadores en diseño industrial y mecánica avanzada.', 'Estudiantes con habilidades técnicas y analíticas.', 'Experiencia en investigación recomendada.', 13, 39),
(14, 'Doctorado en Economía General', 0, 'Doctorado en Economía General de la Universidad Jaume I.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-06-05', '2022-04-25', '2022-06-05', 'Grado en Economía o afines', 'Formar investigadores en economía avanzada.', 'Estudiantes con interés en investigación económica.', 'Experiencia en investigación recomendada.', 14, 40),
(15, 'Doctorado en Ingeniería en Automática, Electrónica, Arquitectura y Redes de Computadores', 1, 'Doctorado en Ingeniería en Automática, Electrónica, Arquitectura y Redes de Computadores de la Universidad Autónoma de Barcelona.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-07-18', '2022-05-12', '2022-06-15', 'Grado en Ingeniería o afines', 'Formar investigadores en áreas de ingeniería avanzada.', 'Estudiantes con interés en investigación tecnológica.', 'Experiencia en investigación recomendada.', 15, 44),
(16, 'Doctorado en Derecho Privado', 0, 'Doctorado en Derecho Privado de la Universidad de La Rioja.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-06-28', '2022-05-08', '2022-06-18', 'Grado en Derecho o afines', 'Formar investigadores en derecho privado avanzado.', 'Estudiantes con interés en investigación jurídica.', 'Experiencia en investigación recomendada.', 16, 48),
(17, 'Doctorado en Enfermería y Fisioterapia', 1, 'Doctorado en Enfermería y Fisioterapia de la Universidad de Barcelona.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-07-03', '2022-04-30', '2022-06-10', 'Grado en Enfermería o Fisioterapia', 'Formar investigadores en áreas de salud.', 'Estudiantes con interés en investigación biomédica.', 'Experiencia en investigación recomendada.', 17, 49),
(18, 'Doctorado en Química Orgánica', 1, 'Doctorado en Química Orgánica de la Universidad Complutense de Madrid.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-06-12', '2022-04-18', '2022-05-30', 'Grado en Química', 'Formar investigadores en química orgánica avanzada.', 'Estudiantes con interés en investigación científica.', 'Experiencia en investigación recomendada.', 18, 52),
(19, 'Doctorado en Organización de Empresas', 0, 'Doctorado en Organización de Empresas de la Universidad de La Coruña.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-06-15', '2022-04-22', '2022-06-01', 'Grado en Administración o afines', 'Formar investigadores en organización y gestión empresarial avanzada.', 'Estudiantes con habilidades analíticas y de investigación.', 'Experiencia en investigación recomendada.', 19, 55),
(20, 'Doctorado en Didáctica de la Lengua y la Literatura', 1, 'Doctorado en Didáctica de la Lengua y la Literatura de la Universidad de Salamanca.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-07-01', '2022-05-05', '2022-06-10', 'Grado en Filología o Educación', 'Formar investigadores en didáctica avanzada.', 'Estudiantes con interés en investigación educativa.', 'Experiencia en investigación recomendada.', 20, 60),
(21, 'Doctorado en Filología Clásica', 0, 'Doctorado en Filología Clásica de la Universidad de Valencia.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-07-15', '2022-05-12', '2022-06-20', 'Grado en Filología o Letras Clásicas', 'Formar investigadores en filología clásica avanzada.', 'Estudiantes con habilidades analíticas y de investigación.', 'Experiencia en investigación recomendada.', 21, 63),
(22, 'Doctorado en Química Analítica', 1, 'Doctorado en Química Analítica de la Universidad Nacional de Educación a Distancia.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-06-28', '2022-05-08', '2022-06-18', 'Grado en Ingeniería Química o Alimentaria', 'Formar investigadores en química analítica avanzada.', 'Estudiantes con interés en investigación científica.', 'Experiencia en investigación recomendada.', 22, 66),
(23, 'Doctorado en Derecho Mercantil', 0, 'Doctorado en Derecho Mercantil de la Universidad Pablo de Olavide.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-07-03', '2022-04-30', '2022-06-10', 'Grado en Derecho o afines', 'Formar investigadores en derecho mercantil avanzado.', 'Estudiantes con interés en investigación jurídica.', 'Experiencia en investigación recomendada.', 23, 68),
(24, 'Doctorado en Biomedicina, Biotecnología y Salud Pública', 1, 'Doctorado en Biomedicina, Biotecnología y Salud Pública de la Universidad de Huelva.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-06-10', '2022-04-18', '2022-05-30', 'Grado en Medicina o Biomedicina', 'Formar investigadores en biomedicina y salud pública.', 'Estudiantes con interés en investigación biomédica.', 'Experiencia en investigación recomendada.', 24, 72),
(25, 'Doctorado en Máquinas y Motores Térmicos', 0, 'Doctorado en Máquinas y Motores Térmicos de la Universidad de La Laguna.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-06-22', '2022-05-05', '2022-06-12', 'Grado en Ingeniería Mecánica o afines', 'Formar investigadores en máquinas y motores térmicos.', 'Estudiantes con interés en investigación tecnológica.', 'Experiencia en investigación recomendada.', 25, 73),
(26, 'Doctorado en Psicología', 1, 'Doctorado en Psicología de la Universidad de Jaén.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-07-10', '2022-05-15', '2022-06-20', 'Grado en Psicología o afines', 'Formar investigadores en psicología avanzada.', 'Estudiantes con interés en investigación científica.', 'Experiencia en investigación recomendada.', 26, 77),
(27, 'Doctorado en Filología Francesa e Inglesa', 0, 'Doctorado en Filología Francesa e Inglesa de la Universidad de Madrid.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-06-05', '2022-04-25', '2022-06-05', 'Grado en Filología o Letras Modernas', 'Formar investigadores en filología avanzada.', 'Estudiantes con interés en investigación lingüística.', 'Experiencia en investigación recomendada.', 27, 79),
(28, 'Doctorado en Ciencias de los Materiales e Ingeniería Metalúrgica y Química Inorgánica', 1, 'Doctorado en Ciencias de los Materiales e Ingeniería Metalúrgica y Química Inorgánica de la Universidad de Zaragoza.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-06-18', '2022-04-22', '2022-06-05', 'Grado en Ingeniería de Materiales o Química Inorgánica', 'Formar investigadores en ciencia de materiales avanzada.', 'Estudiantes con interés en investigación tecnológica.', 'Experiencia en investigación recomendada.', 28, 82),
(29, 'Doctorado en Historia, Geografía y Filosofía (Las Palmas)', 0, 'Doctorado en Historia, Geografía y Filosofía de la Universidad de Las Palmas de Gran Canaria.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-07-25', '2022-05-15', '2022-06-20', 'Grado en Historia, Geografía o Filosofía', 'Formar investigadores en historia, geografía y filosofía avanzada.', 'Estudiantes con interés en investigación histórica y geográfica.', 'Experiencia en investigación recomendada.', 29, 87),
(30, 'Doctorado en Ingeniería Informática', 1, 'Doctorado en Ingeniería Informática de la Universidad de Cádiz.', 180, 'Plan de estudios y normativa disponible en la universidad.', '2021-06-12', '2022-04-18', '2022-05-30', 'Grado en Ingeniería Informática o afines', 'Formar investigadores en informática avanzada.', 'Estudiantes con interés en investigación tecnológica.', 'Experiencia en investigación recomendada.', 30, 88);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesis`
--

CREATE TABLE `tesis` (
  `id_estudiante` int NOT NULL,
  `id_linea` int NOT NULL,
  `defendida` tinyint(1) NOT NULL DEFAULT '0',
  `fecha_defensa` date DEFAULT NULL,
  `calificacion` float DEFAULT NULL,
  `idioma` varchar(30) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- RELACIONES PARA LA TABLA `tesis`:
--   `id_estudiante`
--       `estudiante` -> `id`
--   `id_linea`
--       `linea_investigacion` -> `id`
--

--
-- Volcado de datos para la tabla `tesis`
--

INSERT INTO `tesis` (`id_estudiante`, `id_linea`, `defendida`, `fecha_defensa`, `calificacion`, `idioma`, `titulo`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 1, 1, '2024-06-15', 9.1, 'Italiano', 'Evolución histórica de los dialectos toscanos', '2022-10-01', '2024-05-20'),
(2, 2, 1, '2024-07-02', 8.8, 'Italiano', 'Comparación literaria entre la poesía italiana y española del siglo XX', '2022-10-01', '2024-06-10'),
(3, 3, 0, NULL, NULL, 'Árabe', 'Estructuras algebraicas avanzadas en teoría de anillos', '2023-01-15', NULL),
(4, 4, 1, '2024-05-18', 9.3, 'Árabe', 'Aplicaciones de la geometría diferencial en modelos físicos modernos', '2022-11-01', '2024-04-30'),
(5, 5, 1, '2024-08-01', 8.7, 'Inglés', 'Regulaciones laborales internacionales comparadas en la era global', '2022-09-20', '2024-07-15'),
(6, 6, 1, '2024-09-12', 9, 'Inglés', 'Análisis crítico de los sistemas de seguridad social en países desarrollados', '2022-09-20', '2024-08-22'),
(7, 7, 0, NULL, NULL, 'Suajili', 'Modelos estructurales en regiones volcánicas africanas', '2023-02-10', NULL),
(8, 8, 1, '2024-09-20', 8.5, 'Suajili', 'Impacto del cambio climático en ecosistemas del África oriental', '2022-10-15', '2024-08-30'),
(9, 9, 1, '2024-03-10', 9.4, 'Español', 'Avances en técnicas de cirugía experimental aplicada a tejidos blandos', '2022-09-10', '2024-02-28'),
(10, 10, 0, NULL, NULL, 'Español', 'Estudios avanzados de respuesta fisiológica en enfermedades metabólicas', '2023-01-05', NULL),
(11, 11, 1, '2024-11-03', 9.2, 'Catalán', 'Análisis molecular de tejidos nerviosos en modelos experimentales', '2022-10-01', '2024-10-10'),
(12, 12, 0, NULL, NULL, 'Catalán', 'Modelos animales para el estudio de patologías degenerativas', '2023-03-01', NULL),
(13, 13, 1, '2024-04-18', 8.9, 'Español', 'Optimización del diseño de maquinaria industrial mediante simulación avanzada', '2022-09-01', '2024-03-20'),
(14, 14, 1, '2024-04-28', 9, 'Español', 'Desarrollo de nuevos materiales compuestos para aplicaciones estructurales', '2022-09-01', '2024-03-30'),
(15, 15, 0, NULL, NULL, 'Catalán', 'Sistemas de control automático para procesos industriales complejos', '2023-01-10', NULL),
(16, 16, 1, '2024-12-10', 9.3, 'Catalán', 'Optimización de convertidores de potencia para aplicaciones energéticas', '2022-10-05', '2024-11-20'),
(17, 17, 1, '2024-05-22', 8.7, 'Catalán', 'Protocolos avanzados de intervención en unidades de cuidados intensivos', '2022-09-12', '2024-04-30'),
(18, 18, 0, NULL, NULL, 'Catalán', 'Estrategias innovadoras para la rehabilitación de lesiones neuromusculares', '2023-02-15', NULL),
(19, 19, 1, '2024-06-15', 9.5, 'Español', 'Desarrollo de nuevas rutas sintéticas para compuestos orgánicos complejos', '2022-09-20', '2024-05-25'),
(20, 20, 1, '2024-06-28', 9, 'Español', 'Estudio químico de compuestos naturales con actividad biológica', '2022-09-20', '2024-05-30'),
(21, 21, 1, '2024-07-12', 8.6, 'Español', 'Metodologías innovadoras para la enseñanza de lenguas', '2022-10-01', '2024-06-20'),
(22, 22, 0, NULL, NULL, 'Español', 'Evolución literaria y pedagógica de la literatura infantil contemporánea', '2023-03-01', NULL),
(23, 23, 1, '2024-05-21', 8.9, 'Español', 'Nuevas técnicas instrumentales para el análisis químico avanzado', '2022-09-15', '2024-04-30'),
(24, 24, 1, '2024-06-01', 8.8, 'Español', 'Impacto de contaminantes emergentes en ecosistemas acuáticos', '2022-09-15', '2024-05-10'),
(25, 25, 0, NULL, NULL, 'Español', 'Aplicaciones de la biotecnología molecular en diagnóstico clínico', '2023-01-10', NULL),
(26, 26, 1, '2024-10-20', 9.1, 'Español', 'Estudios epidemiológicos sobre enfermedades infecciosas emergentes', '2022-10-05', '2024-09-30'),
(27, 27, 1, '2024-04-18', 8.7, 'Español', 'Evaluación de trastornos afectivos mediante nuevas herramientas clínicas', '2022-10-10', '2024-03-25'),
(28, 28, 0, NULL, NULL, 'Español', 'Procesamiento cognitivo en pacientes con deterioro neurológico', '2023-02-15', NULL),
(29, 29, 1, '2024-03-30', 9.4, 'Español', 'Síntesis y caracterización de nanomateriales avanzados', '2022-09-01', '2024-03-10'),
(30, 30, 1, '2024-04-14', 9.1, 'Español', 'Desarrollo de materiales compuestos para aplicaciones aeroespaciales', '2022-09-01', '2024-03-25'),
(31, 31, 0, NULL, NULL, 'Español', 'Modelos avanzados de inteligencia artificial para análisis predictivo', '2023-03-05', NULL),
(32, 32, 0, NULL, NULL, 'Español', 'Síntesis automática de datos biológicos mediante aprendizaje generativo aplicado a bases de datos bioinformáticas', '2026-04-10', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universidad`
--

CREATE TABLE `universidad` (
  `id` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `descripcion` text,
  `contacto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- RELACIONES PARA LA TABLA `universidad`:
--

--
-- Volcado de datos para la tabla `universidad`
--

INSERT INTO `universidad` (`id`, `nombre`, `pais`, `activo`, `descripcion`, `contacto`) VALUES
(1, 'Universidad de Florencia', 'Italia', 1, 'Universidad pública de Italia', 'universidad_de_florencia@email.com'),
(2, 'Universidad de Pekín', 'República Popular China', 1, 'Universidad pública de República Popular China', 'universidad_de_pekin@email.com'),
(3, 'Universidad Al-Aqsa', 'Palestina', 1, 'Universidad pública de Palestina', 'universidad_al-aqsa@email.com'),
(4, 'Victoria University', 'Australia', 1, 'Universidad pública de Australia', 'victoria_university@email.com'),
(5, 'University of South Australia', 'Australia', 1, 'Universidad pública de Australia', 'university_of_south_australia@email.com'),
(6, 'Universidad de El Cairo', 'Egipto', 1, 'Universidad pública de Egipto', 'universidad_de_el_cairo@email.com'),
(7, 'Universidad Keniata', 'Kenia', 1, 'Universidad pública de Kenia', 'universidad_keniata@email.com'),
(8, 'Universidad del Bío-Bío', 'Chile', 1, 'Universidad pública de Chile', 'universidad_del_bio-bio@email.com'),
(9, 'Universidad del Zulia', 'Venezuela', 1, 'Universidad pública de Venezuela', 'universidad_del_zulia@email.com'),
(10, 'Universidad de Guadalajara', 'México', 1, 'Universidad pública de México', 'universidad_de_guadalajara@email.com'),
(11, 'Universidad Pompeu Fabra', 'España', 1, 'Universidad pública de España', 'universidad_pompeu_fabra@email.com'),
(12, 'Universidad Miguel Hernández', 'España', 1, 'Universidad pública de España', 'universidad_miguel_hernandez@email.com'),
(13, 'Universidad Politécnica de Madrid', 'España', 1, 'Universidad pública de España', 'universidad_politecnica_de_madrid@email.com'),
(14, 'Universidad Jaume I', 'España', 1, 'Universidad pública de España', 'universidad_jaume_i@email.com'),
(15, 'Universidad Autónoma de Barcelona', 'España', 1, 'Universidad pública de España', 'universidad_autonoma_de_barcelona@email.com'),
(16, 'Universidad de La Rioja', 'España', 1, 'Universidad pública de España', 'universidad_de_la_rioja@email.com'),
(17, 'Universidad de Barcelona', 'España', 1, 'Universidad pública de España', 'universidad_de_barcelona@email.com'),
(18, 'Universidad Complutense de Madrid', 'España', 1, 'Universidad pública de España', 'universidad_complutense_de_madrid@email.com'),
(19, 'Universidad de La Coruña', 'España', 1, 'Universidad pública de España', 'universidad_de_la_coruna@email.com'),
(20, 'Universidad de Salamanca', 'España', 1, 'Universidad pública de España', 'universidad_de_salamanca@email.com'),
(21, 'Universidad de Valencia', 'España', 1, 'Universidad pública de España', 'universidad_de_valencia@email.com'),
(22, 'Universidad Nacional de Educación a Distancia', 'España', 1, 'Universidad pública de España', 'universidad_nacional_de_educacion_a_distancia@email.com'),
(23, 'Universidad Pablo de Olavide', 'España', 1, 'Universidad pública de España', 'universidad_pablo_de_olavide@email.com'),
(24, 'Universidad de Huelva', 'España', 1, 'Universidad pública de España', 'universidad_de_huelva@email.com'),
(25, 'Universidad de La Laguna', 'España', 1, 'Universidad pública de España', 'universidad_de_la_laguna@email.com'),
(26, 'Universidad de Jaén', 'España', 1, 'Universidad pública de España', 'universidad_de_jaen@email.com'),
(27, 'Universidad de Madrid', 'España', 1, 'Universidad pública de España', 'universidad_de_madrid@email.com'),
(28, 'Universidad de Zaragoza', 'España', 1, 'Universidad pública de España', 'universidad_de_zaragoza@email.com'),
(29, 'Universidad de Las Palmas de Gran Canaria', 'España', 1, 'Universidad pública de España', 'universidad_de_las_palmas_de_gran_canaria@email.com'),
(30, 'Universidad de Cádiz', 'España', 1, 'Universidad pública de España', 'universidad_de_cadiz@email.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estudiante` (`id_estudiante`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`,`id_universidad`),
  ADD KEY `id_universidad` (`id_universidad`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `documento_identidad` (`documento_identidad`),
  ADD KEY `id_tutor` (`id_tutor`),
  ADD KEY `id_programa` (`id_programa`);

--
-- Indices de la tabla `linea_investigacion`
--
ALTER TABLE `linea_investigacion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `documento_identidad` (`documento_identidad`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `id_universidad` (`id_universidad`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `tesis`
--
ALTER TABLE `tesis`
  ADD PRIMARY KEY (`id_estudiante`,`id_linea`),
  ADD UNIQUE KEY `id_estudiante` (`id_estudiante`,`id_linea`),
  ADD KEY `id_linea` (`id_linea`);

--
-- Indices de la tabla `universidad`
--
ALTER TABLE `universidad`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `linea_investigacion`
--
ALTER TABLE `linea_investigacion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `universidad`
--
ALTER TABLE `universidad`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `actividad_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`id_universidad`) REFERENCES `universidad` (`id`);

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`id_tutor`) REFERENCES `profesor` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `estudiante_ibfk_2` FOREIGN KEY (`id_programa`) REFERENCES `programa` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Filtros para la tabla `programa`
--
ALTER TABLE `programa`
  ADD CONSTRAINT `programa_ibfk_1` FOREIGN KEY (`id_universidad`) REFERENCES `universidad` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `programa_ibfk_2` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Filtros para la tabla `tesis`
--
ALTER TABLE `tesis`
  ADD CONSTRAINT `tesis_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tesis_ibfk_2` FOREIGN KEY (`id_linea`) REFERENCES `linea_investigacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
