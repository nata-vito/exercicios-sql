select * from Funcionario

select count(*) QTD, sum(Salario) Soma,avg(Salario) Media from Funcionario where Cidade = 'São Paulo'

select Cidade, count(*) Qtd, sum(Salario) Salario, avg(Salario) Média from Funcionario group by Cidade


select 
	--A.Titulo,
	--B.Nome
	*
from
	Artigo A inner join Usuario B
		on A.UsuarioID = B.UsuarioID


select *
from 
	Artigo A left join Usuario B
		on A.UsuarioID = B.UsuarioID


select B.Nome, A.Titulo
from 
	Artigo A right join Usuario B
		on A.UsuarioID = B.UsuarioID
order by B.Nome


select B.Nome, A.Titulo
from 
	Artigo A full join Usuario B
		on A.UsuarioID = B.UsuarioID
order by B.Nome


select*
from 
	Artigo A left join Usuario B
		on A.UsuarioID = B.UsuarioID
where B.UsuarioID is null

select*
from 
	Artigo A right join Usuario B
		on A.UsuarioID = B.UsuarioID
where A.UsuarioID is null


select*
from 
	Artigo A full join Usuario B
		on A.UsuarioID = B.UsuarioID
where A.UsuarioID is null or B.UsuarioID is null


select * from Usuario
select * from Artigo

select 
	B.Nome, count(A.UsuarioID) Qtd
from
	Artigo A right join Usuario B
		on A.UsuarioID = B.UsuarioID
group by B.Nome