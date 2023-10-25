-- QUESTAO 11

SELECT Nome, Nascimento
FROM Aluno
WHERE MONTH(Nascimento) = (SELECT MONTH(Nascimento)
FROM Aluno
WHERE Nome = 'ANA') AND Nome <> 'ANA';
