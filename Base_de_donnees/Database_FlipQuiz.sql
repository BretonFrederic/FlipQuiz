DROP DATABASE IF EXISTS FlipQuiz;
CREATE DATABASE IF NOT EXISTS FlipQuiz;

USE FlipQuiz;

CREATE TABLE IF NOT EXISTS equipe
(
	equipe_id INT AUTO_INCREMENT PRIMARY KEY,
	equipe_nom VARCHAR(100) NOT NULL,
    equipe_total_points INT
);

CREATE TABLE IF NOT EXISTS quiz
(
	quiz_id INT AUTO_INCREMENT PRIMARY KEY,
	quiz_theme VARCHAR(30) NOT NULL,
    quiz_description VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS categorie
(
	categorie_id INT AUTO_INCREMENT PRIMARY KEY,
	categorie_nom VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS question
(
	question_id INT AUTO_INCREMENT PRIMARY KEY,
	question_contenu VARCHAR(100) NOT NULL,
    question_reponse VARCHAR(100) NOT NULL,
    question_niveau TINYINT NOT NULL,
    question_points SMALLINT NOT NULL
);