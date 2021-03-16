/*Crie um banco de dados para um serviço de uma loja de móveis e decoração, o nome do
banco deverá ter o seguinte: db_nome minha_casa_mais_bonita, onde o sistema trabalhará
com as informações dos produtos desta loja.*/

create database db_nome_casa_mais_bonita;

use db_nome_casa_mais_bonita;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta loja.*/

create table tb_usuario(
id bigint auto_increment,
nome_completo varchar(255) not null,
serasa boolean,
email varchar(255) not null,
endereco varchar(255) not null,
primary key(id)
);

/*Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço desta loja(não esqueça de criar
a foreign key de tb_categoria nesta tabela).*/

create table tb_categoria(
id bigint auto_increment,
cozinha varchar(255) not null,
jardim varchar(255) not null,
moveis varchar(255) not null,
iluminacao varchar(255) not null,
primary key(id)
);

/*Crie a tabela Usuario e utilize a habilidade de abstração e determine 5 atributos relevantes
dos tb_usuario para se trabalhar com o serviço desta loja.*/

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

/*Popule atabela Usuario com até 5 dados.*/

insert into tb_usuario (nome_completo,serasa,email,endereco) values ("Wellington Bezerra",true,"well2403@gmail.com","Av.Tiradentes,07"),
("Maria Joaquina", false,"marialidinha1@gmail.com","Av.Paulista,70"),("Joao Quintanda",true,"joaosinho24@gmail.com","Av.Ibirapuera,12");


/*Popule a tabela Categoria com até 5 dados.*/

insert into tb_categoria(cozinha,jardim,moveis,iluminacao) values ("PRATOS","CESTOS SEAGRASS","MESINHA","EXTERIOR"),("BANDEIJAS","CACHEPOTS","BANQUETAS","INTERIOR"),
("XICARAS","VASOS","PRATELEIRAS","ALTA ITENSIDADE"),("PORTA MANTIMENTOS","CESTOS","CABIDEIROS","BAIXA INTESIDADE");


/*Popule a tabela Produto com até 8 dados.*/

insert into tb_produto(nome,descricao,dimensoes,cor,quantidade,preco,produto_id) values 
("PRATO DECORATIVO","PRATO DECORATIVO FLEXINHAS FEITO EM CERÂMICA","Diâmetro: 15cm X Altura: 1,5cm","BRACO E PRETO",3,35.90,1),
("CACHEPOT FACE INCA","CHACHEPOR FACE INCA, FEITO EM CIMENTO","Diametro: 9,5cm X Altura: 9m","CINZA",2,29.90,2),
("MESA 4LEGS","A MESA 4LEGS É FEITA EM MADEIRA MACIÇA DE REFLORESTAMENTO","Altura:20cm X Comprimento:40cm X Largura:30cm","PRETA E MARROM",3,229.90,3),
("LUMINÁRIA MÃO  FRANCESA","COMPOSTA POR TRÊS HANGERS DE MADEIRA PINUS","Altura:30cm X Largura:20cm X Cabo:2m","PRETO E MARROM",2,129.9,4);



/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/

select*from tb_produto where preco>50.00;

/*Faça um select trazendo os Produtos com valor entre 3 e 60 reais.*/

select*from tb_produto WHERE preco > 03.00 and preco <60.00;

/*Faça um select utilizando LIKE buscando os Produtos com a letra B.*/

select*from tb_usuario where nome_completo like 'w%';

/*Faça um select utilizando LIKE buscando os Usuários com a letra C.*/

select*from tb_produto where nome like 'm%';

/*Faça um um select com Inner join entre tabela categoria e produto.*/

select*from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.produto_id;


/*Faça um select que retorne a média de preços dos produtos;*/

select avg (preco) from tb_produto;

/*Faça um select que retorne a soma de preços dos produtos;*/

select sum (preco) from tb_produto;

/*Faça um select que quantidade de produtos cadastrados na tabela*/

select count(id) from tb_produto;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).*/

select*from tb_produtoc where preco>=100.00;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).*/

select*from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.produto_id where cozinha like "%PRATOS%";

