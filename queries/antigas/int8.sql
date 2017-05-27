.mode columns
.headers on
.width 19 15
.nullvalue NULL

SELECT nome, SUM(quantidade) numPizzasPedidas
FROM Pizza
JOIN PizzaPedido USING(IDPizza)
GROUP BY IDPizza
ORDER BY numPizzasPedidas DESC
LIMIT 5;
