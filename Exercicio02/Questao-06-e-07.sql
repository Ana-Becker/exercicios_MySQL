SELECT SUM(Valor) AS Divida_Papelaria_Silva
FROM duplicata
WHERE Nome = 'PAPELARIA SILVA';

SELECT Valor, Nome 
FROM duplicata
WHERE Nome = 'PAPELARIA SILVA';

DELETE FROM duplicata
WHERE Numero = '770710';

SELECT * FROM duplicata
WHERE Nome = 'LIVRARIA FERNANDES';