CREATE DATABASE Elaine;

USE Elaine;
CREATE TABLE Aluno (
    RA INTEGER NOT NULL PRIMARY KEY COMMENT 'Número de Registro do Aluno',
    Nome VARCHAR(20) COMMENT 'Nome do Aluno',
    Nascimento DATE COMMENT 'Data de Nascimento do Aluno'
);

USE Elaine;
ALTER TABLE aluno
ADD UNIQUE (RA);

CREATE TABLE Curso(
    Codigo INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Código do Curso' ,
    Nome VARCHAR(15) COMMENT 'Nome do Curso',
    Carga_Horaria INTEGER COMMENT 'Carga Horária do Curso', 
    Inicio DATE COMMENT 'Data de Início do Curso',
    Termino DATE COMMENT 'Data de Término do Curso'
);

CREATE TABLE Matricula(
    Data_matricula DATE COMMENT 'Data da Matrícula',
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

-- LANÇAR DADOS NAS TABELAS

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

SELECT RA, Nome 