-- QUESTAO 19

SELECT nome AS Curso, PERIOD_DIFF(DATE_FORMAT(Termino, '%Y%m'), DATE_FORMAT(Inicio, '%Y%m')) 
AS Duracao_Meses
FROM Curso;