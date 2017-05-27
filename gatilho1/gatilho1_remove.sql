-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- TRIGGER #1 - remove
-- Atualizar quantidade de estoque de ingredientes e caso a quantidade de ingrediente seja maior, exibir erro

PRAGMA FOREIGN_KEYS = ON;

DROP TRIGGER IF EXISTS update_stock1;
DROP TRIGGER IF EXISTS update_stock2;
DROP TRIGGER IF EXISTS update_stock_error1;
DROP TRIGGER IF EXISTS update_stock_error2;

DELETE FROM PizzaIngrediente WHERE IDpizza=6 AND IDingrediente=2 AND quantidade=3;
DELETE FROM IngredienteAdicionalPedido WHERE IDIngredienteAdicional=26 AND IDPizza=6 AND codigoPedido=1002;
DELETE FROM IngredienteAdicional WHERE IDingrediente=26 AND IDpizza=6;