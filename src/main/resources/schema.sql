-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 12, 2022 at 08:44 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10
SET
    SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET
    time_zone = "+00:00";

--
-- Database: `notacion_datasource`
--
-- --------------------------------------------------------
-- --------------------------------------------------------
--
-- Table structure for table `students`
--
CREATE TABLE IF NOT EXISTS `students`(
    idStudent int AUTO_INCREMENT,
    name varchar(35) NOT NULL,
    lastName varchar(35) NOT NULL,
    active tinyint NOT NULL,
    PRIMARY KEY (idStudent)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------
--
-- Table structure for table `subjects`
--
CREATE TABLE IF NOT EXISTS `subjects` (
    `idSubject` int(11) NOT NULL AUTO_INCREMENT,
    `subject` varchar(50) NOT NULL,
    PRIMARY KEY (`idSubject`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Table structure for table `students_subjects`
--
CREATE TABLE IF NOT EXISTS `students_subjects` (
    `idStudent` int(11) NOT NULL,
    `idSubject` int(11) NOT NULL,
    `current` tinyint(1) NOT NULL,
    FOREIGN KEY (`idStudent`) REFERENCES `students`(`idStudent`),
    FOREIGN KEY (`idSubject`) REFERENCES `subjects`(`idSubject`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------
-- --------------------------------------------------------
--
-- Table structure for table `teachers`
--
CREATE TABLE IF NOT EXISTS `teachers` (
    `idTeacher` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(35) DEFAULT NULL,
    `lastName` varchar(35) DEFAULT NULL,
    `subject` int(11) DEFAULT NULL,
    `active` tinyint(4) NOT NULL,
    PRIMARY KEY (`idTeacher`),
    KEY `subject` (`subject`),
    FOREIGN KEY (`subject`) REFERENCES `subjects` (`idSubject`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Table structure for table `grades`
--
CREATE TABLE IF NOT EXISTS `grades`(
    idGrade int AUTO_INCREMENT,
    subject int NOT NULL,
    student int NOT NULL,
    teacher int NOT NULL,
    grade float NOT NULL,
    PRIMARY KEY (idGrade),
    FOREIGN KEY (subject) REFERENCES subjects(idSubject),
    FOREIGN KEY (student) REFERENCES students(idStudent),
    FOREIGN KEY (teacher) REFERENCES teachers(idTeacher)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;