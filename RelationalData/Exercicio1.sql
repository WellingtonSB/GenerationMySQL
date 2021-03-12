-- Crie um banco de dados para um serviço de RH de uma empresa
create database db_funcionarios;
use db_funcionarios;

create table tb_dados(
id bigint(5) auto_increment,
nome varchar(255) not null,
cpf varcharacter(11),
salario float not null,
ativo boolean,
primary key (id)
);

insert into tb_dados (nome,cpf,salario,ativo) values("Wellington",12345678910,12000,true);
insert into tb_dados (nome,cpf,salario,ativo) values("Maria",12345678911,12200,true);
insert into tb_dados (nome,cpf,salario,ativo) values("Rafael",12345678912,1199,true);
insert into tb_dados (nome,cpf,salario,ativo) values("Joana",12345678913,1198,true);
insert into tb_dados (nome,cpf,salario,ativo) values("Azevedo",12345678914,1197,true);
insert into tb_dados (nome,cpf,salario,ativo) values("Marcos",12345678915,1196,false);
insert into tb_dados (nome,cpf,salario,ativo) values("Eliza",12345678916,1195,false);
insert into tb_dados (nome,cpf,salario,ativo) values("Daniel",12345678917,1194,false);
insert into tb_dados (nome,cpf,salario,ativo) values("Lucas",12345678918,1193,false);

select * from tb_dados;

SELECT * from tb_dados where salario > 2000;
SELECT * from tb_dados where salario < 2000;