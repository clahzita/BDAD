-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- QUERY #5
-- Cliente que já experimentou maior diversidade de pizzas

.mode columns
.width 12 20 20
.headers on
.nullvalue NULL

SELECT T2.NIF, T2.Nome, MAX(T2.variedade) AS qtde_pizzas_variadas
FROM(SELECT cliente AS NIF, Cliente.nome AS Nome, count(DISTINCT T1.IDPizza) AS variedade
	FROM(Pedido JOIN 
			(SELECT IDPizza, codigoPedido FROM MenuPedido JOIN Menu USING(IDMenu)
				UNION
			SELECT IDPizza, codigoPedido FROM PizzaPedido) AS T1
			USING(codigoPedido)) JOIN Cliente ON cliente=NIF
	WHERE cliente IS NOT NULL 
	GROUP BY cliente
	) AS T2;