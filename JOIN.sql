-- Exibir o Titulo e Texto do Artigo com o Nome do usuário
SELECT 
	A.Titulo,
	A.Texto,
	U.Nome
FROM
	Artigo A INNER JOIN Usuario U
		ON A.UsuarioID = U.UsuarioID
ORDER BY U.Nome

SELECT * FROM Artigo


-- Exibir o titulo e texto de todos os artigos e o nome dos usuários que escreveram o mesmo (quando existir valor correspondente)
SELECT 
	A.Titulo,
	A.Texto,
	U.Nome,
	U.LoginUsuario
FROM
	Artigo A LEFT JOIN Usuario U
		ON A.UsuarioId = U.UsuarioID


-- RIGHT JOIN
SELECT 
	U.Nome, U.LoginUsuario,
	a.Titulo
FROM
	Artigo A RIGHT JOIN Usuario U
		ON A.UsuarioID = U.UsuarioID



-- FULL JOIN
SELECT 
	U.Nome, U.LoginUsuario,
	a.Titulo
FROM
	Artigo A FULL JOIN Usuario U
		ON A.UsuarioID = U.UsuarioID


-- LEFT Excluding JOIN A-B
SELECT 
	U.Nome, U.LoginUsuario,
	a.Titulo
FROM
	Artigo A LEFT JOIN Usuario U
		ON A.UsuarioID = U.UsuarioID
WHERE 
	U.UsuarioID IS NULL


-- RIGHT Excluding JOIN B-A
SELECT 
	U.Nome, U.LoginUsuario,
	a.Titulo
FROM
	Artigo A RIGHT JOIN Usuario U
		ON A.UsuarioID = U.UsuarioID
WHERE 
	A.UsuarioID IS NULL


-- FULl Excluding 
SELECT 
	U.Nome, U.LoginUsuario,
	a.Titulo
FROM
	Artigo A FULL JOIN Usuario U
		ON A.UsuarioID = U.UsuarioID
WHERE 
	A.UsuarioID IS NULL OR U.UsuarioID IS NULL