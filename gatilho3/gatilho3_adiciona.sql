-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- TRIGGER #3 - adiciona
-- Cada cliente só pode adicionar 2 tipos de ingredientes a cada pizza por pedido


CREATE TRIGGER add_ingredient_limit BEFORE INSERT
ON IngredienteAdicionalPedido
BEGIN
	SELECT CASE
	WHEN ((SELECT count(distinct IDIngredienteAdicional)
			FROM IngredienteAdicionalPedido
			WHERE NEW.IDPizza=IngredienteAdicionalPedido.IDPizza AND NEW.codigoPedido=IngredienteAdicionalPedido.codigoPedido
			GROUP BY IDPizza,codigoPedido)=2)
	THEN RAISE(ABORT,'Não É POSSIVEL ADICIONAR INGREDIENTE, JÁ FORAM INSERIDOS 2 TIPOS NESSA PIZZA')
    END;
END;