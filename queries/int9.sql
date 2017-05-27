-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- QUERY #9
-- Área de entrega com maior número de pedidos

.mode columns
.width 15 15
.headers on
.nullvalue NULL

SELECT localEntrega, COUNT(codigoPedido) AS numeroPedidos FROM
AreaEntrega JOIN LocalEntrega USING (codigoPostalparte1)
JOIN PedidoParaFora ON ID = localEntrega
GROUP BY (localEntrega)
ORDER BY numeroPedidos DESC
limit 1;
