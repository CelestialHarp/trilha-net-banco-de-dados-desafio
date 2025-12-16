--1
select nome, cast(ano as varchar(4)) as ano from filmes;

--2
select nome, cast(ano as varchar(4)) as ano, duracao from filmes order by ano ASC;

--3
select nome, cast(ano as varchar(4)) as ano, duracao from filmes where nome = 'De Volta para o Futuro';

--4
select nome, cast(ano as varchar(4)) as ano, duracao from filmes where ano = 1997;

--5
select nome, cast(ano as varchar(4)) as ano, duracao from filmes where ano > 2000;

--6
select nome, cast(ano as varchar(4)) as ano, duracao
from filmes
where duracao > 100 and duracao < 150
order by duracao asc;

--7
select cast(ano as varchar(4)) as ano, count(ano) as Quantidade
from filmes
group by ano
order by Quantidade DESC;


--8
select Id, PrimeiroNome, UltimoNome, genero
from atores
where Genero = 'M';

--9
select Id, PrimeiroNome, UltimoNome, genero
from atores
where Genero = 'F'
order by PrimeiroNome asc;

--10 (mostrando que eu entendo aliasses, embora não goste)
select F.Nome, G.genero
from Filmes F
inner join filmesgenero FG on F.id = FG.idfilme
inner join generos G on FG.idgenero = G.id;

--11
select filmes.nome, generos.genero
from filmes
inner join filmesgenero on filmes.id = filmesgenero.idfilme
inner join generos on filmesgenero.idgenero = generos.id
where generos.genero = 'Mistério';


--12
select filmes.nome, atores.primeironome, atores.ultimonome, elencofilme.papel
from filmes
inner join elencofilme on filmes.id = elencofilme.idfilme
inner join atores on elencofilme.id = atores.id;
