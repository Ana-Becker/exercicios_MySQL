-- QUESTAO 05

SELECT Curso.Nome AS Curso, SUM(Matricula.Valor) AS Valor_por_Curso
FROM Curso INNER JOIN Matricula
ON Curso.Codigo = Matricula.Curso_codigo
GROUP BY Curso.Nome;