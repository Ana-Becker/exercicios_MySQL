UPDATE duplicata
SET Banco = 'SANTANDER'
WHERE Banco = 'BANCO DO BRASIL';

SELECT Nome, Banco
FROM duplicata
WHERE Banco = "BRADESCO";