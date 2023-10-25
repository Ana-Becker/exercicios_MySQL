SELECT Numero, Vencimento, Valor, Nome 
FROM duplicata
WHERE Vencimento LIKE '%2017%';

SELECT Numero, Vencimento, Valor, Nome 
FROM duplicata
WHERE Banco <> 'ITAU' AND Banco <> 'SANTANDER';