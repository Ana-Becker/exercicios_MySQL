
SELECT nome, plano_numero FROM associado 
WHERE plano_numero LIKE '%E%';

SELECT nome, plano_numero FROM associado 
WHERE plano_numero LIKE '%B%' 
OR plano_numero LIKE'%M%';