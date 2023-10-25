-- QUESTAO 18

SELECT NOME, FORMAT(PERIOD_DIFF(DATE_FORMAT(CURRENT_DATE(), '%Y%m'), DATE_FORMAT(NASCIMENTO, '%Y%m'))/12, 0)  
AS Idade 
FROM Aluno;

-- A profa demonstrou um metodo mais simples, o qual deve ser utilizado:

SELECT aluno.nome, TIMESTAMPDIFF(YEAR, aluno.nascimento, CURRENT_DATE) 
as idade FROM aluno
GROUP BY aluno.nome;

-- Syntax:
-- TIMESTAMPDIFF(unit,datetime_expr1,datetime_expr2);