-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- TRIGGER #3 - adiciona
-- Cada cliente só pode adicionar 2 tipos de ingredientes a cada pizza por pedido

PRAGMA FOREIGN_KEYS = ON;

.mode columns
.headers on
.nullvalue NULL

--VERIFICA INSERÇÃO EM IngredienteAdicionalPedido
SELECT IDPizza,codigoPedido,count(distinct IDIngredienteAdicional) as Qtde_IngAdd
FROM IngredienteAdicionalPedido
GROUP BY IDPizza,codigoPedido;

insert into IngredienteAdicional (IDingrediente, IDpizza, preco) values (25,9, 1.00);
insert into IngredienteAdicionalPedido(IDIngredienteAdicional,IDPizza, codigoPedido, quantidade) values (25,9, 1002,1);

SELECT IDPizza,codigoPedido,count(distinct IDIngredienteAdicional) as Qtde_IngAdd
FROM IngredienteAdicionalPedido
GROUP BY IDPizza,codigoPedido;