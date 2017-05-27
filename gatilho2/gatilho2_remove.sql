-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- TRIGGER #2 - remove
-- Desconto 10% aos aniversariantes do dia

PRAGMA FOREIGN_KEYS = ON;

DROP TRIGGER IF EXISTS apply_discount;
DELETE FROM PizzaPedido WHERE IDPizza=2 and codigoPedido=1012;
DELETE FROM PizzaPedido WHERE IDPizza=2 and codigoPedido=1013;
DELETE FROM Pedido WHERE codigoPedido=1012 or codigoPedido=1013;


