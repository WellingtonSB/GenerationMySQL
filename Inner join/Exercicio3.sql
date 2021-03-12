create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
setor varchar(255) not null,
promocoes varchar(255) not null,
ativa boolean,
primary key(id)
);

insert into tb_categoria(setor,promocoes,ativa) values ("Cosmeticos","Quarta",true);
insert into tb_categoria(setor,promocoes,ativa) values ("Medicamentos","Quinta",true);
select * from tb_categoria;


create table tb_produto(
id bigint auto_increment,
nomeRemedio char(255) not null,
nomeReceita varchar(255) not null,
sintoma varchar(255) not null,
preco decimal(4,2),
app_id bigint,
primary key (id),
foreign key(app_id) references tb_categoria(id)
);

insert into tb_produto(nomeRemedio,nomeReceita,sintoma,preco,app_id) values("Dipirona","Sem receita","Dor de cabeça",2.90,1);
insert into tb_produto(nomeRemedio,nomeReceita,sintoma,preco,app_id) values("Rivotril","Tarja preta","Depressão",80.90,1);
insert into tb_produto(nomeRemedio,nomeReceita,sintoma,preco,app_id) values("Esmalte","Sem receita","Dor de barriga",20.90,2);
select * from tb_produto;

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60 ;
select * from tb_produto where nomeRemedio like "%E%";
select * from tb_produto where app_id in (2);

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.app_id;
select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.app_id
where setor like "%Medicamentos%";
