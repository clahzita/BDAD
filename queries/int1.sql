-- BDAD @ MIEIC, grupo 607 @ FEUP 16-17
-- QUERY #1
-- Nome e telefone de clientes que possuem data de aniversário (dia e mês) igual a data atual

.mode columns
.width 30 20
.headers on
.nullvalue NULL

SELECT nome,telefone FROM Cliente
WHERE ( ( strftime('%m',dataNascimento) = strftime('%m','now'))
  AND ( strftime('%d',dataNascimento) = strftime('%d','now')) );
