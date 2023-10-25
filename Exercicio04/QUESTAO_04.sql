-- QUESTAO 04

SELECT Curso.Nome AS Curso, COUNT(Aluno.RA) AS Qtde_Alunos
FROM Curso LEFT JOIN Matricula
ON Curso.Codigo = Matricula.Curso_codigo
LEFT JOIN Aluno
ON Aluno.RA = Matricula.Aluno_RA
GROUP BY Curso.Nome;