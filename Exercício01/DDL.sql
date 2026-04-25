-- DDL DATA DEFINITION LANGUAGE

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
nomeProduto VARCHAR(100),
categoriaProduto VARCHAR(100),
precoProduto DECIMAL (10,2),
produtoAtivo BOOLEAN DEFAULT TRUE
);

CREATE TABLE Pedido(
idPedido



