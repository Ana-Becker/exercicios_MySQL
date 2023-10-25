-- QUESTAO 07

SELECT CONCAT('R$ ', FORMAT( AVG(Valor, 2) )) AS Valor_medio
FROM Matricula;