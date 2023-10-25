-- QUESTAO 15

SELECT Inicio, Nome FROM Curso
WHERE DATEDIFF (CURRENT_DATE, curso.inicio) < 0;