-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- TRIGGER #3 - remove
-- Atualizar preco total quando é acrescentado algum item ao pedido

PRAGMA FOREIGN_KEYS = ON;

DROP TRIGGER IF EXISTS add_ingredient_limit;
DELETE FROM IngredienteAdicionalPedido WHERE IDIngredienteAdicional=25 AND IDPizza=6 AND codigoPedido=1006;
DELETE FROM IngredienteAdicional WHERE IDingrediente=25 AND IDpizza=6;


