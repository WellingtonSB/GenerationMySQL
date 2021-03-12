create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key(id)
);

insert tb_categoria (descricao,ativo) values ("HTML",true);
insert tb_categoria (descricao,ativo) values ("CSS",true);
insert tb_categoria (descricao,ativo) values ("JAVA",true);


create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(10,2),
vagas int,
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

insert tb_produto (nome,preco,vagas,categoria_id) values  ("Avançado",400.99,26,1);
insert tb_produto (nome,preco,vagas,categoria_id) values  ("INTERMEDIARIO",40.39,10,2);
insert tb_produto (nome,preco,vagas,categoria_id) values  ("BASICO",3.50,30,3);


select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60 ;
select * from tb_produto where nome like "%C%";
select * from tb_produto where categoria_id in (2);

select * from tb_categoria inner join tb_produto  on tb_categoria.id = tb_produto.categoria_id;
select * from tb_categoria inner join tb_produto  on tb_categoria.id = tb_produto.categoria_id
where descricao like "JAVA";