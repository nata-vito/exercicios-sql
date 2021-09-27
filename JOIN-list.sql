--1. Criar uma consulta para exibir o Name e o UserName do Player e os seus respectivos Type do GameServer utilizado por eles
SELECT 
	P.Nome, P.UserName,
	G.Tipo
FROM
	GameServer G INNER JOIN Player P
		ON G.IDGameServer = P.IDGameServer

--2. Criar uma consulta para exibir o UserName e o Password do Player e o respectivo IP e CreationDate do GameServer utilizado por eles. 
SELECT 
	P.UserName, P.Senha,
	G.IPadress, G.CreationDate
FROM
	GameServer G INNER JOIN Player P
		ON G.IDGameServer = P.IDGameServer

--3. Criar uma consulta para exibir o IP de todos os GameSever e os Name dos respectivos Players quando existir associação
SELECT 
	P.Nome,
	G.IPadress
FROM
	GameServer G LEFT JOIN Player P
		ON G.IDGameServer = P.IDGameServer
ORDER BY
	P.Nome

-- 4.Criar uma consulta para exibir o IP e CreationDate do GameServer e o Name do Player quando o seu Name possuir 
--“Ana” em qualquer parte do texto.
SELECT 
	P.Nome,
	G.IPadress, G.CreationDate
FROM
	GameServer G INNER JOIN Player P
		ON G.IDGameServer = P.IDGameServer
WHERE
	P.Nome LIKE '%Anna%'


-- 5.Criar uma consulta para exibir o UserName e o Age do Player e o Creation Date do GameServer quando o Password 
--do Player possuir 4 (inclusive) ou menosletras.
SELECT 
	P.UserName, P.Age,
	G.CreationDate
FROM
	GameServer G INNER JOIN Player P
		ON G.IDGameServer = P.IDGameServer
WHERE
	LEN(P.Senha) <= 4


-- 6.Criar  uma  consulta  para  exibir  o  IP  do  GameServer  e  a  quantidade  de  Players  associados  a cada GameServer
SELECT 
	G.IPadress,
	COUNT(*) QTD
FROM
	GameServer G INNER JOIN Player P
		ON G.IDGameServer = P.IDGameServer
GROUP BY 
	G.IPadress

-- 7.Criar  uma  consulta  para  exibir TODOS os  IP  do  GameServer  e  a  quantidade  de  Players associados a cada GameServer
SELECT 
	G.IPadress,
	COUNT(*) QTD
FROM
	GameServer G LEFT JOIN Player P
		ON G.IDGameServer = P.IDGameServer
GROUP BY 
	G.IPadress

-- 8.Criar uma consulta para exibir o Type do GameServer e a média de idade (Age) dos Players associados a eles.
SELECT 
	G.Tipo,
	AVG(P.Age) AgeAVG
FROM
	GameServer G LEFT JOIN Player P
		ON G.IDGameServer = P.IDGameServer
GROUP BY 
	G.Tipo


SELECT * FROM Player
SELECT * FROM GameServer
