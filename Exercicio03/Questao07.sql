SELECT nome, plano_numero, cidade, CONCAT('R$ ', FORMAT(valor, 2)) AS valor 
FROM associado LEFT JOIN plano ON plano_numero = numero 
WHERE cidade = 'SAO PAULO';