-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- QUERY #10
-- Preço médio dos 3 menus (mais vendidos)

.mode columns
.headers on
.width 20
.nullvalue NULL

SELECT AVG(Preco) AS PrecoMedioTop3Menus
FROM(
	SELECT IDMenu, Preco, SUM (quantidade)  num
	FROM MenuPedido
	JOIN Menu USING (IDMenu)
	GROUP BY IDMenu
	ORDER BY num DESC
	LIMIT 3) AS final;



