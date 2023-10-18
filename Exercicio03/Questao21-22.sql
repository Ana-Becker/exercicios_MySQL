SELECT * FROM plano 
WHERE valor >= 300 AND valor <= 500;

SELECT nome, numero, descricao, CONCAT('R$ ', FORMAT(valor, 2)) 
FROM associado INNER JOIN plano ON plano_numero = numero
WHERE nome LIKE '%AMARAL%';