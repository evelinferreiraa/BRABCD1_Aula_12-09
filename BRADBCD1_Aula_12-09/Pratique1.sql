# Pratique
create database if not exists EMPRESA_XPTO; # 1
use EMPRESA_XPTO; # 2
show databases; # 3
drop database EMPRESA_XPTO; # 4

create database if not exists EMPRESA; # 5
use EMPRESA;
show databases;

create table if not exists DEPARTAMENTO(
codDepartamento int not null,
descricao varchar(45),
primary key (codDepartamento)
)engine InnoDB;

desc DEPARTAMENTO;

create table if not exists FUNCIONARIO(
codFuncionario int not null,
nome varchar(45) not null unique,
datanasc date,
sexo varchar(15),
endereco varchar(100),
codDepartamento int not null,
primary key (codFuncionario),
foreign key (codDepartamento) references DEPARTAMENTO (codDepartamento)
);

desc FUNCIONARIO;

alter table DEPARTAMENTO add column local varchar(45);