/*beware that you first have to create a database to be able to create tables, and remember that you have to use Mariadb related syntax */
create table alunos(
nome varchar(25) not null,
idade int(2) not null,
cursando varchar(30) not null,
id  int primary key auto_increment
);
create table instrutores(
nome varchar(25) not null,
idade int(2) not null,
especialidade varchar(30) not null,
id  int primary key auto_increment
);
create table cursos(
nome varchar(25) not null,
QuantAlunos int(3) not null,
id  int primary key auto_increment
);
insert into alunos(nome, idade, cursando) values ('João Vitor',17,'Robótica óptica'); /*id=3*/
select * from alunos;
update alunos set nome='jOHN' where id=3;
alter table alunos add column teste varchar(23);/* works just fine*/
alter table alunos drop column teste;/* also works just fine. Keep in mind you are using mariaDB*/
alter table cursos change column QuantAlunos Qalunos int(2);/* only works in mariadb, if you want */
