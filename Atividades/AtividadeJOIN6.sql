create database db_cursosDaMinhaVida;
use db_cursosDaMinhaVida;
create table tb_categoria (
id bigint auto_increment,
ensino varchar (30)not null,
matricula varchar(20) not null,
ead boolean not null,
primary key (id)
);
insert into tb_categoria (ensino, matricula, ead) values ("Graduação", true, true);
insert into tb_categoria (ensino, matricula, ead) values ("Pós-Graduação", true, true);
insert into tb_categoria (ensino, matricula, ead) values ("Mestrado", true, true);
insert into tb_categoria (ensino, matricula, ead) values ("Doutorado", true, true);
insert into tb_categoria (ensino, matricula, ead) values ("Pós-Doutorado", true, true);

create table tb_curso(
id bigint auto_increment,
nome varchar (40) not null,
valor decimal (10,2) not null,
unidade varchar (20) not null,
duração int (10) not null,
turma bigint (4) not null,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_curso(nome,valor,unidade, duração, turma, categoria_id) values ("Turismo",500.00, "Higienópolis", 3, 20, 2);
insert into tb_curso(nome,valor,unidade, duração, turma, categoria_id) values ("Arquitetura e Urbanismo",500.00, "Paraíso", 4,10,2);
insert into tb_curso(nome,valor,unidade, duração, turma, categoria_id) values ("Letras",200.00, "Faria Lima", 4, 9, 2);
insert into tb_curso(nome,valor,unidade, duração, turma, categoria_id) values ("Enfermagem",750.00, "Mooca", 4,19, 3);
insert into tb_curso(nome,valor,unidade, duração, turma, categoria_id) values ("Administração",250.00, "Mogi das cruzes", 4,5,5);
insert into tb_curso(nome,valor,unidade, duração, turma, categoria_id) values ("Contabilidade",300.00, "Santa Cruz", 4,13,3);
insert into tb_curso(nome,valor,unidade, duração, turma, categoria_id) values ("Design",2000.00, "Vila Mariana", 4,2,4);

	select * from tb_curso;
    
    select * from tb_curso where valor >= 700.00;
	select * from tb_curso where nome like "%Ar%";
    select * from tb_curso where valor between 50.00 and 300.00;
    
    select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
    select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.ensino = "Pós-Graduação";
    
