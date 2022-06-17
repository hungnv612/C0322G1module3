CREATE DATABASE `student-management`;
use `student-management`;
CREATE TABLE `teacher`(
`id` INT NOT NULL,
`name` VARCHAR(45)NULL,
`age`  INT NULL,
`country`VARCHAR(45)NULL,
PRIMARY KEY (`id`));

CREATE TABLE `class`(
`id` INT NOT NULL,
`name` VARCHAR(45)NULL,
PRIMARY KEY (`id`));


