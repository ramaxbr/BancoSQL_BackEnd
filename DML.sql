-- DATA MODULAR LANGUAGE DML
INSERT INTO instituicao (nomeInstituicao, enderecoInstituicao, telefoneInstituicao)
values(
'Clarice de Magalhaes de Castro',
'Giovanni Breda',
'1140028922'
);

INSERT INTO tabela_2(nomeTabela2, descTabela2, ativarTabela2)
VALUES(
'teste2',
'descrição teste2',
true);

DELETE FROM INSTITUICAO 
WHERE
    idInstituicao = 1

UPDATE INSTITUICAO
SET idInstituicao = 1
WHERE idInstituicao = 2

ALTER TABLE tabela_2
add tempoDeUsoTabela2 double;
