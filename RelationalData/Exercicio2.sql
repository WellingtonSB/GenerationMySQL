create database db_Ecommerce;

use db_Ecommerce;

create table tb_Produtos(
id bigint(5) auto_increment,
nome varchar(255) not null,
marca varchar(255) not null,
tamanho int not null,
preco float not null,
ativo boolean,

primary key(id)
);

alter table tb_Produtos change tamanho tamanho varchar(2);
insert into tb_Produtos (nome,marca,tamanho,preco,ativo) values("Camisa","Lacoste","P",120,true);
insert into tb_Produtos (nome,marca,tamanho,preco,ativo) values("Camiseta","Tom","M",160,true);
insert into tb_Produtos (nome,marca,tamanho,preco,ativo) values("Calça","Hering","G",50,true);
insert into tb_Produtos (nome,marca,tamanho,preco,ativo) values("Camisa","Adidas","GG",600,false);
insert into tb_Produtos (nome,marca,tamanho,preco,ativo) values("Camiseta","Nike","XG",124,true);

SELECT * from tb_Produtos where preco > 500;
SELECT * from tb_Produtos where preco < 500;


select * from tb_Produtos;