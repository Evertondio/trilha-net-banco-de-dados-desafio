1- select Nome, Ano from Filmes;
2- select Nome,Ano,Duracao from Filmes order by Ano; 
3- select Nome,Ano,Duracao from Filmes where Nome like '%De Volta%'; /*ou*/
   select Nome,Ano,Duracao from Filmes where Nome = 'De Volta para o Futuro';
4- select Nome,Ano,Duracao from Filmes where Ano = 1997;
5- select Nome,Ano,Duracao from Filmes where Ano>2000;
6- select Nome,Ano,Duracao from Filmes where Duracao>100 and Duracao<150 order by Duracao;
7- select Ano, count(*) as Quantiadade from Filmes group by Ano order by count(Duracao) desc;
8- select PrimeiroNome,UltimoNome from Atores where Genero = 'M';
9- select PrimeiroNome,UltimoNome from Atores where Genero = 'F' order by PrimeiroNome asc;
10- select  f.Nome, g.Genero from FilmesGenero fg inner join Filmes f on f.Id = fg.IdFilme inner join Generos g on g.Id= fg.IdGenero
11- select f.Nome, g.Genero from FilmesGenero fg inner join Filmes f on f.Id = fg.IdFilme inner join Generos g on g.Id = fg.IdGenero where g.Genero ='Mistério' /*ou*/
select f.Nome, g.Genero from FilmesGenero fg inner join Filmes f on f.Id = fg.IdFilme inner join Generos g on g.Id = fg.IdGenero where g.id = 10;

12- select f.Nome,a.PrimeiroNome, a.UltimoNome,ef.Papel from ElencoFilme ef inner join Filmes f on f.Id = ef.IdFilme inner join Atores a on a.Id = ef.IdAtor