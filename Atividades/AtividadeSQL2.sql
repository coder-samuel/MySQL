create database db_funcionaries;
use db_funcionaries;
create table tb_funcionaries(
id bigint (9) auto_increment,
nome varchar (30) not null,
codigo bigint (9) not null,
salario decimal (8,2) not null,
idade bigint (3) not null,
periodo varchar (10) not null,
primary key (id)
);
insert into tb_funcionaries (nome, codigo, salario, idade, periodo) values ("Glauber Gonçalves", 5243, 6900.00, 36, "Noturno");
insert into tb_funcionaries (nome, codigo, salario, idade, periodo) values ("Amélia Fonseca", 7463, 3600.00, 24, "Integral");
insert into tb_funcionaries (nome, codigo, salario, idade, periodo) values ("Kuane Pedrosa", 9183, 3600.00, 23, "Integral");
insert into tb_funcionaries (nome, codigo, salario, idade, periodo) values ("Agnes Florença", 3142, 6900.00, 28, "Noturno");
insert into tb_funcionaries (nome, codigo, salario, idade, periodo) values ("Maria dos Santos", 5463, 1700.00, 21, "Matutino");
insert into tb_funcionaries (nome, codigo, salario, idade, periodo) values ("Eleonora Vieira", 7908, 1700.00, 37, "Matutino");
insert into tb_funcionaries (nome, codigo, salario, idade, periodo) values ("Aléssio Silva", 7468, 1700.00, 29, "Matutino");
insert into tb_funcionaries (nome, codigo, salario, idade, periodo) values ("Marcel Araújo", 8473, 6900.00, 33, "Noturno");

select * from tb_funcionaries;
select * from tb_funcionaries where salario > 2000.00;
select * from tb_funcionaries where salario < 2000.00;

update tb_funcionaries set nome = "Eleonora Veiga" where id = 6;