SELECT SUM(Valor)
FROM duplicata
WHERE Banco = 'SANTANDER';

SELECT DISTINCT Nome 
FROM duplicata
WHERE Banco = 'BRADESCO' OR Banco = 'ITAU';