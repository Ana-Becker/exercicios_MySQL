SELECT * FROM plano;
UPDATE plano
SET valor = valor*1.1 WHERE numero LIKE '%B%';

UPDATE plano
SET valor = valor*1.05 WHERE numero LIKE '%E%';

UPDATE plano
SET valor = valor*1.03 WHERE numero LIKE '%M%';