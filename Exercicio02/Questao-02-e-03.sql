SELECT Numero, Banco 
FROM duplicata
WHERE Banco = 'ITAU';

SELECT COUNT(Numero)
FROM duplicata 
WHERE Banco = 'ITAU';
