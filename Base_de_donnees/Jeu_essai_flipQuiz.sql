USE FlipQuiz;

-- TRUNCATE TABLE question;
-- TRUNCATE TABLE categorie;
-- TRUNCATE TABLE quiz;

INSERT INTO quiz
VALUES
(NULL, "Quiz Test 1", "Ceci est le Quiz Test 1 il est composé de catégories");

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