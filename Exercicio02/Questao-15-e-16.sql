UPDATE duplicata
SET Valor = Valor*1.15 
WHERE Vencimento BETWEEN '2016-01-01' AND '2016-12-31'; 

SELECT * FROM duplicata;

UPDATE duplicata
SET Valor = Valor*1.05 
WHERE Vencimento BETWEEN '2017-01-01' AND '2017-05-31' 
AND Nome = 'LER E SABER';