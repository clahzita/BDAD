

PRAGMA	foreign_keys	=	ON;

--  Ingrediente

insert into Ingrediente (ID, Nome, QuantidadeStock) values (1, 'Ananas', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (2, 'Bacon', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (3, 'Atum', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (4, 'Camarao', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (5, 'Chourico', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (6, 'Milho', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (7, 'Pimenta', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (8, 'Salsicha', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (9, 'Carne Picada', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (10, 'Cogumelos', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (11, 'Fiambre', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (12, 'Azeitonas', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (13, 'Ovo', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (14, 'Queijo Cabra', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (15, 'Queijo Provolone', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (16, 'Tomate Cherry', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (17, 'Cebola', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (18, 'Espinafres', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (19, 'Frango desfiado', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (20, 'Queijo Cheddar', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (21, 'Queijo Suico', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (22, 'Topping Carbonara', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (23, 'Topping Bechamel', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (24, 'Topping Tomate', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (25, 'Topping Barbecue', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (26, 'Pepperoni', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (27, 'Presunto', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (28, 'Pesto', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (29, 'Queijo Mozzarella', 50);
insert into Ingrediente (ID, Nome, QuantidadeStock) values (30, 'Oregãos', 50);

  --  Pizza
insert into Pizza (IDPizza, Nome,Tamanho, Preco) values (1, 'Marguerita','P', 5.9);
insert into Pizza (IDPizza, Nome,Tamanho, Preco) values (2, 'Tropical','P', 5.9);
insert into Pizza (IDPizza, Nome,Tamanho, Preco) values (3, 'Quattro Stacioni','P', 5.9);
insert into Pizza (IDPizza, Nome,Tamanho, Preco) values (4, 'Funghi','P', 5.9);
insert into Pizza (IDPizza, Nome,Tamanho, Preco) values (5, 'Al Prosciutto','P', 5.9);
insert into Pizza (IDPizza, Nome,Tamanho, Preco) values (6, 'Pepperoni','P', 5.9);
insert into Pizza (IDPizza, Nome,Tamanho, Preco) values (7, 'Vegetale','P', 5.9);
insert into Pizza (IDPizza, Nome,Tamanho, Preco) values (8, 'Capricciosa','P', 5.9);
insert into Pizza (IDPizza, Nome,Tamanho, Preco) values (9, 'Al Pesto','M', 5.9);
insert into Pizza (IDPizza, Nome,Tamanho, Preco) values (10, 'Don Corleoni','P', 5.9);
insert into Pizza (IDPizza, Nome,Tamanho, Preco) values (11, 'Pizza a Gosto','G', 5.9);

  -- IngredienteAdicional
insert into IngredienteAdicional (IDingrediente, IDpizza, preco) values (11,2, 1.00);
insert into IngredienteAdicional (IDingrediente, IDpizza, preco) values (11,4, 1.00);
insert into IngredienteAdicional (IDingrediente, IDpizza, preco) values (4,2, 1.00);
insert into IngredienteAdicional (IDingrediente, IDpizza, preco) values (9,11, 1.00);
insert into IngredienteAdicional (IDingrediente, IDpizza, preco) values (1,1, 1.00);
insert into IngredienteAdicional (IDingrediente, IDpizza, preco) values (27,9, 1.00);
insert into IngredienteAdicional (IDingrediente, IDpizza, preco) values (24,4, 1.00);
insert into IngredienteAdicional (IDingrediente, IDpizza, preco) values (15,6, 1.00);
insert into IngredienteAdicional (IDingrediente, IDpizza, preco) values (17,7, 1.00);
insert into IngredienteAdicional (IDingrediente, IDpizza, preco) values (30,9, 1.00);
insert into IngredienteAdicional (IDingrediente, IDpizza, preco) values (23,4, 1.00);
insert into IngredienteAdicional (IDingrediente, IDpizza, preco) values (12,6, 1.00);
insert into IngredienteAdicional (IDingrediente, IDpizza, preco) values (2,7, 1.00);

-- PizzaIngrediente (pizzas tradicionais)
--Marguerita tomate e oregaos, mozzarela
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (1,29,1);
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (1,30,1);
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (1,24,1);
--Tropical tomate e oregaos, ananas, mozzarela
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (2,29,1);
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (2,30,1);
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (2,24,1);
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (2,1,1);
--Quattro Stacioni: tomate e oregaos, ovo, mozzarela
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (3,29,1);
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (3,30,1);
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (3,24,1);
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (3,13,1);
--Funghi: mozzarela, oregaos e cogumelos
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (4,29,1);
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (4,30,1);
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (4,10,1);
-- Al Prosciutto: mozzarela, fiambre e cebola
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (5,29,1);
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (5,11,1);
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (5,17,1);

--Peperoni: mozzarela, chouriço, tomate e oregaos
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (6,29,1);
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (6,30,1);
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (6,5,1);
insert into PizzaIngrediente (IDpizza, IDIngrediente,quantidade) values (6,24,1);


-- Bebida
insert into Bebida (ID, Nome, Preco) values (1, 'Agua Natural', 1);
insert into Bebida (ID, Nome, Preco) values (2, 'Coca-Cola', 1.2);
insert into Bebida (ID, Nome, Preco) values (3, 'Fanta Ananas', 1.2);
insert into Bebida (ID, Nome, Preco) values (4, 'Compal Pessego', 1.2);
insert into Bebida (ID, Nome, Preco) values (5, 'Compal Laranja', 1.2);
insert into Bebida (ID, Nome, Preco) values (6, 'Compal Pera', 1.2);
insert into Bebida (ID, Nome, Preco) values (7, 'Fino', 1);
insert into Bebida (ID, Nome, Preco) values (8, '7-UP', 1.2);
insert into Bebida (ID, Nome, Preco) values (9, 'Sangria', 3);
insert into Bebida (ID, Nome, Preco) values (10, 'Vinho', 10);


  -- Menu
insert into Menu (IDMenu, IDpizza, BebidaId, Preco) values (1, 1, 1, 5.5);  -- Marguerita pequena (5.9€) + Agua Natural (1€)
insert into Menu (IDMenu, IDpizza, BebidaId, Preco) values (2, 4, 2, 8 );  -- Tropical pequena (8.9€) + Coca Cola (1.2€)
insert into Menu (IDMenu, IDpizza, BebidaId, Preco) values (3, 7, 4, 8.2 );  -- Quattro Stacioni pequena (7.5€) + Compal Pessego (1.2€)
insert into Menu (IDMenu, IDpizza, BebidaId, Preco) values (4, 10, 8, 7 );  -- Funghi pequena (9€) + 7-UP (1.2€)

-- Cliente
insert into Cliente (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values ('456700503', 'Betty Robinson', date('1977-03-26'), 913710399, '4100-027', 'Av. do Mal. Gomes da Costa 56');
insert into Cliente (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values ('627043025', 'Paul Bailey', date('1999-03-25'), 919035647, '4100-168', 'R. Angola 336');
insert into Cliente (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values ('886202600', 'Jimmy Martin', date('1984-02-22'), 937115505, '4200-486', 'R. das Berlengas 90');
insert into Cliente (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values ('446170008', 'Daniel Barnes', date('1966-04-19'), 96383007, '4000-432', 'R. de Sa da Bandeira 797');
insert into Cliente (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values ('436001862', 'Julia Pierce', date('1974-07-17'), 930931221, '4050-397', 'R. do Monte Cativo 50');
insert into Cliente (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values ('445470028', 'Teresa Franklin', date('1987-10-14'), 915859242, '4050-115', 'R. de Ricardo Severo 171');
insert into Cliente (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values ('816272668', 'Louis Ferguson', date('1954-04-24'), 916797036, '4050-145', 'Rua de Vilar 64');
insert into Cliente (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values ('179203447', 'Diane Montgomery', date('1991-03-24'), 967498413, '4150-686 ', 'R. do Aleixo 44');
insert into Cliente (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values ('984819287', 'Sean Boyd', date('1976-06-28'), 930498015, '4150-309', 'Praça de Liege 79');
insert into Cliente (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values ('103323687', 'Carol Jordan', date('1957-09-01'), 932995338, '4150-379', 'R. de Gondarem 1086');
insert into Cliente (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values ('852154021', 'Raquel Tavares', date('now'), 965210021, '4510-151', 'Rua do Tronco 464');


-- ClienteOnline
insert into ClienteOnline (ClienteId, username, eMail, palavraPasse) values ('456700503', 'betty77', 'betty_77@email.com', 'bola123');
insert into ClienteOnline (ClienteId, username, eMail, palavraPasse) values ('103323687', 'caroljordan', 'carolj@email.com', 'gato345');
insert into ClienteOnline (ClienteId, username, eMail, palavraPasse) values ('984819287', 'seanboyd', 'seanboyd@email.com', '34567899');
insert into ClienteOnline (ClienteId, username, eMail, palavraPasse) values ('816272668', 'ferguson', 'lferguson@gmail.com', '3499ca');
insert into ClienteOnline (ClienteId, username, eMail, palavraPasse) values ('179203447', 'dianam', 'dianam@email.com', 'bola123');
insert into ClienteOnline (ClienteId, username, eMail, palavraPasse) values ('852154021', 'raquel', 'raquel@email.com', 'ceu123');

-- Area Entrega
insert into AreaEntrega (codigoPostalparte1,taxa) values ('4100', 1.2);
insert into AreaEntrega (codigoPostalparte1,taxa) values ('4200', 3);
insert into AreaEntrega (codigoPostalparte1,taxa) values ('4000', 1);
insert into AreaEntrega (codigoPostalparte1,taxa) values ('4050', 2);
insert into AreaEntrega (codigoPostalparte1,taxa) values ('4150', 2.5);
insert into AreaEntrega (codigoPostalparte1,taxa) values ('4750', 5);

-- LocalEntrega
insert into LocalEntrega (ID,codigoPostalparte1,codigoPostalparte2,morada,pontoReferencia) values (1,'4100', '131','Rua X, 20 Bonfim','ao lado da igreja');
insert into LocalEntrega (ID,codigoPostalparte1,codigoPostalparte2,morada,pontoReferencia) values (2,'4200', '45','Rua Y, 20 Paranhos',NULL);
insert into LocalEntrega (ID,codigoPostalparte1,codigoPostalparte2,morada,pontoReferencia) values (3,'4100', '100','Rua Z, 20 Bonfim','ao lado da escola');

-- Funcionario
insert into Funcionario (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values (123456789, 'Maria Leal', date('1988-09-01'), 932567890, '4050-379', 'R. de Carvalhido 789');
insert into Funcionario (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values (987654321, 'Fernando Cabral', date('1978-06-21'), 932098765, '4150-377', 'R. de França 321');
insert into Funcionario (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values (456789123, 'Julia Soares', date('1985-03-11'), 932654321, '4020-132', 'R. de Natária 564');
insert into Funcionario (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values (908765342, 'Tiago Almeida', date('1990-08-10'), 932123456, '4081-131', 'R. de Gondarem 908');
insert into Funcionario (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values (516798151, 'Andre Pereira', date('1997-12-10'), 938793859, '4150-347', 'R. Padre Alencar 43');
insert into Funcionario (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values (123124125, 'Joaozinho Ballester', date('1995-11-28'), 931565972, '4030-547', 'Travessia da Raposa 98');
insert into Funcionario (NIF, nome, dataNascimento, telefone, codigoPostal, morada) values (456451687, 'Rui Silva', date('1993-08-21'), 938653486, '4170-687', 'R. D.Joao I 740');



-- FuncionarioRestaurante
insert into FuncionarioRestaurante (IDfuncionario) values (123456789);
insert into FuncionarioRestaurante (IDfuncionario) values (987654321);
insert into FuncionarioRestaurante (IDfuncionario) values (516798151);

-- PizzaBoy
insert into PizzaBoy (IDfuncionario,capacidade) values (456789123,20);
insert into PizzaBoy (IDfuncionario,capacidade) values (908765342,30);
insert into PizzaBoy (IDfuncionario,capacidade) values (456451687,25);
insert into PizzaBoy (IDfuncionario,capacidade) values (123124125,20);


-- Pedido
insert into Pedido (codigoPedido, dataHora, cliente, valor,estado) values (1001, datetime('now'),'456700503', 9.9, 'concluído');
insert into Pedido (codigoPedido, dataHora, cliente, valor,estado) values (1002, datetime('now'),'456700503', 9.9, 'na cozinha');
insert into Pedido (codigoPedido, dataHora, cliente, valor,estado) values (1003, datetime('now'),'984819287', 9.9, 'a caminho');
insert into Pedido (codigoPedido, dataHora, cliente, valor,estado) values (1004, datetime('now'),NULL, 12.5, 'concluído');
insert into Pedido (codigoPedido, dataHora, cliente, valor,estado) values (1005, datetime('now'),'179203447', 11.9, 'em aberto');
insert into Pedido (codigoPedido, dataHora, cliente, valor,estado) values (1006, datetime('now'),NULL, 11.9, 'concluído');
insert into Pedido (codigoPedido, dataHora, cliente, valor,estado) values (1007, date('2017-05-24 12:04:10'),984819287, 13.9, 'concluído');
insert into Pedido (codigoPedido, dataHora, cliente, valor,estado) values (1008, date('2017-05-25 13:04:10'),984819287, 1.9, 'concluído');


-- PedidoParaFora
insert into PedidoParaFora (codigoPedido, formaDePagamento, clienteOn, localEntrega) values (1001, 'multibanco', '456700503', 1);
insert into PedidoParaFora (codigoPedido, formaDePagamento, clienteOn, localEntrega) values (1002,'dinheiro', '456700503', 2);
insert into PedidoParaFora (codigoPedido, formaDePagamento, clienteOn, localEntrega) values (1003, 'mbnet', '984819287', 3);
insert into PedidoParaFora (codigoPedido, formaDePagamento, clienteOn, localEntrega) values (1007, 'dinheiro', '984819287', 2);
insert into PedidoParaFora (codigoPedido, formaDePagamento, clienteOn, localEntrega) values (1008, 'dinheiro', '456700503', 2);


-- PedidoRestaurante
insert into PedidoRestaurante (codigoPedido, numeroMesa, funcionario) values (1004, 2, 123456789);
insert into PedidoRestaurante (codigoPedido, numeroMesa, funcionario) values (1005, 5, 987654321);
insert into PedidoRestaurante (codigoPedido, numeroMesa, funcionario) values (1006, 7, 987654321);

-- PizzaPedido
insert into PizzaPedido (IDPizza, codigoPedido, quantidade) values (1, 1001, 2);
insert into PizzaPedido (IDPizza, codigoPedido, quantidade) values (4, 1001, 1);
insert into PizzaPedido (IDPizza, codigoPedido, quantidade) values (6, 1002, 5);
insert into PizzaPedido (IDPizza, codigoPedido, quantidade) values (2, 1003, 1);
insert into PizzaPedido (IDPizza, codigoPedido, quantidade) values (4, 1003, 3);
insert into PizzaPedido (IDPizza, codigoPedido, quantidade) values (7, 1004, 2);
insert into PizzaPedido (IDPizza, codigoPedido, quantidade) values (9, 1005, 2);
insert into PizzaPedido (IDPizza, codigoPedido, quantidade) values (2, 1006, 2);


-- MenuPedido
insert into MenuPedido (IDMenu, codigoPedido, quantidade) values (1, 1001, 2);
insert into MenuPedido (IDMenu, codigoPedido, quantidade) values (2, 1002, 1);
insert into MenuPedido (IDMenu, codigoPedido, quantidade) values (3, 1003, 1);
insert into MenuPedido (IDMenu, codigoPedido, quantidade) values (4, 1004, 3);
insert into MenuPedido (IDMenu, codigoPedido, quantidade) values (2, 1005, 2);
insert into MenuPedido (IDMenu, codigoPedido, quantidade) values (2, 1006, 1);


-- BebidaPedido
insert into BebidaPedido (IDBebida, codigoPedido, quantidade) values (1, 1001, 1);
insert into BebidaPedido (IDBebida, codigoPedido, quantidade) values (2, 1002, 1);
insert into BebidaPedido (IDBebida, codigoPedido, quantidade) values (3, 1003, 1);
insert into BebidaPedido (IDBebida, codigoPedido, quantidade) values (4, 1004, 3);
insert into BebidaPedido (IDBebida, codigoPedido, quantidade) values (5, 1005, 2);
insert into BebidaPedido (IDBebida, codigoPedido, quantidade) values (6, 1006, 2);
insert into BebidaPedido (IDBebida, codigoPedido, quantidade) values (2, 1005, 1);
insert into BebidaPedido (IDBebida, codigoPedido, quantidade) values (2, 1004, 2);

-- IngredienteAdicionalPedido
insert into IngredienteAdicionalPedido (IDIngredienteAdicional,IDPizza, codigoPedido, quantidade) values (11,2, 1002, 2);
insert into IngredienteAdicionalPedido (IDIngredienteAdicional,IDPizza, codigoPedido, quantidade) values (11,4, 1003, 2);
insert into IngredienteAdicionalPedido (IDIngredienteAdicional,IDPizza, codigoPedido, quantidade) values (4,2, 1004, 2);
insert into IngredienteAdicionalPedido (IDIngredienteAdicional,IDPizza, codigoPedido, quantidade) values (9,11, 1005, 2);
insert into IngredienteAdicionalPedido (IDIngredienteAdicional,IDPizza, codigoPedido, quantidade) values (1,1, 1006, 2);
insert into IngredienteAdicionalPedido (IDIngredienteAdicional,IDPizza, codigoPedido, quantidade) values (27,9, 1002, 2);
insert into IngredienteAdicionalPedido (IDIngredienteAdicional,IDPizza, codigoPedido, quantidade) values (24,4, 1005, 2);
insert into IngredienteAdicionalPedido (IDIngredienteAdicional,IDPizza, codigoPedido, quantidade) values (15,6, 1006, 2);
insert into IngredienteAdicionalPedido (IDIngredienteAdicional,IDPizza, codigoPedido, quantidade) values (17,7, 1002, 2);
insert into IngredienteAdicionalPedido (IDIngredienteAdicional,IDPizza, codigoPedido, quantidade) values (30,9, 1002, 1);
insert into IngredienteAdicionalPedido (IDIngredienteAdicional,IDPizza, codigoPedido, quantidade) values (23,4, 1005, 0);
insert into IngredienteAdicionalPedido (IDIngredienteAdicional,IDPizza, codigoPedido, quantidade) values (12,6, 1006, 55);




--PizzaFavoritaClienteOnline
insert into PizzaFavoritaClienteOnline (IDpizza, IDcliente) values (1,'456700503');
insert into PizzaFavoritaClienteOnline (IDpizza, IDcliente) values (10,'627043025');
insert into PizzaFavoritaClienteOnline (IDpizza, IDcliente) values (7,'886202600');
insert into PizzaFavoritaClienteOnline (IDpizza, IDcliente) values (4,'446170008');
insert into PizzaFavoritaClienteOnline (IDpizza, IDcliente) values (9,'436001862');
insert into PizzaFavoritaClienteOnline (IDpizza, IDcliente) values (9,'816272668');
insert into PizzaFavoritaClienteOnline (IDpizza, IDcliente) values (9,'179203447');
insert into PizzaFavoritaClienteOnline (IDpizza, IDcliente) values (9,'984819287');

--AreaPizzaBoy
insert into AreaPizzaBoy (IDarea, IDpizzaboy) values ('4100',456789123);
insert into AreaPizzaBoy (IDarea, IDpizzaboy) values ('4200',456789123);
insert into AreaPizzaBoy (IDarea, IDpizzaboy) values ('4200',908765342);
insert into AreaPizzaBoy (IDarea, IDpizzaboy) values ('4000',123124125);
insert into AreaPizzaBoy (IDarea, IDpizzaboy) values ('4150',456451687);
