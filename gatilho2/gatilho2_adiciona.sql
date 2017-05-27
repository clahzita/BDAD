-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- TRIGGER #2 - adiciona
-- Desconto 10% aos aniversariantes do dia


CREATE TRIGGER apply_discount
AFTER INSERT ON Pedido
For each row
BEGIN
	UPDATE Pedido
	SET valor = valor*0.9
	WHERE (
		cliente = NEW.cliente
		AND
		strftime('%m',(SELECT dataNascimento FROM Cliente WHERE NEW.cliente=Cliente.NIF) ) = strftime('%m',dataHora)
		AND strftime('%d',(SELECT dataNascimento FROM Cliente WHERE NEW.cliente=Cliente.NIF) )= strftime('%d',dataHora)
				);
END;
