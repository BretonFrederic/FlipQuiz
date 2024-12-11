DROP DATABASE IF EXISTS FlipQuiz;
CREATE DATABASE IF NOT EXISTS FlipQuiz;

USE FlipQuiz;

CREATE TABLE IF NOT EXISTS quiz
(
	quiz_id INT AUTO_INCREMENT PRIMARY KEY,
	quiz_titre VARCHAR(30) NOT NULL,
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

INSERT INTO quiz
(quiz_titre, quiz_description)
VALUE
('Quiz Test 1", "Ceci est le Quiz Test 1 il est composé de catégories');

INSERT INTO categorie
(categorie_nom)
VALUES
('UML'),
('Merise'),
('Movies'),
('Taratata'),
('English Basics'),
('Alsace');

INSERT INTO question
(question_contenu, question_reponse, question_niveau, question_points)
VALUES
('Quelle est la réponse à la question ?', 'Réponse à la question.', 1, 100),
('Quelle est la réponse à la question ?', 'Réponse à la question.', 2, 200),
('Quelle est la réponse à la question ?', 'Réponse à la question.', 3, 300),
('Quelle est la réponse à la question ?', 'Réponse à la question.', 4, 400),
('Quelle est la réponse à la question ?', 'Réponse à la question.', 5, 500);

