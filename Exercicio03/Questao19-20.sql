SELECT * FROM associado INNER JOIN plano 
ON plano_numero = numero 
WHERE NOT numero LIKE '%M%';

SELECT nome, descricao FROM associado INNER JOIN plano 
ON plano_numero = numero 
ORDER by nome;