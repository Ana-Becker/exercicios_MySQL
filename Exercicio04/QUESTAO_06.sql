-- QUESTAO 06

SELECT Curso.Nome AS Curso, SUM(Matricula.Valor) AS Valor_por_Curso
FROM Curso INNER JOIN Matricula
ON Curso.Codigo = Matricula.Curso_codigo
GROUP BY Curso.Nome
UNION
SELECT NULL AS Valor_Total, CONCAT('Valor Total: R$ ', SUM(Matricula.Valor))
FROM Matricula;

-- OU

SELECT Curso.Nome AS Curso, SUM(Matricula.Valor) AS Valor_por_Curso
FROM Curso INNER JOIN Matricula
ON Curso.Codigo = Matricula.Curso_codigo
GROUP BY Curso.Nome;

SELECT CONCAT('R$ ', SUM(Matricula.valor))  AS Valor_Total
FROM matricula;