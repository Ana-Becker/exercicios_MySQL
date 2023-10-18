CREATE DATABASE planos_longa_vida;

USE planos_longa_vida;

CREATE TABLE plano(
    numero CHAR(2) NOT NULL COMMENT 'Número do Plano',
    descricao CHAR(30) COMMENT 'Descrição do Plano',
    valor DECIMAL(10,2) COMMENT 'Valor da Mensalidade'
);

INSERT INTO plano VALUES 
    ('B1', 'Básico 1', '200'),
	('B2', 'Básico 2', '150'),
    ('B3', 'Básico 3', '100'),
    ('E1', 'Executivo 1', '350'),
    ('E2', 'Executivo 2', '300'),
    ('E3', 'Executivo 3', '250'),
    ('M1', 'Master 1', '500'),
    ('M2', 'Master 2', '450'),
    ('M3', 'Master 3', '400');
                        
SELECT * FROM plano;

ALTER TABLE plano 
ADD CONSTRAINT PK_numero_plano PRIMARY KEY (numero);

CREATE TABLE associado (
	plano CHAR (2) NOT NULL COMMENT 'Número do Plano (Não Nulo)',
    nome CHAR(40) NOT NULL COMMENT 'Nome do Associado (Não Nulo) - chave primária',
    endereco CHAR(40) COMMENT 'Endereço do associado',
    cidade CHAR(20) COMMENT 'Cidade do Associado',
    estado CHAR(2) COMMENT 'Sigla da Unidade Federativa',
    cep CHAR(9) COMMENT 'CEP do Associado'
);

ALTER TABLE associado
ADD CONSTRAINT PK_nome_associado primary key(nome);

INSERT INTO associado VALUES 
    ('B1', 'JOSE ANTONIO DA SILVA', 'R. FELIPE DO AMARAL, 3450', 'COTIA', 
    'SP', '06700-000'),
    ('B1', 'MARIA DA SILVA SOBRINHO', 'R. FELIPE DE JESUS, 1245', 'DIADEMA', 
    'SP', '09960-170'),
    ('B1', 'PEDRO JOSE DE OLIVEIRA', 'R. AGRIPINO DIAS, 155', 'COTIA', 
    'SP', '06700-011'),
    ('B2', 'ANTONIA DE FERNANDES', 'R. PE EZEQUIEL, 567', 'DIADEMA', 
    'SP', '09960-175'),
    ('B2', 'ANTONIO DO PRADO', 'R. INDIO TABAJARA, 55', 'GUARULHOS', 
    'SP', '07132-999'),
    ('B3', 'WILSON DE SENA', 'R. ARAPIRACA, 1234', 'OSASCO', 
    'SP', '06293-001'),
    ('B3', 'SILVIA DE ABREU', 'R. DR. JOAO DA SILVA, 5', 'SANTO ANDRE', 
    'SP', '09172-112'),
    ('E1', 'ODETE DA CONCEICAO', 'R. VOLUNTARIOS DA PATRIA, 10', 'SAO PAULO', 
    'SP', '02010-550'),
    ('E2', 'JOAO CARLOS MACEDO', 'R. VISTA ALEGRE, 500', 'SAO PAULO', 
    'SP', '04343-990'),
    ('E3', 'CONCEICAO DA SILVA', 'AV. VITORIO DO AMPARO, 11', 'MAUA', 
    'SP', '09312-988'),
    ('E3', 'PAULO BRUNO AMARAL', 'R. ARGENZIO BRILHANTE, 88', 'BARUERI', 
    'SP', '06460-999'),
    ('E3', 'WALDENICE DE OLIVEIRA', 'R. OURO VELHO, 12', 'BARUERI', 
    'SP', '06460-998'),
    ('E3', 'MARCOS DO AMARAL', 'R. DO OUVIDOR, 67', 'GUARULHOS', 
    'SP', '07031-555');

SELECT * FROM associado;

INSERT INTO associado VALUES 
	('M1', 'MURILO DE SANTANA', 'R. PRATA DA CASA', 'BARUERI', 
	'SP', '06455-111'),
    ('M1', 'LUIZA ONOFRE FREITAS', 'R. VICENTE DE ABREU, 55', 'SANTO ANDRE', 
	'SP', '09060-667'),
    ('M2', 'MELISSA DE ALMEIDA', 'R. FERNANDO ANTONIO, 2345', 'SAO PAULO', 
	'SP', '04842-987'),
    ('M2', 'JOAO INACIO DA CONCEICAO', 'R. PENELOPE CHARMOSA, 34', 'SUZANO', 
	'SP', '08670-888'),
    ('B3', 'AUGUSTA DE ABREU', 'AV. RIO DA SERRA, 909', 'SANTO ANDRE', 
	'SP', '09061-333'),
    ('M3', 'ILDA DE MELO DA CUNHA', 'AV. POR DO SOL, 546', 'SANTO ANDRE', 
	'SP', '09199-444'),
    ('M3', 'MARCOS DA CUNHA', 'AV. PEDROSO DE  MORAES', 'SAO PAULO', 
	'SP', '04040-444');
    
ALTER TABLE associado 
ADD CONSTRAINT FK_plano_numero FOREIGN KEY (plano) REFERENCES plano (numero);