








SELECT * FROM duplicata
ORDER BY Nome;

SELECT Nome, Banco, CONCAT('R$ ', Valor) AS Valor, Vencimento
FROM duplicata
ORDER BY Vencimento;

UPDATE duplicata
SET Banco = 'SANTANDER'
WHERE Banco = 'BANCO DO BRASIL';

SELECT Nome, Banco
FROM duplicata
WHERE Banco = "BRADESCO";

SELECT Vencimento
FROM duplicata
WHERE Vencimento BETWEEN '2016-01-01' AND '2016-12-31';

SELECT SUM(Valor)  
FROM duplicata
WHERE Vencimento BETWEEN '2016-08-01' AND '2016-08-30';

UPDATE duplicata
SET Valor = Valor*1.15 
WHERE Vencimento BETWEEN '2016-01-01' AND '2016-12-31'; 

SELECT * FROM duplicata;

UPDATE duplicata
SET Valor = Valor*1.05 
WHERE Vencimento BETWEEN '2017-01-01' AND '2017-05-31' 
AND Nome = 'LER E SABER';

SELECT AVG(Valor)
FROM duplicata
WHERE Vencimento LIKE '%2016%';

SELECT Nome, Numero, Valor
FROM duplicata 
WHERE Valor > 10000;

SELECT SUM(Valor)
FROM duplicata
WHERE Banco = 'SANTANDER';

SELECT DISTINCT Nome 
FROM duplicata
WHERE Banco = 'BRADESCO' OR Banco = 'ITAU';