/*
    O comando SELECT pesquisa e retorna um conjunto de linhas em uma ou mais tabelas que 
    atenda a uma determinada condição definida pelo comando. 
    
    O resultado também pode ser usado para criar outra tabela
*/
.tables

-- Pesquisa todos dados da tabela pessoas
SELECT * 
FROM pessoas;
-- FROM: especifica a tabela de onde os dados serão recuperados

-- Pesquisa apenas nome e e-mail das pessoas
SELECT nome_completo, email
FROM pessoas;

-- Pesquisa nome e e-mail das pessoas com idade igual a 11
SELECT nome_completo, email 
FROM pessoas
WHERE idade = 11;  -- Aplicando um filtro
-- WHERE: condição para filtrar os dados retornados

-- Pesquisa todos as Pessoas com idade maior que 10 e CPF específico
SELECT * 
FROM pessoas
WHERE idade > 10
AND cpf = '123.456.789-00';
-- Utilizando operadores lógicos (AND, OR, NOT) para combinar condições

-- Pesquisa todas 
SELECT nome_completo AS nome, idade -- Renomeando colunas no resultado
-- AS: usado para renomear colunas ou tabelas no resultado
FROM pessoas;

-- Pesquisa todos os pessoas que realizaram pedidos
SELECT * 
FROM pessoas
ORDER BY idade DESC; -- Ordenando o resultado pela coluna idade em ordem decrescente
-- ORDER BY: ordena o resultado com base em uma ou mais colunas
-- DESC: ordem decrescente
-- ASC: ordem crescente (padrão)

/*
    O comando UPDATE modifica os valores existentes nas colunas de uma tabela ou visão.
*/

-- Alterar nome e e-mail de um pessoas específico:
UPDATE pessoas
SET email = 'bob.esponja@fundomar.com'
WHERE nome_completo = 'Bob Esponja';
-- UPDATE: especifica a tabela a ser atualizada
-- SET: define as colunas e seus novos valores
-- WHERE: condição para identificar quais linhas serão atualizadas