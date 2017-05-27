-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- QUERY #8
-- Listar 5 pizzas mais populares

.mode columns
.headers on
.width 18 12
.nullvalue NULL

SELECT nome, SUM(quantidade) QtdePedidas
FROM Pizza
JOIN PizzaPedido USING(IDPizza)
GROUP BY IDPizza
ORDER BY QtdePedidas DESC
LIMIT 5;
