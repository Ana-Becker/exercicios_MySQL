-- QUESTAO 08

SELECT Curso.Nome AS Curso, CONCAT('R$ ', FORMAT( AVG(Matricula.Valor),2 ))  AS Valor_medio
FROM Curso INNER JOIN Matricula
ON Curso.Codigo = Matricula.Curso_codigo
GROUP BY Curso.Nome;