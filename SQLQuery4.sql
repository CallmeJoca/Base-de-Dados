USE DBProject

INSERT INTO Departamento(DepNum, Nome, Local)
VALUES (100, 'E-toupeira', 'Luz Apagada');

INSERT INTO Empregado (EmpNum, Nome, Categoria, Salario, DepNum)
VALUES (1500, 'Forão mor', 'Coordenador', 1200000, 100);

UPDATE Departamento
SET Local = "Lisboa" WHERE DepNum = 100;

DELETE FROM Empregado WHERE EmpNum=1500;

DELETE FROM Departamento WHERE DepNum=100;