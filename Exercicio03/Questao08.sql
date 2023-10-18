SELECT * FROM associado INNER JOIN plano 
ON plano.numero = associado.plano_numero 
WHERE associado.nome LIKE '%silva%';