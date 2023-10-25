ALTER TABLE Nota_fiscal
RENAME COLUMN Valor_NF TO ValorTotal_NF;

ALTER TABLE Nota_fiscal
DROP COLUMN Data_NF;