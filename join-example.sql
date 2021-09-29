create table Tabela_A(
	Chave int not null,
	Valor varchar(10)
)

create table Tabela_B(
	Chave int not null,
	Valor varchar(10)
)


insert into Tabela_A(Chave, Valor) values
	(1, 'FOX'),
	(2, 'COP'),
	(3, 'TAXI'),
	(4, 'LINCOLN'),
	(5, 'ARIZONA'),
	(6, 'WASHINGTON'),
	(7, 'DELL'),
	(10, 'LUCENT')

insert into Tabela_A(Chave, Valor) values
	(1, 'TROT'),
	(2, 'CAR'),
	(3, 'CAB'),
	(6, 'MONUMENT'),
	(7, 'PC'),
	(8, 'MICROSOFT'),
	(9, 'APPLE'),
	(11, 'SCOTCH')

SELECT * FROM Tabela_A
SELECT * FROM Tabela_A