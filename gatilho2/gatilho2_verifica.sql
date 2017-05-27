-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- TRIGGER #2 - verifica
-- Desconto 10% aos aniversariantes do dia

PRAGMA FOREIGN_KEYS = ON;
.mode columns
.headers on
.nullvalue NULL


SELECT NIF, nome, dataNascimento, codigoPedido, valor FROM
Pedido JOIN Cliente ON cliente = NIF;

insert into Pedido (codigoPedido, dataHora, cliente, valor,estado) values (1012, datetime('now'),103323687, 10, 'concluído'); --nao faz anos, pede o mesmo que
insert into PizzaPedido (IDPizza, codigoPedido, quantidade) values (2,1012, 1);
insert into Pedido (codigoPedido, dataHora, cliente, valor,estado) values (1013, datetime('now'),852154021, 10, 'concluído'); -- o que faz anos
insert into PizzaPedido (IDPizza, codigoPedido, quantidade) values (2,1013, 1);

SELECT NIF, nome, dataNascimento, codigoPedido, valor FROM
Pedido JOIN Cliente WHERE cliente = NIF;
