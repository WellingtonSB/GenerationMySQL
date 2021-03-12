create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_pizza(
id bigint auto_increment,
categoria varchar(255) not null,
promocao varchar(255) not null,
ativa boolean,
primary key(id)
);

insert into tb_pizza(categoria,promocao,ativa) values ("Doce","Quarta-Quinta",true);
insert into tb_pizza(categoria,promocao,ativa) values ("Salgada","Sabado-Segunda",true);
insert into tb_pizza(categoria,promocao,ativa) values ("Especial ","Terça-Sexta",false);
select * from tb_pizza;


create table tb_produto(
id bigint auto_increment,
nomePizza varchar(255) not null,
iten1 varchar(255) not null,
iten2 varchar(255) not null,
iten3 varchar(255) not null,
preco int,
categoria_id bigint,
primary key (id),
foreign key(categoria_id) references tb_pizza(id)
);

insert into tb_produto(nomePizza,iten1,iten2,iten3,preco,categoria_id) values ("MUSSARELA","Mussarela","Tomate","Azeitona",29,2);
insert into tb_produto(nomePizza,iten1,iten2,iten3,preco,categoria_id) values ("Banana c/chocolate","Banana","Canela","C/",59,1);
insert into tb_produto(nomePizza,iten1,iten2,iten3,preco,categoria_id) values ("TOSCANA","Mussarela","Calabresa moída","Cebola",39,2);
insert into tb_produto(nomePizza,iten1,iten2,iten3,preco,categoria_id) values ("ECLIPSE","Chocolate branco","Cream cheese","Negresco",69,1);
insert into tb_produto(nomePizza,iten1,iten2,iten3,preco,categoria_id) values ("BAIÃO","Mussarela","Carne seca","Cebola",89,2);
select * from tb_produto;

select * from tb_produto where preco > 45;
select * from tb_produto where preco between 29 and 60 ;
select * from tb_produto where nomePizza like "%C%";
select * from tb_produto where categoria_id in (2);

select * from tb_pizza inner join  tb_produto on categoria_id = tb_produto.categoria_id;
select * from tb_pizza inner join  tb_produto on categoria_id = tb_produto.categoria_id
where categoria like "%Doce%";