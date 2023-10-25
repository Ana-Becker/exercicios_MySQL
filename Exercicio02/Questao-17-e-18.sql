SELECT AVG(Valor)
FROM duplicata
WHERE Vencimento LIKE '%2016%';

SELECT Nome, Numero, Valor
FROM duplicata 
WHERE Valor > 10000;