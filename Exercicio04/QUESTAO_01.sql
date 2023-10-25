-- QUESTAO 1
SELECT Aluno.RA, Aluno.Nome AS Aluno, Curso.Nome AS Curso
FROM Aluno INNER JOIN Matricula 
ON Aluno.RA = Matricula.Aluno_RA
INNER JOIN Curso
ON Curso.Codigo = Matricula.Curso_codigo;   