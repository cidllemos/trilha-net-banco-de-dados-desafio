use Filmes 
go

--Resolução Desafio Trilha Banco de Dados - DIO-- 

--1
select 
	Nome
	,Ano
from dbo.Filmes 

--2
select 
	Nome
	,Ano
	,Duracao
from dbo.Filmes order by ano asc

--3 
select 
	Nome
	,Ano
	,Duracao
from dbo.Filmes
	where Nome = 'De volta para o futuro'

--4
select 
	Nome
	,Ano
	,Duracao
from dbo.Filmes
	where ano = 1997

--5
select 
	Nome
	,Ano
	,Duracao
from dbo.Filmes
	where Ano > 2000

--6
select 
	Nome
	,Ano
	,Duracao
from dbo.Filmes
	where Duracao > 100 and Duracao < 150 
order by Duracao asc

--7 
select 
	Ano
	,count(*) as Quantidade
from dbo.Filmes
group by Ano
order by Quantidade desc

--8
select	
	* 
from Atores
	where Genero = 'M'

--9 
select	
	* 
from Atores
	where Genero = 'F'
order by PrimeiroNome asc

--10
select  
	f.Nome,
	g.Genero
from 
	Filmes as f
	inner join FilmesGenero as fg on f.Id = fg.IdFilme
	inner join Generos as g on g.Id = fg.IdGenero

--11
select  
	f.Nome,
	g.Genero
from 
	Filmes as f
	inner join FilmesGenero as fg on f.Id = fg.IdFilme
	inner join Generos as g on g.Id = fg.IdGenero
where g.Genero = 'Mistério'

--12
select
	f.Nome
	,a.PrimeiroNome
	,a.UltimoNome
	,ef.Papel
from Filmes as f
inner join ElencoFilme as ef on f.Id = ef.IdFilme
inner join Atores as a on a.Id = ef.IdAtor


select top 1 * from Atores
select * from ElencoFilme







