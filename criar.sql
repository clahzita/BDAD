PRAGMA FOREIGN_KEYS = ON;

-- eliminas tabelas existentes

DROP TABLE if exists Ingrediente;
DROP TABLE if exists IngredienteAdicional;
DROP TABLE if exists Pizza;
DROP TABLE if exists Cliente;
DROP TABLE if exists PizzaIngrediente;
DROP TABLE if exists Menu;
DROP TABLE if exists Bebida;
DROP TABLE if exists ClienteOnline;
DROP TABLE if exists Pedido;
DROP TABLE if exists PedidoParaFora;
DROP TABLE if exists PedidoRestaurante;
DROP TABLE if exists AreaEntrega;
DROP TABLE if exists Funcionario;
DROP TABLE if exists FuncionarioRestaurante;
DROP TABLE if exists PizzaBoy;
DROP TABLE if exists PizzaPedido;
DROP TABLE if exists MenuPedido;
DROP TABLE if exists IngredienteAdicionalPedido;
DROP TABLE if exists BebidaPedido;
DROP TABLE if exists LocalEntrega;
DROP TABLE if exists PizzaFavoritaClienteOnline;
DROP TABLE if exists AreaPizzaBoy;

-- criador das tabelas

CREATE TABLE Ingrediente (
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  Nome VARCHAR(50) NOT NULL UNIQUE,
  QuantidadeStock INTEGER CHECK(QuantidadeStock>=0)
);

CREATE TABLE Pizza (
  IDPizza INTEGER PRIMARY KEY AUTOINCREMENT,
  Nome VARCHAR(50) NOT NULL UNIQUE,
  Tamanho TEXT CHECK (tamanho='P' or tamanho='M' or tamanho='G'),
  Preco REAL NOT NULL CHECK (preco>=0.0)

);

CREATE TABLE IngredienteAdicional(
   IDingrediente INTEGER NOT NULL  REFERENCES Ingrediente,
   IDpizza  INTEGER  NOT NULL REFERENCES Pizza,
   preco REAL NOT NULL CHECK (preco>=0.0),
   PRIMARY KEY(IDpizza,IDingrediente)
);

CREATE TABLE PizzaIngrediente(
  IDpizza INTEGER  NOT NULL REFERENCES Pizza,
  IDingrediente INTEGER 	NOT NULL REFERENCES Ingrediente,
  --Adicionar no relatorio!!!!
  quantidade INTEGER NOT NULL CHECK(quantidade>=0),
  PRIMARY KEY(IDpizza, IDingrediente)
);


CREATE TABLE Menu (
  IDMenu INTEGER PRIMARY KEY AUTOINCREMENT,
  IDpizza	INTEGER 	NOT NULL REFERENCES Pizza,
  BebidaId 	INTEGER	NOT NULL REFERENCES Bebida,
  Preco	REAL 	NOT NULL CHECK (Preco>=0.0)
);


CREATE TABLE Bebida (
  ID INTEGER 	PRIMARY KEY 	AUTOINCREMENT,
  Nome 	VARCHAR(50) 	 UNIQUE NOT NULL,
  Preco REAL 	CHECK (Preco>=0.0) NOT NULL
);

CREATE TABLE Cliente (
  NIF INTEGER PRIMARY KEY NULL,
  nome VARCHAR(50) NOT NULL,
  dataNascimento TEXT NOT NULL,  
  telefone 	INTEGER NOT NULL,
  codigoPostal CHAR(8),
  morada TEXT DEFAULT 'Não cadastrada'
);

CREATE TABLE ClienteOnline (
  ClienteId INTEGER PRIMARY KEY REFERENCES Cliente,
  username VARCHAR(50) NOT NULL UNIQUE,
  eMail TEXT NOT NULL UNIQUE,
  palavraPasse VARCHAR(12) NOT NULL
);


CREATE TABLE Pedido (
  codigoPedido INTEGER PRIMARY KEY AUTOINCREMENT,
  dataHora TEXT NOT NULL,
  cliente INTEGER REFERENCES Cliente DEFAULT 'Não cadastrado',
  valor REAL 	NOT NULL CHECK(valor>=0.0),
  estado TEXT CHECK (estado='em aberto' OR estado='concluído' OR estado='na cozinha' OR estado='a caminho' OR estado='aguarda pagamento')
);


