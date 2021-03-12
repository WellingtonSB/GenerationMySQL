create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
arma varchar(255) not null,
pontosVida int not null,
classePersonagem varchar(255) not null,
primary key(id)
);

insert into tb_classe(classePersonagem,pontosVida,arma) values ("Druida",1000,"Tacape");
insert into tb_classe(classePersonagem,pontosVida,arma) values ("Mago",990,"Void");
insert into tb_classe(classePersonagem,pontosVida,arma) values ("Arqueiro",800,"Arco");
insert into tb_classe(classePersonagem,pontosVida,arma) values ("Necromancer",1400,"Foice");
insert into tb_classe(classePersonagem,pontosVida,arma) values ("Barbaro",2000,"Machado");


select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
forca int(2) not null,
habilidade int(2) not null,
poderAtaque int(2) not null,
poderDefesa int(2) not null,
classe_id bigint,
primary key (id),
foreign key(classe_id) references tb_classe(id)
);

-- [2] Druida | [1] Mago | [3] Arqueiro | [5] Necromancer | [4] Bárbaro

insert into tb_personagem(nome,forca,habilidade,poderAtaque,poderDefesa,classe_id) values ("Ozob",1500,200,1100,1100,2);
insert into tb_personagem(nome,forca,habilidade,poderAtaque,poderDefesa,classe_id) values ("Oleg",900,1600,2150,800,1);
insert into tb_personagem(nome,forca,habilidade,poderAtaque,poderDefesa,classe_id) values ("Orab",1400,1000,1500,900,3);
insert into tb_personagem(nome,forca,habilidade,poderAtaque,poderDefesa,classe_id) values ("Cegnar",900,2100,1400,1950,5);
insert into tb_personagem(nome,forca,habilidade,poderAtaque,poderDefesa,classe_id) values ("Noar",2100,300,1200,2000,4);
select * from tb_personagem;


select * from tb_personagem where poderAtaque > 2000;
select * from tb_personagem where poderDefesa between 1000 and 2000 ;
select * from tb_personagem where nome like "%C%";
select * from tb_classe inner join tb_personagem on tb_classe.id = tb_personagem.classe_id;
select * from tb_classe inner join tb_personagem on tb_classe.id = tb_personagem.classe_id
where classePersonagem like "%Barbaro%";