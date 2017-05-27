-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- QUERY #3
-- Segundo cliente que mais gastou

.mode columns
.width 12 20 10
.headers on
.nullvalue NULL

SELECT cliente, Cliente.nome, sum(valor) as total
FROM Pedido JOIN Cliente ON cliente=NIF
GROUP BY cliente ORDER BY total DESC;
LIMIT 1 OFFSET 1;

