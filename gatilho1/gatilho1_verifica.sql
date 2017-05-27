-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- TRIGGER #1 - verifica
-- Atualizar quantidade de estoque de ingredientes e caso a quantidade de ingrediente seja maior, exibir erro

PRAGMA FOREIGN_KEYS = ON;
.mode columns
.headers on
.nullvalue NULL

--VERIFICA INSERÇÃO EM PizzaIngrediente
SELECT * FROM Ingrediente;
insert into PizzaIngrediente (IDpizza, IDingrediente,quantidade) values (6,2,3);
SELECT * FROM Ingrediente WHERE ID=2;
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (5,21,60);
SELECT * FROM Ingrediente WHERE ID=21;

--VERIFICA INSERÇÃO EM IngredienteAdicionalPedido
insert into IngredienteAdicional (IDingrediente, IDpizza, preco) values (26,6, 1.00);
insert into IngredienteAdicionalPedido(IDIngredienteAdicional,IDPizza, codigoPedido, quantidade) values (26,6, 1002, 5);
SELECT * FROM Ingrediente WHERE ID=26;
DELETE FROM IngredienteAdicionalPedido WHERE IDIngredienteAdicional=26 AND IDPizza=6 AND codigoPedido=1002;
insert into IngredienteAdicionalPedido(IDIngredienteAdicional,IDPizza, codigoPedido, quantidade) values (26,6, 1002,60);
SELECT * FROM Ingrediente WHERE ID=26;
