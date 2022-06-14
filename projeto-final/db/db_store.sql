--CRIAR BANCO DE DADOS--
CREATE DATABASE db_store;


--SELECIONAR O BANCO--
USE db_store;

--CRIAR CATEGORIA--
CREATE TABLE tb_category(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(100) NOT NULL
);

CREATE TABLE tb_product(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    description VARCHAR(100) NOT NULL,
    photo VARCHAR(255) NOT NULL,
    valor FLOAT(5,2)NOT NULL,
    categoria_id INT(11) NOT NULL,
    quantity INT(5) NOT NULL,
    created_at  DATETIME NOT NULL
);

INSERT INTO tb_category ( name, description)
VALUES
('Informática', 'Produtos de informática e acessórios de computador'),
('Escritório', 'Canetas, Cadernos, Folhas, etc'),
('Eletrônicos', 'Tvs, Caixas de Som, Som portátil, etc');


--PARA VERIFICAR AS COLUNAS DOS PRODUTOS CADASTRADAS--
DESC tb_product; 


INSERT INTO tb_product (nome, description, photo, valor, categoria_id, quantity, created_at)
VALUES 
('NOTEBOOK ACER ASPIRE V3-571-6654 C/ INTEL CORE I5 - 8GB 120GB SSD LED 15,6 WINDOWS 10 TRIAL HDMI', 'NOTEBOOK ACER ASPIRE V3-571-6654 C/ INTEL CORE I5 - 8GB 120GB SSD LED 15,6 WINDOWS 10 TRIAL HDMI', 'https://www.balaodainformatica.com.br/media/catalog/product/cache/1/image/365x365/9df78eab33525d08d6e5fb8d27136e95/2/_/2_81.jpg','2800,00', '1', '5', '14/06/2022')