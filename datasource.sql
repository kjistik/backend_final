DROP USER IF EXISTS notacion_datasource @localhost;

DROP DATABASE IF EXISTS notacion_datasource;

CREATE USER 'notacion_datasource' @'localhost' IDENTIFIED BY 'TheCakeIsaLie';

GRANT USAGE ON *.* TO 'notacion_datasource' @'localhost';

CREATE DATABASE IF NOT EXISTS `notacion_datasource`;

GRANT ALL PRIVILEGES ON *.* TO notacion_datasource @localhost;

USE notacion_datasource;

-- --------------------------------------------------------
--
-- Table structure for table `grades`
--
CREATE TABLE `grades` (
    `idGrade` bigint(20) NOT NULL,
    `grade` int(11) DEFAULT NULL,
    `grades_student` bigint(20) DEFAULT NULL,
    `grades_teacher` bigint(20) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------
--
-- Table structure for table `students`
--
CREATE TABLE `students` (
    `idStudent` bigint(20) NOT NULL,
    `active` bit(1) DEFAULT NULL,
    `student_lastName` varchar(255) DEFAULT NULL,
    `student_name` varchar(255) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------
--
-- Table structure for table `subjects`
--
CREATE TABLE `subjects` (
    `idSubject` bigint(20) NOT NULL,
    `active` bit(1) DEFAULT NULL,
    `subject_name` varchar(255) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------
--
-- Table structure for table `teachers`
--
CREATE TABLE `teachers` (
    `idTeacher` bigint(20) NOT NULL,
    `active` bit(1) DEFAULT NULL,
    `teacher_lastName` varchar(255) DEFAULT NULL,
    `teacher_name` varchar(255) DEFAULT NULL,
    `subject_teacher` bigint(20) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Indexes for dumped tables
--
--
-- Indexes for table `grades`
--
ALTER TABLE
    `grades`
ADD
    PRIMARY KEY (`idGrade`),
ADD
    KEY `FKep0phspdqb45s9i4sw39ns3ln` (`grades_student`),
ADD
    KEY `FKjyatvwc8mdupi6f6aqqdmkjjw` (`grades_teacher`);

--
-- Indexes for table `students`
--
ALTER TABLE
    `students`
ADD
    PRIMARY KEY (`idStudent`);

--
-- Indexes for table `subjects`
--
ALTER TABLE
    `subjects`
ADD
    PRIMARY KEY (`idSubject`);

--
-- Indexes for table `teachers`
--
ALTER TABLE
    `teachers`
ADD
    PRIMARY KEY (`idTeacher`),
ADD
    KEY `FK68iatdehbmmd2n6knbgcf1sx5` (`subject_teacher`);

--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE
    `grades`
MODIFY
    `idGrade` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE
    `students`
MODIFY
    `idStudent` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE
    `subjects`
MODIFY
    `idSubject` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE
    `teachers`
MODIFY
    `idTeacher` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--
--
-- Constraints for table `grades`
--
ALTER TABLE
    `grades`
ADD
    CONSTRAINT `FKep0phspdqb45s9i4sw39ns3ln` FOREIGN KEY (`grades_student`) REFERENCES `students` (`idStudent`),
ADD
    CONSTRAINT `FKjyatvwc8mdupi6f6aqqdmkjjw` FOREIGN KEY (`grades_teacher`) REFERENCES `teachers` (`idTeacher`);

--
-- Constraints for table `teachers`
--
ALTER TABLE
    `teachers`
ADD
    CONSTRAINT `FK68iatdehbmmd2n6knbgcf1sx5` FOREIGN KEY (`subject_teacher`) REFERENCES `subjects` (`idSubject`);

--
-- Data dump
--
INSERT INTO
    `subjects`
VALUES
    (1, 1, 'Historia'),
    (2, 1, 'Matemática'),
    (3, 1, 'Física'),
    (4, 1, 'Ecología');

INSERT INTO
    `teachers`
VALUES
    (1000, 1, 'García', 'Gustavo', 3),
    (null, 1, 'Petrikov', 'Simon', 3),
    (null, 1, 'Hayek', 'Frederick', 1),
    (null, 1, 'Schuyler', 'Elizabeth', 1),
    (null, 1, 'Cediño', 'Julio', 2),
    (null, 1, 'Miranda', 'Manuel', 2),
    (null, 1, 'García', 'Tamara', 4);

INSERT INTO
    `students`
values
    (1000, 1, 'Coronel', 'Martín'),
    (null, 1, 'Nigma', 'Edward'),
    (null, 1, 'Wayne', 'Bruce'),
    (null, 1, 'Napier', 'Jack'),
    (null, 1, 'Díaz', 'Bruno'),
    (null, 1, 'Puppington', 'Clay');

INSERT INTO
    `grades`
VALUES
    (1, 9, 1000, 1003);

INSERT INTO
    `grades`
VALUES
    (2, 7, 1000, 1000);

INSERT INTO
    `grades`
VALUES
    (3, 8, 1000, 1005);

INSERT INTO
    `grades`
VALUES
    (4, 8, 1000, 1006);

INSERT INTO
    `grades`
VALUES
    (5, 8, 1001, 1002);

INSERT INTO
    `grades`
VALUES
    (6, 4, 1001, 1004);

INSERT INTO
    `grades`
VALUES
    (7, 10, 1001, 1001);

INSERT INTO
    `grades`
VALUES
    (8, 5, 1001, 1006);

INSERT INTO
    `grades`
VALUES
    (9, 4, 1002, 1003);

INSERT INTO
    `grades`
VALUES
    (10, 7, 1002, 1005);

INSERT INTO
    `grades`
VALUES
    (11, 10, 1002 1000);

INSERT INTO
    `grades`
VALUES
    (12, 3, 1002, 1006);

INSERT INTO
    `grades`
VALUES
    (13, 9, 1003, 1002);

INSERT INTO
    `grades`
VALUES
    (14, 6, 1003, 1004);

INSERT INTO
    `grades`
VALUES
    (15, 1, 1003, 1001);

INSERT INTO
    `grades`
VALUES
    (16, 1, 1003, 1006);

INSERT INTO
    `grades`
VALUES
    (17, 4, 1004, 1003);

INSERT INTO
    `grades`
VALUES
    (18, 9, 1004, 1004);

INSERT INTO
    `grades`
VALUES
    (19, 6, 1004, 1001);

INSERT INTO
    `grades`
VALUES
    (20, 4, 1004, 1006);

INSERT INTO
    `grades`
VALUES
    (21, 10, 1005, 1003);

INSERT INTO
    `grades`
VALUES
    (22, 2, 1005, 1004);

INSERT INTO
    `grades`
VALUES
    (23, 7, 1005, 1001);

INSERT INTO
    `grades`
VALUES
    (24, 3, 1005, 1006);

COMMIT;