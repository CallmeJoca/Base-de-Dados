--
-- Numero: 39489
-- Nome: Jorge Pissarra
-- Curso: Engenharia Informatica
-- Trabalho: TA1
--

-- Q1: Quais são os nomes e os salários dos empregados que não trabalham no departamento 3 e que recebem menos de 1/20 do salário do patrão.
SELECT Nome, Salario FROM Empregado WHERE ((DepNum != 3) AND (Salario < (SELECT Salario FROM Empregado WHERE Categoria = 'Patrão') / 20))

-- Q2: Quais são os empregados que tem um nome com 7 letras.
SELECT Nome FROM Empregado Where LEN(Nome) = 7

-- Q3: Quais são os nomes e funções dos empregados que não participam em projetos.
SELECT Nome, Categoria FROM Empregado WHERE (EmpNum NOT IN (SELECT EmpNum FROM Atribuicao))