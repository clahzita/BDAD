.mode columns
.headers on
.width 28
.nullvalue NULL

SELECT AVG(Preco) AS PrecoMedioMenusMaisPopulares FROM(
SELECT IDMenu, Preco, SUM (quantidade)  num
FROM MenuPedido
JOIN Menu USING (IDMenu)
GROUP BY IDMenu
ORDER BY num DESC
LIMIT 3) AS final;
;


