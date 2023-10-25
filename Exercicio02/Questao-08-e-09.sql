SELECT * FROM duplicata
ORDER BY Nome;

SELECT Nome, Banco, CONCAT('R$ ', Valor) AS Valor, Vencimento
FROM duplicata
ORDER BY Vencimento;