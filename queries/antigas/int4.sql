-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- QUERY #4
-- Ingrediente preferido de cada cliente

.mode columns
.width 5 20 20 8
.headers on
.nullvalue NULL


SELECT TAB1.IDIng, TAB1.IngNome, TAB1.CliNome, MAX(ALL TAB1.total) AS consumo
FROM 
(
	--seleção de ingredientes adicionais por cliente
	SELECT IP.IDIngredienteAdicional AS IDIng, I.nome AS IngNome, P.cliente AS NIF, C.nome AS CliNome, SUM(quantidade) AS total
	FROM IngredienteAdicionalPedido IP JOIN Pedido P USING(codigoPedido), Ingrediente I, Cliente C
	WHERE IP.IDIngredienteAdicional=I.ID AND P.cliente=C.NIF
	GROUP BY cliente,IDIngredienteAdicional
	UNION ALL
	--seleciona ingredientes das pizzas pedidas individualmente
	SELECT I.ID AS IDIng, I.nome AS IngNome, P.cliente AS NIF, C.nome AS CliNome, COUNT(ID)
	FROM Cliente C, Pedido P JOIN PizzaPedido PP  USING(codigoPedido), PizzaIngrediente PI, Ingrediente I
	WHERE P.cliente=C.NIF AND PP.IDPizza=PI.IDpizza AND PI.IDingrediente=I.ID
	GROUP BY cliente, I.ID
	UNION ALL
	--seleciona ingredientes das pizzas pedidas no menu
	SELECT I.ID, I.nome, P.cliente, C.nome, COUNT(ID)
	FROM Cliente C, (Pedido P JOIN MenuPedido MP  USING(codigoPedido) ) JOIN Menu M USING(IDMenu), PizzaIngrediente PI, Ingrediente I
	WHERE P.cliente=C.NIF AND M.IDPizza=PI.IDpizza AND PI.IDingrediente=I.ID
	GROUP BY cliente, I.ID
) AS TAB1
GROUP BY TAB1.CliNome
ORDER BY TAB1.CliNome ASC, TAB1.total DESC;


