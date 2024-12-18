DROP DATABASE IF EXISTS FlipQuiz;
CREATE DATABASE IF NOT EXISTS FlipQuiz;

USE FlipQuiz;

CREATE TABLE IF NOT EXISTS quiz
(
	quiz_id INT AUTO_INCREMENT,
	quiz_titre VARCHAR(30) NOT NULL,
    quiz_description VARCHAR(255) NOT NULL,
    PRIMARY KEY (quiz_id)
);

CREATE TABLE IF NOT EXISTS categorie
(
	categorie_id INT AUTO_INCREMENT,
	categorie_nom VARCHAR(30) NOT NULL,
    quiz_id INT,
    PRIMARY KEY (categorie_id),
    FOREIGN KEY (quiz_id) REFERENCES quiz(quiz_id)
);

CREATE TABLE IF NOT EXISTS question
(
	question_id INT AUTO_INCREMENT,
	question_contenu VARCHAR(100) NOT NULL,
    question_reponse VARCHAR(100) NOT NULL,
    question_niveau TINYINT NOT NULL,
    question_points SMALLINT NOT NULL,
    categorie_id INT,
    PRIMARY KEY (question_id),
    FOREIGN KEY (categorie_id) REFERENCES categorie(categorie_id)
);

