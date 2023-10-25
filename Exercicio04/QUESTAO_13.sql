-- QUESTAO 13

SELECT Nome , DATE_FORMAT(Inicio, '%m/%Y') AS Inicio
FROM Curso
WHERE DATE_FORMAT(Inicio, '%m/%Y') = '01/2008';