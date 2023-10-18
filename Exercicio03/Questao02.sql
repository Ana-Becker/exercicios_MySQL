SELECT*FROM plano INNER JOIN associado
ON associado.plano = plano.numero;

ALTER TABLE associado
RENAME COLUMN plano TO plano_numero;