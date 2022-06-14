--PARA CRIAR UM BANCO DE DADOS:--

CREATE DATABASE db_escola;

--PARA SELECIONAR O BANCO DE DADOS:--

USE db_escola;

-- CRIANDO TABELA:--

CREATE TABLE tb_professor (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE tb_aluno (
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL,
    email VARCHAR(255) NOT NULL,
    matricula CHAR(20) NOT NULL
);

--MOSTRANDO TABELAS:--

SHOW TABLES;


--INSERIR DADOS NA TABELA;--

INSERT INTO tb_professor(nome, email, cpf)
VALUES (
    'Alessandro', 'ale@email.com', '12312312312'
);

INSERT INTO tb_professor(nome, email, cpf)
VALUES (
    'Bruno', 'bruno@email.com', '33311144411'
);

INSERT INTO tb_aluno(nome, email, cpf, matricula)
VALUES (
    'Bethânia', 'bethaniafreitas@yahoo.com.br', '33311122244','127456'
);

--PARA VER OS DADOS NA TABELA:--

SELECT * FROM tb_professor;
SELECT * FROM tb_aluno;

--PARA EXCLUIR TABELA--

DROP TABLE tb_professor;

--PARA DELETAR UM DADO DA TABELA--

DELETE FROM tb_professor WHERE id='2'; --NUMERO DO ID QUE QUER DELETAR



