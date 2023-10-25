-- QUESTAO 12

SELECT Curso.Nome 
FROM Curso INNER JOIN Matricula
ON Curso.Codigo = Matricula.Curso_codigo
WHERE DATE_FORMAT(Curso.Inicio, '%m/%Y') = '01/2008';