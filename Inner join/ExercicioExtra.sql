create database db_nome_casa_mais_bonita;

use db_nome_casa_mais_bonita;

create table tb_usuario(
id bigint auto_increment,
nome_completo varchar(255) not null,
serasa boolean,
email varchar(255) not null,
endereco varchar(255) not null,
primary key(id)
);


create table tb_categoria(
id bigint auto_increment,
cozinha varchar(255) not null,
jardim varchar(255) not null,
moveis varchar(255) not null,
iluminacao varchar(255) not null,
primary key(id)
);





create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
dimensoes varchar(255) not null,
quantidade int not null,
cor varchar(255) not null,
preco decimal (6,2) not null,
produto_id bigint,
primary key(id),
foreign key(produto_id) references tb_categoria(id)
);


insert into tb_usuario (nome_completo,serasa,email,endereco) values ("Wellington Bezerra",true,"well2403@gmail.com","Av.Tiradentes,07"),
("Maria Joaquina", false,"marialidinha1@gmail.com","Av.Paulista,70"),("Joao Quintanda",true,"joaosinho24@gmail.com","Av.Ibirapuera,12");

insert into tb_categoria(cozinha,jardim,moveis,iluminacao) values ("PRATOS","CESTOS SEAGRASS","MESINHA","EXTERIOR"),("BANDEIJAS","CACHEPOTS","BANQUETAS","INTERIOR"),
("XICARAS","VASOS","PRATELEIRAS","ALTA ITENSIDADE"),("PORTA MANTIMENTOS","CESTOS","CABIDEIROS","BAIXA INTESIDADE");

insert into tb_produto(nome,descricao,dimensoes,cor,quantidade,preco,produto_id) values 
("PRATO DECORATIVO","PRATO DECORATIVO FLEXINHAS FEITO EM CERÂMICA","Diâmetro: 15cm X Altura: 1,5cm","BRACO E PRETO",3,35.90,1),
("CACHEPOT FACE INCA","CHACHEPOR FACE INCA, FEITO EM CIMENTO","Diametro: 9,5cm X Altura: 9m","CINZA",2,29.90,2),
("MESA 4LEGS","A MESA 4LEGS É FEITA EM MADEIRA MACIÇA DE REFLORESTAMENTO","Altura:20cm X Comprimento:40cm X Largura:30cm","PRETA E MARROM",3,229.90,3),
("LUMINÁRIA MÃO  FRANCESA","COMPOSTA POR TRÊS HANGERS DE MADEIRA PINUS","Altura:30cm X Largura:20cm X Cabo:2m","PRETO E MARROM",2,129.9,4);


select*from tb_produto where preco>50.00;
select*from tb_produto WHERE preco > 03.00 and preco <60.00;
select*from tb_usuario where nome_completo like 'w%';
select*from tb_produto where nome like 'm%';
select*from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.produto_id;
select*from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.produto_id 
where cozinha like "%PRATOS%";

select avg (preco) from tb_produto;
select sum (preco) from tb_produto;

select count(id) from tb_produto;
select*from tb_produtoc where preco>=100.00;
