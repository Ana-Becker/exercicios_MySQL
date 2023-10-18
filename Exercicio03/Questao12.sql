SELECT nome, valor, plano_numero 
FROM associado INNER JOIN plano ON plano_numero = numero 
WHERE numero LIKE '%1%';