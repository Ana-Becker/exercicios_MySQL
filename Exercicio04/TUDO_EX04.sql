CREATE DATABASE Escola;

USE Escola;
CREATE TABLE Aluno (
    RA INTEGER NOT NULL PRIMARY KEY COMMENT 'Numero de Registro do Aluno',
    Nome VARCHAR(20) COMMENT 'Nome do Aluno',
    Nascimento DATE COMMENT 'Data de Nascimento do Aluno'
);

USE Escola;
ALTER TABLE aluno
ADD UNIQUE (RA);

CREATE TABLE Curso(
    Codigo INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Codigo do Curso' ,
    Nome VARCHAR(15) COMMENT 'Nome do Curso',
    Carga_Horaria INTEGER COMMENT 'Carga Horaria do Curso', 
    Inicio DATE COMMENT 'Data de Inicio do Curso',
    Termino DATE COMMENT 'Data de Termino do Curso'
);

CREATE TABLE Matricula(
    Data_matricula DATE COMMENT 'Data da Matricula',
    Valor DECIMAL(5,2) COMMENT 'Valor referente à matricula',
    Curso_codigo INTEGER COMMENT 'Foreign Key do Código do Curso',
    Aluno_RA Integer COMMENT 'Foreign Key do Registro do Aluno'
);

ALTER TABLE Matricula
ADD CONSTRAINT FK_Curso_Codigo 
FOREIGN KEY(Curso_codigo) 
REFERENCES Curso(Codigo);

ALTER TABLE Matricula
ADD CONSTRAINT FK_Aluno_RA 
FOREIGN KEY(Aluno_RA) 
REFERENCES Aluno(RA);

-- CRIADA AS TABELAS

-- INSERIR DADOS NAS TABELAS

INSERT INTO Aluno VALUES
    ('123456', 'Ana', '1972-01-10'),
    ('123457', 'Bianca', '1973-02-11'),
    ('123458', 'Carla', '1987-12-12'),
    ('123459', 'Danilo', '1990-10-02'),
    ('123460', 'Eliana', '1987-01-01');

SELECT * FROM Aluno;

INSERT INTO Curso (Nome, Carga_Horaria, Inicio, Termino) VALUES
    ('Java', '360', '2007-12-01', '2008-10-10'),
    ('Auto Cad', '60', '2008-01-10', '2008-05-10'),
    ('PHP', '90', '2008-02-15', '2008-07-10'),
    ('Redes', '60', '2008-01-20', '2008-03-20');

SELECT * FROM Curso;

INSERT INTO Matricula VALUES
    ('2007-09-10', '100', '1', '123456'),
    ('2007-10-01', '60', '3', '123456'),
    ('2007-09-01', '100', '1', '123457'),
    ('2007-01-11', '50', '2', '123458'),
    ('2007-07-20', '50', '2', '123459'),
    ('2007-08-10', '80', '1', '123460');

SELECT * FROM matricula;

-- QUESTAO 1
SELECT Aluno.RA, Aluno.Nome AS Aluno, Curso.Nome AS Curso
FROM Aluno INNER JOIN Matricula 
ON Aluno.RA = Matricula.Aluno_RA
INNER JOIN Curso
ON Curso.Codigo = Matricula.Curso_codigo;   

-- QUESTAO 2
SELECT Aluno.RA, Aluno.Nome AS Aluno, Curso.Nome AS Curso
FROM Aluno INNER JOIN Matricula 
ON Aluno.RA = Matricula.Aluno_RA
INNER JOIN Curso
ON Curso.Codigo = Matricula.Curso_codigo
ORDER BY Curso.Nome;  

-- QUESTAO 3
SELECT DISTINCT Curso.Nome AS Curso, COUNT(Aluno.RA) AS Qtde_Alunos
FROM Curso INNER JOIN Matricula
ON Curso.Codigo = Matricula.Curso_codigo
INNER JOIN Aluno
ON Aluno.RA = Matricula.Aluno_RA
GROUP BY Curso.Nome;

-- QUESTAO 04
SELECT Curso.Nome AS Curso, COUNT(Aluno.RA) AS Qtde_Alunos
FROM Curso LEFT JOIN Matricula
ON Curso.Codigo = Matricula.Curso_codigo
LEFT JOIN Aluno
ON Aluno.RA = Matricula.Aluno_RA
GROUP BY Curso.Nome;

-- QUESTAO 05
SELECT Curso.Nome AS Curso, SUM(Matricula.Valor) AS Valor_por_Curso
FROM Curso INNER JOIN Matricula
ON Curso.Codigo = Matricula.Curso_codigo
GROUP BY Curso.Nome;

-- QUESTAO 06
SELECT Curso.Nome AS Curso, SUM(Matricula.Valor) AS Valor_por_Curso
FROM Curso INNER JOIN Matricula
ON Curso.Codigo = Matricula.Curso_codigo
GROUP BY Curso.Nome
UNION
SELECT NULL AS Valor_Total, CONCAT('Valor Total: R$ ', SUM(Matricula.Valor))
FROM Matricula;

