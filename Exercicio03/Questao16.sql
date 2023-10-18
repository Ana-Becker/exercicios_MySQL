SELECT * FROM ASSOCIADO;

SELECT nome, plano_numero, cidade, valor 
FROM associado INNER JOIN plano ON plano_numero = numero
WHERE cidade = 'SAO PAULO' AND numero = 'M2' OR numero = 'M3' 
ORDER BY nome;