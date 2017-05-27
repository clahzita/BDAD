-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- TRIGGER #1 - adiciona
-- Atualizar quantidade de estoque de ingredientes e caso a quantidade de ingrediente seja maior, exibir erro


--Atualiza o estoque quando existe quantidade suficiente
CREATE TRIGGER update_stock1 BEFORE INSERT 
ON PizzaIngrediente
BEGIN
	UPDATE Ingrediente
	SET QuantidadeStock = QuantidadeStock - NEW.quantidade
	WHERE NEW.IDingrediente = Ingrediente.ID AND Ingrediente.QuantidadeStock >= NEW.quantidade;
END;


--Exibe mensagem de erro quando tenta adicionar mais ingredinetes do que existe no estoque
CREATE TRIGGER update_stock_error1 BEFORE INSERT 
ON PizzaIngrediente
BEGIN
	SELECT CASE
	WHEN ((SELECT QuantidadeStock 
			FROM Ingrediente
			WHERE NEW.IDingrediente=Ingrediente.ID) < NEW.quantidade)
	THEN RAISE(ABORT,'Não há ingredientes suficientes no estoque')
    END;
END;

--Atualiza o estoque quando existe quantidade suficiente
CREATE TRIGGER update_stock2 BEFORE INSERT 
ON IngredienteAdicionalPedido
BEGIN
	UPDATE Ingrediente
	SET QuantidadeStock = QuantidadeStock - NEW.quantidade
	WHERE NEW.IDIngredienteAdicional = Ingrediente.ID AND Ingrediente.QuantidadeStock >= NEW.quantidade;
END;

CREATE TRIGGER update_stock_error2 BEFORE INSERT 
ON IngredienteAdicionalPedido
BEGIN
	SELECT CASE
	WHEN ((SELECT QuantidadeStock 
			FROM Ingrediente
			WHERE NEW.IDIngredienteAdicional=Ingrediente.ID) < NEW.quantidade)
	THEN RAISE(ABORT,'Não há ingredientes suficientes no estoque')
    END;
END;

/*
CREATE TRIGGER atualizaStockIngredientes
AFTER INSERT ON ReparacaoPeca 
FOR EACH ROW
BEGIN 
  UPDATE Peca SET Quantidade = Quantidade - NEW.quantidade WHERE Peca.idPeca=NEW.idPeca;
END;
*/

/*
CREATE TRIGGER update_stock1 BEFORE INSERT 
ON IngredienteAdicionalPedido
WHEN NEW.IDIngredienteAdicional=Ingrediente.ID AND NEW.quantidade <= QuantidadeStock
BEGIN
   UPDATE Ingrediente
	SET QuantidadeStock = QuantidadeStock-NEW.quantidade;
	--WHERE NEW.IDIngredienteAdicional=Ingrediente.ID AND NEW.quantidade <= QuantidadeStock;
END;

CREATE TRIGGER update_stock2 BEFORE INSERT 
ON PizzaIngrediente
WHEN Ingrediente.ID=NEW.IDingrediente AND NEW.quantidade <= QuantidadeStock
BEGIN
   UPDATE Ingrediente
	
	--WHERE Ingrediente.ID=NEW.IDingrediente AND NEW.quantidade <= QuantidadeStock;
END;

CREATE TRIGGER stock_insuficient1 BEFORE INSERT 
ON IngredienteAdicionalPedido
WHEN NEW.IDIngredienteAdicional= Ingrediente.ID AND NEW.quantidade > QuantidadeStock
BEGIN
   SELECT RAISE(ABORT, 'Estoque insuficiente!');
END;

CREATE TRIGGER stock_insuficient2 BEFORE INSERT 
ON PizzaIngrediente
WHEN NEW.IDIngredienteAdicional= Ingrediente.ID AND NEW.quantidade > QuantidadeStock
BEGIN
   SELECT RAISE(ABORT, 'Estoque insuficiente!');
END;*/