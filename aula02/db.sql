-- listar os bancos de dados --
SHOW DATABASES;

-- criar um bando de dados --
CREATE DATABASE db_escola;

-- selecionar o banco de dados --
USE db_escola;

-- criar uma tabela --
CREATE TABLE tb_lab (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (30) NOT NULL, -- VARCHAR É O VARIAVEL, CHAR É O QUE NAO MUDA TIPO CEP, CPF, CNPJ, UF. QUE POSSUEM NUMEROS ESPECIFICOS --
    cor VARCHAR (20),
    capacidade INT
);

-- listar as tabelas -- 
SHOW TABLES;

-- detalhes da estrutura da tabela -- 
DESC tb_lab;

-- criar tabela --
CREATE TABLE IF NOT EXISTS tb_aluno (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone CHAR(11) NOT NULL,
    data_nascimento DATE NOT NULL

);

-- criar tabela professor id, nome, email, telefone, linkedin, novato --
CREATE TABLE IF NOT EXISTS tb_professor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    novato BOOLEAN DEFAULT 1,
    nome VARCHAR(80) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone CHAR(11) NOT NULL,
    linkedin VARCHAR(100)
    
);

-- excluir uma tabela --
DROP TABLE tb_nome;

-- alterar uma tabela -- 
ALTER TABLE tb_professor DROP COLUMN data_nascimento;
ALTER TABLE tb_professor ADD COLUMN formacao VARCHAR (20);

-- comandos para consumir os dados --

-- para inserir dados numa tabela -- 

INSERT INTO tb_lab (nome, cor, capacidade)
VALUES             ('Mark', 'Verde', '32');

INSERT INTO tb_lab (nome, cor, capacidade)
VALUES ('Larry', 'Azul', '32');

INSERT INTO tb_lab (nome, cor, capacidade)
VALUES ('Luisa', 'Rosa', '32');

INSERT INTO tb_lab (nome, cor, capacidade)
VALUES ('Beatriz', 'Roxo', '32');

INSERT INTO tb_lab (nome, cor, capacidade)
VALUES ('Isabel', 'Vermelho', '32');

INSERT INTO tb_lab (nome, cor, capacidade)
VALUES ('Paloma', 'Cinza', '32');

-- para inserir varios valores ao mesmo tempo --

INSERT INTO tb_aluno (nome, email, telefone, data_nascimento)
VALUES 
    ('Martha', 'marthasantos_br@yahoo.com.br', '85986608450', '1993-07-02'),
    ('Martha', 'marthasantos_br@yahoo.com.br', '85986608450', '1993-07-02'),
    ('Martha', 'marthasantos_br@yahoo.com.br', '85986608450', '1993-07-02'),
    ('Martha', 'marthasantos_br@yahoo.com.br', '85986608450', '1993-07-02'),
    ('Martha', 'marthasantos_br@yahoo.com.br', '85986608450', '1993-07-02');


-- para buscar "todos os dados de todos os labs" --

SELECT * FROM tb_lab;

-- para buscar "apenas alguns dados de todos os labs" --

SELECT nome, capacidade FROM tb_lab;

-- para buscar "todos os dados de labs especificos" --

SELECT * FROM tb_lab WHERE capacidade=20;

-- para buscar "todos os dados de labs especificos" --

SELECT nome FROM tb_lab WHERE capacidade=20;

SELECT nome FROM tb_aluno 
WHERE 
data_nascimento >= '2000-01-01'
AND data_nascimento <= '2002-12-31';

UPDATE tb_lab SET nome = 'Steve' WHERE id=2;

DELETE FROM tb_aluno WHERE id=3;


-- teste alunos -- 

INSERT INTO tb_aluno (nome, email, telefone, data_nascimento)
VALUES ('Martha', 'marthasantos_br@yahoo.com.br', '85986608450', '1993-07-02');

INSERT INTO tb_aluno (nome, email, telefone, data_nascimento)
VALUES ('Livia', 'liviasantos@gmail.com', '85986604578', '1996-07-01');

INSERT INTO tb_aluno (nome, email, telefone, data_nascimento)
VALUES ('Yasmim', 'yasmimsoares@gmail.com', '85987017127', '1993-08-28');

INSERT INTO tb_aluno (nome, email, telefone, data_nascimento)
VALUES ('Gabriela', 'gabieunwoo@gmail.com', '85988267129', '1993-11-16');


