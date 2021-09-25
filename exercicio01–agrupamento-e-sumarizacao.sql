CREATE TABLE GameServer(
	IDGameServer		int NOT NULL IDENTITY,
	IPadress			varchar(30) NOT NULL,
	Tipo				varchar(100) NOT NULL,
	CreationDate		datetime,
	CONSTRAINT PKIDGameServer PRIMARY KEY (IDGameServer)
)

CREATE TABLE Player(
	IDPlayer		int NOT NULL IDENTITY,
	Nome			varchar(200) NOT NULL,
	UserName		varchar(20) NOT NULL,
	Senha			varchar(20) NOT NULL,
	Pontos			int,
	IDGameServer	int NOT NULL,
	CONSTRAINT PKIDPlayer PRIMARY KEY (IDPlayer),
	CONSTRAINT FKPlayerGameServer FOREIGN KEY (IDGameServer) REFERENCES GameServer(IDGameServer)
)

ALTER TABLE Player ADD Age int

DROP TABLE GameServer
DROP TABLE Player

SELECT * FROM GameServer
SELECT * FROM Player

SET DATEFORMAT DMY

INSERT INTO GameServer(IPadress, Tipo, CreationDate)
VALUES
		('333.333.333.333', 'Dedicated Server', GETDATE()),	
		('192.168.10.51', 'Dedicated Server', GETDATE()),
		('200.215.12.3', 'Listen server', GETDATE()),
		('123.456.789.10', 'Peer-to-Peer', GETDATE()),
		('789.789.789.789', 'Listen server', GETDATE()),
		('123.123.123.123', 'Peer-to-Peer', GETDATE()),
		('111.111.111.111', 'Dedicated Server', '28-08-2011'),
		('222.222.222.222', 'Dedicated Server', '28-08-2013')

INSERT INTO Player(Nome, UserName, Senha, Pontos, IDGameServer, Age)
Values
		('Ace Monster', 'ace.monster', '123', 600, 5, 25),
		('Hulk Jedi', 'hulk.jedi', '456', 700, 3, 30),
		('Pick Nick', 'pick.nick', '789', 800, 2, 12),
		('Procurando Nemo', 'nemo', '000', 900, 1, 17),
		('Duende Verde', 'green', '123mudar', 1000, 2, 19),
		('Cosme', 'cosme', 'mudar', 1100, 3, 25),
		('Rambo', 'rambo', 'mudar@123', 600, 5, 26),
		('Anna Croft', 'anna.croft', 'mudar@123@', 600,5, 18),
		('Jose Silva', 'jSilva', 'mudar@123', 400, 5, 19),
		('Matilda Oliveira', 'rOliva', '@123mudar', 300, 5, 26),
		('Jony Bravo', 'jony.bravo', '123', 40, 3, 30),
		('Pantera Negra', 'pantera', '123', 90, 3, 25)

-- 1.COUNT: Exibir a quantidade de GameServer cadastrados
SELECT COUNT(*) Qtd FROM GameServer

-- 2.SUM:Exibir a soma de todos os Pointsdos Players
SELECT SUM(Pontos) TotalPontos FROM Player

-- 3.AVG:Exibir a média dos Points dos Players
SELECT AVG(Pontos) MediaPontos FROM Player

-- 4.MAX e MIN:Exibir o GameServer mais novo e mais velho
SELECT MAX(CreationDate) Maximo, MIN(CreationDate) Minimo FROM GameServer

-- 5.SUM + WHERE:Exibir a soma da idade (Age) dos Players com mais de 100 pontos (points)
SELECT SUM(Age) TotalIdade FROM Player WHERE Pontos > 100

-- 6.COUNT + GROUP BY: Exibir a quantidade de GameServer agrupados por Tipo (Type)
SELECT Tipo, COUNT(*) QTD FROM GameServer GROUP BY Tipo


-- 7.AVG + GROUP BY:Exibir a média de pontos (points) agrupados por idade (age)
SELECT Age, AVG(Pontos) MediaPontos FROM Player GROUP By Age

-- 8.COUNT + GROUP BY+HAVING: Exibir a quantidade deGameServer agrupados por Tipo (Type). 
--Somente os GameServer com quantidade entre 1 e 3 devem ser exibidos.
SELECT Tipo, COUNT(*) QTD FROM GameServer GROUP BY Tipo HAVING COUNT(*) BETWEEN 1 AND 3

-- 9.AVG + GROUP BY + HAVING: Exibir  a  média  de pontos  (points)  agrupados  por idade (age).
-- Somente os players com média superior a 100 devem ser exibidos.
SELECT Age, AVG(Pontos) MediaPontos FROM Player GROUP BY Age HAVING AVG(Pontos) > 100