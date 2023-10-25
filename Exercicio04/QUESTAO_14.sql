-- QUESTAO 14

SELECT aluno.nome AS aluno, curso.nome AS curso, matricula.data_matricula AS data_matricula, curso.inicio,
CASE 
	WHEN DATEDIFF( curso.inicio, matricula.data_matricula) > 0 THEN 'sim'
    ELSE 'nao'
END AS brinde
FROM (aluno
INNER JOIN matricula
ON aluno.ra = matricula.aluno_ra
INNER JOIN curso
ON matricula.Curso_codigo = curso.codigo);