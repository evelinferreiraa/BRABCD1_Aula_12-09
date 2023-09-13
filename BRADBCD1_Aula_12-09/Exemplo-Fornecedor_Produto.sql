/* 12/09/2023 - Criar banco de dados - Exemplo Fornecedor_Produto */
create database if not exists exemplo;

# colocar o BD em uso
use exemplo;

# mostar os BD na máquina
show databases;

# apagar BD
drop database exemplo;

# criar uma tabela
create table if not exists fornecedor(
idFornecedor int not null, # not null -> exige obrigtoriamente uma entrada 
nome varchar(45) not null unique, # unique -> permite uma ÚNICA entrada do dado
endereco varchar(45),
telefone int ,
cidade varchar(20), 
email varchar(25) default "Bragança", # default -> preenche automaticamente com um texto ("Bragança") quando o usuário não entrar em nenhum dado
primary key (idFornecedor)
)engine InnoDB; # engine -> serve para melhorar a performance da transação

# mostrar tabelas
show tables;

# exibir a desccrição da tabela
desc fornecedor;

# apagar uma tabela
drop table fornecedor;

# criar a tabela produto
create table if not exists produto(
idProduto int not null,
descricao varchar(45),
preco decimal(7,2), # 7 -> total de casas; 2 -> total de casas decimais. 
unidade varchar(10),
idFornecedor int not null,
primary key (idProduto),
foreign key (idFornecedor) references fornecedor (idFornecedor)
);
desc produto;
desc fornecedor;

# adicionar coluna na tabela
alter table fornecedor add column ramoAtu varchar(30);

# remover coluna
alter table fornecedor drop column ramoAtu;

# modificar coluna
alter table fornecedor modify column cidade varchar(40);

