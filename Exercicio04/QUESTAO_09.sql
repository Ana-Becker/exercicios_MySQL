-- QUESTAO 09

SELECT Curso.Nome AS Curso, COUNT(Matricula.Aluno_RA) AS Qtde_Alunos
FROM Curso LEFT JOIN Matricula
ON Curso.Codigo = Matricula.Curso_codigo
GROUP BY Curso.Nome
HAVING COUNT(Matricula.Curso_codigo) >=2;