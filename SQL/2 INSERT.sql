/*
    Inserindo dados nas tabelas utilizando dois formatos diferentes de INSERT
*/
.tables

-- Formato 1: Especificando colunas
INSERT INTO pessoas (nome_completo, email, idade, cpf) 
VALUES ('Bob Esponja', 'bob.esponja@fundo.com', 11, '123.456.789-00');

-- Formato 2: Sem especificar colunas (ordem de cada coluna deve ser seguida)
INSERT INTO pessoas
VALUES ('Patrick Estrela', 12, 'patrick.estrela@fundo.com', '987.654.321-00'),
       ('Lula Molusco', 40, 'lula.molusco@fundo.com', '456.789.123-00');