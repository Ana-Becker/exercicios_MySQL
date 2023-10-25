-- QUESTAO 17

SELECT aluno.nome AS Aluno, matricula.valor AS Valor_Matricula, 
DAYNAME(matricula.data_matricula) AS Data_Matricula, 
CASE
    WHEN DAYNAME(matricula.data_matricula) = 'SATURDAY' THEN CONCAT('R$ ', FORMAT(matricula.valor*0.5, 2)) 
    ELSE 'SEM DESCONTO'
END AS Valor_Restituir 
FROM Aluno INNER JOIN Matricula
ON aluno.ra = matricula.aluno_ra;