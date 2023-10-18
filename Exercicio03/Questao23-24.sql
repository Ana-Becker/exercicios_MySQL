SELECT nome, cidade FROM associado 
WHERE cidade = 'DIADEMA';

UPDATE plano
SET valor = valor*1.06 
WHERE numero LIKE '%M%';