CREATE TABLE PedidoParaFora (
  codigoPedido INTEGER PRIMARY KEY,
  formaDePagamento TEXT CHECK(formaDePagamento='multibanco' OR formaDePagamento='paypal' OR formaDePagamento='mbnet' OR formaDePagamento='dinheiro') NOT NULL,
  clienteOn INTEGER NOT NULL,
  localEntrega INTEGER NOT NULL,
  FOREIGN KEY(codigoPedido) REFERENCES Pedido(codigoPedido),
  FOREIGN KEY(clienteOn) REFERENCES Cliente(NIF),
  FOREIGN KEY(localEntrega) REFERENCES LocalEntrega(ID)
);


CREATE TABLE PedidoRestaurante (
  codigoPedido INTEGER PRIMARY KEY REFERENCES Pedido,
  numeroMesa NOT NULL CHECK (numeroMesa>=0),
  funcionario INTEGER NOT NULL REFERENCES FuncionarioRestaurante
);


CREATE TABLE AreaEntrega (
 codigoPostalparte1 CHAR(4) PRIMARY KEY,
  taxa REAL CHECK(taxa>=0.0)
);

CREATE TABLE LocalEntrega (
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  codigoPostalparte1 CHAR(4),
  codigoPostalparte2 CHAR(3),
  morada TEXT NOT NULL,
  pontoReferencia TEXT,
  FOREIGN KEY(codigoPostalparte1) REFERENCES AreaEntrega(codigoPostalparte1)
);

CREATE TABLE Funcionario (
  NIF INTEGER 	PRIMARY KEY,
  nome VARCHAR(50)	NOT NULL,
  dataNascimento TEXT NOT NULL,
  telefone 			INTEGER NOT NULL,
  codigoPostal CHAR(8),
  morada TEXT DEFAULT 'Não cadastrada'
);


CREATE TABLE FuncionarioRestaurante (
  IDfuncionario INTEGER PRIMARY KEY REFERENCES Funcionario
);


CREATE TABLE PizzaBoy (
  IDfuncionario INTEGER PRIMARY KEY REFERENCES Funcionario,
  capacidade INTEGER CHECK(capacidade>=0)
);



CREATE TABLE PizzaPedido (
  IDPizza INTEGER NOT NULL REFERENCES Pizza,
  codigoPedido INTEGER  NOT NULL REFERENCES Pedido,
  quantidade INTEGER NOT NULL CHECK(quantidade>=0),
  PRIMARY KEY (IDPizza, codigoPedido)
);


CREATE TABLE MenuPedido (
  IDMenu INTEGER NOT NULL REFERENCES Menu,
  codigoPedido INTEGER  NOT NULL REFERENCES Pedido,
  quantidade INTEGER NOT NULL CHECK(quantidade>=0),
  PRIMARY KEY (IDMenu, codigoPedido)
);


CREATE TABLE BebidaPedido (
  IDBebida INTEGER NOT NULL REFERENCES Bebida,
  codigoPedido INTEGER  NOT NULL REFERENCES Pedido,
  quantidade INTEGER NOT NULL CHECK(quantidade>=0),
  PRIMARY KEY (IDBebida, codigoPedido)
);


CREATE TABLE IngredienteAdicionalPedido (
  IDIngredienteAdicional INTEGER NOT NULL,
  IDPizza INTEGER NOT NULL,
  codigoPedido INTEGER  NOT NULL REFERENCES Pedido,
  quantidade INTEGER NOT NULL CHECK(quantidade>=0),
  PRIMARY KEY (IDIngredienteAdicional,IDPizza, codigoPedido),
  FOREIGN KEY(IDIngredienteAdicional,IDPizza) REFERENCES IngredienteAdicional(IDingrediente,IDpizza)
);

CREATE TABLE  PizzaFavoritaClienteOnline(
  IDpizza INTEGER NOT NULL REFERENCES Pizza,
  IDcliente INTEGER  NOT NULL REFERENCES Cliente,
  PRIMARY KEY (IDpizza, IDcliente)
);


CREATE TABLE  AreaPizzaBoy(
  IDarea INTEGER NOT NULL REFERENCES AreaEntrega,
  IDpizzaboy INTEGER  NOT NULL REFERENCES PizzaBoy,
  PRIMARY KEY (IDarea, IDpizzaboy)
);
