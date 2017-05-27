-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- QUERY #2
-- Para cada par de pizzas quantos clientes já pediram as duas

.mode columns
.width 10 10 10
.headers on
.nullvalue NULL



SELECT piza1,piza2,COUNT (cliente) AS numClientes
FROM(
		SELECT p1.IDPizza as piza1, p2.IDPizza as piza2, p1.cliente as cliente, p2.cliente
		FROM (SELECT cliente, IDPizza, quantidade FROM Pedido  JOIN PizzaPedido USING (codigoPedido)) p1
		JOIN ( SELECT cliente, IDPizza, quantidade FROM Pedido  JOIN PizzaPedido USING (codigoPedido)) p2
		WHERE p1.cliente = p2.cliente and p1.IDPizza!=p2.IDPizza AND p2.IDPizza>p1.IDPizza
	) as final
GROUP BY piza1,piza2;



/*
SELECT piza1,piza2,cliente FROM (
SELECT p1.IDPizza as piza1, p2.IDPizza as piza2, p1.cliente as cliente, p2.cliente
FROM (SELECT cliente, IDPizza, quantidade FROM Pedido  JOIN PizzaPedido USING (codigoPedido)) p1
JOIN (SELECT cliente, IDPizza, quantidade FROM Pedido  JOIN PizzaPedido USING (codigoPedido)) p2
WHERE p1.cliente = p2.cliente) as final;/
*/
