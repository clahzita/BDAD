.mode columns
.headers on
.width 19 15
.nullvalue NULL


SELECT funcionario , COUNT (codigoPedido) numPedidos
FROM PedidoRestaurante
GROUP BY funcionario
ORDER BY numPedidos DESC;
