create database db_ecommerce;
use db_ecommerce;
create table tb_produtos (
id bigint (10) auto_increment,
nome varchar (30) not null,
preco decimal (10,2) not null,
marca varchar (30)not null,
qtdeUnidade bigint (10)not null,
categoria varchar (30)not null,
	primary key (id)
);

insert into tb_produtos (nome, preco, marca, qtdeUnidade, categoria) values ("Celular", 2500.00,"Apple", 10, "Eletrônicos");
insert into tb_produtos (nome, preco, marca, qtdeUnidade, categoria) values ("Notebook", 4500.00,"Dell", 15, "Eletrônicos");
insert into tb_produtos (nome, preco, marca, qtdeUnidade, categoria) values ("Televisão", 2800.00,"LG", 10, "Eletrônicos"); 
insert into tb_produtos (nome, preco, marca, qtdeUnidade, categoria) values ("Camiseta", 180.00,"Adidas", 20, "Moda Esportiva");
insert into tb_produtos (nome, preco, marca, qtdeUnidade, categoria) values ("Boné", 150.00,"Nike", 8, "Acessórios");

select * from tb_produtos;
select * from tb_produtos where preco > 2000.00;
select * from tb_produtos where preco < 2000.00;

update tb_produtos set preco = 250.00 where id=4;
