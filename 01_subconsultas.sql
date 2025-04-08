-- 01 -> Selecionar colaboradores que tenham salário acima da média da empresa

SELECT AVG(salario) AS media_salarial
FROM colaborador;

-- 9162
SELECT nome, sobrenome, salario
FROM colaborador
WHERE salario > 9162

-- 02 -> DEPARTAMENTOS que possuem colaboradores ganhando acima de 10.000

SELECT id_departamento
FROM colaborador
WHERE salario > 10000;

-- 222, 333, 444, 555, 666, 777

SELECT nome_departamento
FROM departamento
WHERE id_departamento IN (
    SELECT id_departamento
FROM colaborador
WHERE salario > 10000
)

-- 03 - nome dos colaboradores que receberam comissão maior que a média das comissoes

SELECT AVG(comissao) AS media_comissao
FROM comissao;

SELECT DISTINCT id_colaborador
FROM comissao 
WHERE comissao > 10.21

SELECT nome, sobrenome
FROM comissao
WHERE id_colaborador IN ()

SELECT nome, sobrenome
FROM colaborador
WHERE id_colaborador IN (
    SELECT DISTINCT id_colaborador
    FROM comissao
    WHERE comissao > (
        SELECT AVG(comissao) AS media_comissao
FROM comissao
    )
);

-- 04 - Colaboradores que trabalham no mesmo departamento do colaborador ANA SANTOS

