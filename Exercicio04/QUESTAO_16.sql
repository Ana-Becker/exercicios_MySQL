-- QUESTAO 16

SELECT Aluno.Nome AS Aluno, DAYNAME(matricula.data_matricula) AS dia_matricula, 
CASE
    WHEN DAYNAME(data_matricula) = 'SATURDAY' THEN 'sim'
    ELSE 'nao'
END AS brinde
FROM aluno INNER JOIN matricula
ON aluno.ra = matricula.aluno_ra;