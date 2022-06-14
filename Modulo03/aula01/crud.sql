USE db_escola;


--inserir um resgistro--
INSERT INTO tb_professor(nome, email, cpf)
VALUES ( 'Chiquim das Tapiocas', 'chiquim@email.com', '12312341234')


--INSERIR MAIS DE UM REGISTRO AO MESMO TEMPO--
INSERT INTO tb_professor(nome, email, cpf)
VALUES 
( 'Zezim das Rapaduras', 'zezim@email.com', '12312341243'),
( 'Maria das Tapiocas', 'maria@email.com', '12312341245'),
( 'Luiza das Tapiocas', 'luiza@email.com', '12312341256');

--EXCLUIR UM REGISTRO--
DELETE FROM tb_professor WHERE id='1'; --PELO ID
DELETE FROM tb_professor WHERE id>'5'; --PELO ID TODOS MAIORES QUE 5
DELETE FROM tb_professor WHERE email='luiza@email.com'; --PELO EMAIL.. ETC


--EXCLUIR TODOS OS REGISTROS--
DELETE FROM tb_professor;


--EDITAR DADOS DE UM REGISTRO--
UPDATE tb_professor SET nome='Luiza da Caucaia' WHERE cpf='12312341256';

--EDITAR DADOS DE TODOS OS REGISTROS--
UPDATE tb_professor SET nome='Francisco';

-- SELECIONAR TODOS OS DADOS DE TODOS OS PROFESSORES --
SELECT * FROM tb_professor WHERE id='5';


--SELECIONAR ALGUNS DADOS DE TODOS OS PROFESSORES--
SELECT nome, cpf FROM tb_professor;