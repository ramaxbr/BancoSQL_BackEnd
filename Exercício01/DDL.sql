-- DDL DATA DEFINITION LANGUAGE

CREATE DATABASE loja;

USE loja;

CREATE TABLE Cliente(
idCliente int auto_increment NOT NULL,
nomeCliente VARCHAR(100) NOT NULL,
telefone VARCHAR(11) NOT NULL UNIQUE,
email VARCHAR(100) NOT NULL UNIQUE,
endereco VARCHAR(255) NOT NULL,
data_cadastro DATE NOT NULL,
PRIMARY KEY (idCliente)
);

CREATE TABLE Funcionario(
idFuncionario int auto_increment NOT NULL,
nomeFuncionario VARCHAR(100) NOT NULL,
cargoFuncionario VARCHAR(50) NOT NULL,
salarioFuncionario DECIMAL (10,2) NOT NULL,
data_admissao DATE NOT NULL,
PRIMARY KEY (idFuncionario)
);

CREATE TABLE Produto(
idProduto int auto_increment NOT NULL,
nomeProduto VARCHAR(100) NOT NULL,
categoriaProduto VARCHAR(100) NOT NULL,
precoProduto DECIMAL (10,2) NOT NULL,
produtoAtivo BOOLEAN DEFAULT TRUE,
PRIMARY KEY (idProduto)
);

CREATE TABLE Pedido(
idPedido INT AUTO_INCREMENT NOT NULL UNIQUE,
dataPedido DATE NOT NULL,
statusPedido BIT NOT NULL,
clienteid INT NOT NULL,
FOREIGN KEY (clienteid) REFERENCES Cliente(idCliente),
CPFCliente VARCHAR(20) NOT NULL,
PRIMARY KEY(idPedido)
);

CREATE TABLE Produto(
produtoid INT AUTO_INCREMENT NOT NULL UNIQUE,
precoProduto DECIMAL(10,2) NOT NULL,
estoque INT NOT NULL,
PRIMARY KEY(produtoid)
);

CREATE TABLE Item_Pedido(
item_pedidoid INT AUTO_INCREMENT NOT NULL unique,
pedidoid INT NOT NULL,
produtoid INT NOT NULL,
quantidade INT NOT NULL,
FOREIGN KEY (pedidoid) REFERENCES Pedido(idPedido),
FOREIGN KEY (produtoid) REFERENCES Produto(produtoid),
PRIMARY KEY (item_pedidoid)
);

