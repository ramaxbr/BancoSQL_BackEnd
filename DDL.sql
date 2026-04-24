-- DATA DEFINITION LANGUAGE DDL
CREATE DATABASE SistemaEscolar;

USE sistemaescolar;

CREATE TABLE Instituicao (
    idInstituicao INT NOT NULL AUTO_INCREMENT,
    nomeInstituicao VARCHAR(50) NOT NULL,
    enderecoInstituicao VARCHAR(50) NOT NULL,
    telefoneInstituicao VARCHAR(11) NOT NULL,
    PRIMARY KEY (idInstituicao)
);

CREATE TABLE Alunos (
    idAluno INT NOT NULL AUTO_INCREMENT,
    nomeAluno VARCHAR(60) NOT NULL,
    matriculaAluno VARCHAR(15) NOT NULL,
    cursosAluno VARCHAR(100) NOT NULL,
    instituicaoID INT NOT NULL,
    PRIMARY KEY (idAluno),
    FOREIGN KEY (instituicaoID)
        REFERENCES instituicao (idInstituicao)
);



