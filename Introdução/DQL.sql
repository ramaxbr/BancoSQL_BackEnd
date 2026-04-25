-- DATA QUERY LANGUAGE DQL

DESCRIBE instituicao;-- Retorna os tipos da tabela.
USE sistemaescolar
SELECT 
    *
FROM
    instituicao;

SELECT 
    *
FROM
    alunos;


-- Realizando a contagem de alunos em cada curso.
SELECT 
    cursosAluno, COUNT(*) AS total
FROM
    alunos
GROUP BY cursosAluno;

-- Os alunos e sua instituicao

SELECT nomeAluno, matriculaAluno, cursosAluno, nomeInstituicao INSTITUICAO FROM alunos
JOIN instituicao ON instituicaoid = idinstituicao


-- Quantos alunos existem em cada instituicao

SELECT nomeinstituicao, count(*) AS TOTAL FROM Alunos JOIN instituicao ON Alunos.instituicaoiD = instituicao.idInstituicao GROUP BY nomeinstituicao ORDER BY nomeinstituicao ASC

-- exiba quantos alunos existem em um curso X da instuicao Y

SELECT * FROM INSTITUICAO

SELECT nomeinstituicao, cursosaluno, count(*) as total_alunos FROM alunos a 
JOIN Instituicao i 
	ON a.instituicaoID = i.idinstituicao
WHERE 1=1
AND a.cursosAluno = 'Programação Back-End'
AND i.nomeInstituicao = 'Etec Jorge Street'
GROUP BY i.nomeInstituicao, a.cursosAluno
