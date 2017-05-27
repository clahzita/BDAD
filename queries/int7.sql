-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- QUERY #7
-- Listar nomes de 5 clientes com maior número de pedidos

.mode columns
.headers on
.width 19 15
.nullvalue NULL


SELECT nome, COUNT(codigoPedido) AS numPedidos
FROM Pedido
JOIN Cliente ON NIF=cliente
GROUP BY NIF
ORDER BY numPedidos DESC
LIMIT 5;
