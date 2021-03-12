-- criar um banco de dados para escola
create database db_Escola;

use db_Escola;

create table tb_dados(
matricula bigint(5) auto_increment,
nome varchar(255) not null,
idade int not null,
serie varchar(255) not null,
nota float(2) not null,
aprovado boolean,

primary key(matricula)
);


insert into tb_dados(nome,idade,serie,nota,aprovado) values("João",4,"7°ano",7,true);
insert into tb_dados (nome,idade,serie,nota,aprovado) values("Maria",4,"7°ano",8,true);
insert into tb_dados (nome,idade,serie,nota,aprovado) values("Pedro",4,"7°ano",10,true);
insert into tb_dados (nome,idade,serie,nota,aprovado) values("Isabela",4,"7°ano",3,false);
insert into tb_dados (nome,idade,serie,nota,aprovado) values("Jaqueline",4,"7°ano",5,false);


SELECT * from tb_dados where nota > 7;
SELECT * from tb_dados where nota < 7;


select * from tb_dados;