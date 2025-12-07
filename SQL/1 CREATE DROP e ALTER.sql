/* 
    SQL Script para criar, alterar e excluir tabelas 


 Listar todas as tabelas no banco de dados atual:
 Deve-se ter instalado a extensão SQLite para usar o comando abaixo
*/
.tables

/* 
    Criando tabelas 
*/

CREATE TABLE pessoas (
    -- Definindo colunas da tabela:
    nome VARCHAR, -- Tipo de dado texto
    idade INTEGER, -- Tipo de dado inteiro
    email VARCHAR,
    cpf VARCHAR(14) -- Tipo de dado texto com tamanho máximo de 14 caracteres
);

CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- Chave primária com auto incremento
    -- Chave primária: valor único que identifica cada registro na tabela
    -- AUTOINCREMENT: incrementa automaticamente o valor da chave primária a cada novo registro

    nome VARCHAR(100) NOT NULL, -- Coluna obrigatória
    -- NOT NULL: impede valores nulos nessa coluna

    preco DECIMAL(10, 2) CHECK (preco >= 0), -- Preço deve ser maior ou igual a zero
    -- CHECK: adiciona uma restrição para validar os dados inseridos

    estoque INTEGER DEFAULT 0 -- Valor padrão é 0
    -- DEFAULT: define um valor padrão para a coluna
);

/*
    Editando tabelas
*/

-- Excluindo a coluna 'email'
ALTER TABLE pessoas
DROP email;

-- Adicionando a coluna 'endereco'
ALTER TABLE pessoas
ADD endereco VARCHAR;

-- Alterando o título da coluna 'nome'
ALTER TABLE pessoas
RENAME COLUMN nome TO nome_completo;

/* 
    Excluindo tabelas
*/

DROP TABLE pessoas; -- Exclui a tabela 'pessoas'
DROP TABLE *; -- Exclui todas as tabelas do banco de dados atual