-- OU

SELECT Curso.Nome AS Curso, SUM(Matricula.Valor) AS Valor_por_Curso
FROM Curso INNER JOIN Matricula
ON Curso.Codigo = Matricula.Curso_codigo
GROUP BY Curso.Nome;

SELECT CONCAT('R$ ', SUM(Matricula.valor))  AS Valor_Total
FROM matricula;

-- QUESTAO 07

SELECT CONCAT('R$ ', FORMAT( AVG(Valor, 2) )) AS Valor_medio
FROM Matricula;

-- QUESTAO 08

SELECT Curso.Nome AS Curso, CONCAT('R$ ', FORMAT( AVG(Matricula.Valor),2 ))  AS Valor_medio
FROM Curso INNER JOIN Matricula
ON Curso.Codigo = Matricula.Curso_codigo
GROUP BY Curso.Nome;

-- QUESTAO 09
SELECT Curso.Nome AS Curso, COUNT(Matricula.Aluno_RA) AS Qtde_Alunos
FROM Curso LEFT JOIN Matricula
ON Curso.Codigo = Matricula.Curso_codigo
GROUP BY Curso.Nome
HAVING COUNT(Matricula.Curso_codigo) >=2;

-- QUESTAO 10
SELECT Nome FROM Curso
WHERE Carga_horaria = (SELECT Carga_horaria FROM Curso
WHERE Nome = 'auto cad') AND Nome <> 'auto cad';

-- QUESTAO 11
SELECT Nome, Nascimento
FROM Aluno
WHERE MONTH(Nascimento) = (SELECT MONTH(Nascimento)
FROM Aluno
WHERE Nome = 'ANA') AND Nome <> 'ANA';

-- QUESTAO 12
SELECT Curso.Nome 
FROM Curso INNER JOIN Matricula
ON Curso.Codigo = Matricula.Curso_codigo
WHERE DATE_FORMAT(Curso.Inicio, '%m/%Y') = '01/2008';

-- QUESTAO 13
SELECT Nome , DATE_FORMAT(Inicio, '%m/%Y') AS Inicio
FROM Curso
WHERE DATE_FORMAT(Inicio, '%m/%Y') = '01/2008';

-- QUESTAO 14
SELECT aluno.nome AS aluno, curso.nome AS curso, matricula.data_matricula AS data_matricula, curso.inicio,
CASE 
	WHEN DATEDIFF( curso.inicio, matricula.data_matricula) > 0 THEN 'sim'
    ELSE 'nao'
END AS brinde
FROM (aluno
INNER JOIN matricula
ON aluno.ra = matricula.aluno_ra
INNER JOIN curso
ON matricula.Curso_codigo = curso.codigo);

-- QUESTAO 15
SELECT Inicio, Nome FROM Curso
WHERE DATEDIFF (CURRENT_DATE, curso.inicio) < 0;

-- QUESTAO 16
SELECT Aluno.Nome AS Aluno, DAYNAME(matricula.data_matricula) AS dia_matricula, 
CASE
    WHEN DAYNAME(data_matricula) = 'SATURDAY' THEN 'sim'
    ELSE 'nao'
END AS brinde
FROM aluno INNER JOIN matricula
ON aluno.ra = matricula.aluno_ra;

-- QUESTAO 17
SELECT aluno.nome AS Aluno, matricula.valor AS Valor_Matricula, 
DAYNAME(matricula.data_matricula) AS Data_Matricula, 
CASE
    WHEN DAYNAME(matricula.data_matricula) = 'SATURDAY' THEN CONCAT('R$ ', FORMAT(matricula.valor*0.5, 2)) 
    ELSE 'SEM DESCONTO'
END AS Valor_Restituir 
FROM Aluno INNER JOIN Matricula
ON aluno.ra = matricula.aluno_ra;

-- QUESTAO 18
SELECT NOME, FORMAT(PERIOD_DIFF(DATE_FORMAT(CURRENT_DATE(), '%Y%m'), DATE_FORMAT(NASCIMENTO, '%Y%m'))/12, 0)  
AS Idade 
FROM Aluno;

-- A profa demonstrou um metodo mais simples, o qual deve ser utilizado:

SELECT aluno.nome, TIMESTAMPDIFF(YEAR, aluno.nascimento, CURRENT_DATE) 
as idade FROM aluno
GROUP BY aluno.nome;

-- Syntax:
-- TIMESTAMPDIFF(unit,datetime_expr1,datetime_expr2);

-- QUESTAO 19
SELECT nome AS Curso, PERIOD_DIFF(DATE_FORMAT(Termino, '%Y%m'), DATE_FORMAT(Inicio, '%Y%m')) 
AS Duracao_Meses
FROM Curso;
