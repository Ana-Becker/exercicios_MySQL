SELECT associado.Nome, associado.Plano_numero, CONCAT('R$ ', FORMAT(plano.Valor, 2)) AS Valor 
FROM associado LEFT JOIN plano ON associado.Plano_numero = plano.Numero;