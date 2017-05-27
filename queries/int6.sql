-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- QUERY #6
-- Numero de pedidos online registados por dia da semana

.mode columns
.width 19 21 
.headers on
.nullvalue NULL

DROP TABLE if exists DiasSemana;
CREATE TABLE DiasSemana (
  day_of_week INTEGER PRIMARY KEY,
  dia_da_semana VARCHAR(20) NOT NULL UNIQUE
);

insert into DiasSemana(day_of_week,dia_da_semana) values (0, 'Domingo');
insert into DiasSemana(day_of_week,dia_da_semana) values (1, 'Segunda-feira');
insert into DiasSemana(day_of_week,dia_da_semana) values (2, 'Terca-Feira');
insert into DiasSemana(day_of_week,dia_da_semana) values (3, 'Quarta-Feira');
insert into DiasSemana(day_of_week,dia_da_semana) values (4, 'Quinta-Feira');
insert into DiasSemana(day_of_week,dia_da_semana) values (5, 'Sexta-Feira');
insert into DiasSemana(day_of_week,dia_da_semana) values (6, 'Sabado');

  SELECT dia_da_semana,numero_pedidos_online
  FROM (SELECT strftime('%w', dataHora) day_of_week, COUNT(strftime('%w', dataHora)) numero_pedidos_online FROM
  PedidoParaFora JOIN
  Pedido USING
  (codigoPedido) GROUP BY
  day_of_week) JOIN DiasSemana USING(day_of_week);
