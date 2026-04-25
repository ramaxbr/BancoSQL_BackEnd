-- DATA MODULAR LANGUAGE DML
INSERT INTO instituicao (nomeInstituicao, enderecoInstituicao, telefoneInstituicao)
values
('Senai - Cyber e IA', 'Rua niterói, 189 - São Caetano do Sul', '2022-2554'),
('Etec Jorge Street', 'Rua do paralelo, 898 - São Caetano do Sul', '5698-7845');


INSERT INTO alunos (nomeAluno, matriculaAluno, cursosAluno, instituicaoid)
VALUES
('Carlos', '11987654321', 'Programação Back-End', 1),
('Fernanda', '11976543210', 'Programação Front-End', 2),
('Juliana', '11965432109', 'Banco de Dados', 1),
('Paulo', '11954321098', 'Programação Back-End', 2),
('Aline', '11943210987', 'Programação Front-End', 1),
('Ricardo', '11932109876', 'Banco de Dados', 2),
('Patricia', '11921098765', 'Programação Back-End', 1),
('Lucas', '11910987654', 'Programação Front-End', 2),
('Camila', '11999887766', 'Banco de Dados', 1),
('Bruno', '11988776655', 'Programação Back-End', 2);


DELETE FROM INSTITUICAO 
WHERE
    idInstituicao = 1

UPDATE INSTITUICAO
SET idInstituicao = 1
WHERE idInstituicao = 2

ALTER TABLE tabela_2
add tempoDeUsoTabela2 double;

-- Desativando o sql update safe mode:

set sql_safe_updates = 0;
