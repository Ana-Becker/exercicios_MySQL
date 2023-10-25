-- QUESTAO 3

SELECT DISTINCT Curso.Nome AS Curso, COUNT(Aluno.RA) AS Qtde_Alunos
FROM Curso INNER JOIN Matricula
ON Curso.Codigo = Matricula.Curso_codigo
INNER JOIN Aluno
ON Aluno.RA = Matricula.Aluno_RA
GROUP BY Curso.Nome;