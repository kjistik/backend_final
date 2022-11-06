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

COMMIT;