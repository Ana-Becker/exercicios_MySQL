CREATE TABLE Nota_fiscal (
    Numero_NF INTEGER,
    Data_NF DATE,
    Valor_NF FLOAT
);

ALTER TABLE Nota_fiscal
ADD CONSTRAINT PK_Numero_NF PRIMARY KEY (Numero_NF);

CREATE TABLE Itens(
    Produto_Codigo_Produto INTEGER,
    Nota_fiscal_Numero_NF INTEGER,
    Num_Item INTEGER,
    Qtde_Item INTEGER
);

ALTER TABLE Itens
ADD CONSTRAINT PK_Itens PRIMARY KEY (Produto_Codigo_Produto, Nota_fiscal_Numero_NF);