SELECT * FROM associado INNER JOIN plano 
ON plano_numero = numero 
ORDER BY numero;

SELECT * FROM associado INNER JOIN plano 
ON plano_numero = numero 
ORDER BY numero ASC, nome DESC;