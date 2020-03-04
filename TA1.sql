--
-- Numero: 39489
-- Nome: Jorge Pissarra
-- Curso: Engenharia Informatica
-- Trabalho: TA1
--

-- Q1: Quais s�o os nomes e os sal�rios dos empregados que n�o trabalham no departamento 3 e que recebem menos de 1/20 do sal�rio do patr�o.
SELECT Nome, Salario FROM Empregado WHERE ((DepNum != 3) AND (Salario < (SELECT Salario FROM Empregado WHERE Categoria = 'Patr�o') / 20))

-- Q2: Quais s�o os empregados que tem um nome com 7 letras.
SELECT Nome FROM Empregado Where LEN(Nome) = 7

-- Q3: Quais s�o os nomes e fun��es dos empregados que n�o participam em projetos.
SELECT Nome, Categoria FROM Empregado WHERE (EmpNum NOT IN (SELECT EmpNum FROM Atribuicao))