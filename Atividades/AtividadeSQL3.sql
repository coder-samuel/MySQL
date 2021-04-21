create database db_alunes;
use db_alunes;
create table tb_alunes(
id bigint (8) auto_increment,
nome varchar (30) not null,
nota decimal (3,1)not null,
idade bigint (3) not null,
matricula bigint (6) not null,
nivel varchar (15) not null,

	primary key (id)
);

insert into tb_alunes (nome, nota, idade, matricula, nivel) values ("Cibele Moura", 7.8, 16, 536453,"Médio");
insert into tb_alunes (nome, nota, idade, matricula, nivel) values ("Leila Montavani", 5.8, 16, 767678,"Médio");
insert into tb_alunes (nome, nota, idade, matricula, nivel) values ("Juno Gomes", 8.8, 14, 234543,"Fundamental II");
insert into tb_alunes (nome, nota, idade, matricula, nivel) values ("Lírie D'ávila", 7.0, 14, 908987,"Funadamental II");
insert into tb_alunes (nome, nota, idade, matricula, nivel) values ("Olga Vicente", 9.8, 14, 454278,"Fundamental II");
insert into tb_alunes (nome, nota, idade, matricula, nivel) values ("Bel Souza", 9.8, 16, 768545,"Médio");
insert into tb_alunes (nome, nota, idade, matricula, nivel) values ("Murillo Costa", 5.8, 16, 550987,"Médio");
insert into tb_alunes (nome, nota, idade, matricula, nivel) values ("Guilherme Assis", 4.9, 16, 434344,"Médio");

select * from tb_alunes;
select * from tb_alunes where nota >= 7.0;
select * from tb_alunes where nota < 7.0;

update tb_alunes set nota = 6.2 where id = 2;
update tb_alunes set nivel = "Fundamental II" where id = 4;



