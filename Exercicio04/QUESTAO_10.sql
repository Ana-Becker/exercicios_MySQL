-- QUESTAO 10

SELECT Nome FROM Curso
WHERE Carga_horaria = (SELECT Carga_horaria FROM Curso
WHERE Nome = 'auto cad') AND Nome <> 'auto cad';