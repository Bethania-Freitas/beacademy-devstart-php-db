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
    name VARCHAR(30) NOT NULL,
    description VARCHAR(100) NOT NULL,
    photo VARCHAR(500) NOT NULL,
    value FLOAT(5,2)NOT NULL,
    category_id INT(11) NOT NULL,
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


INSERT INTO tb_product (name, description, photo, value, category_id, quantity, created_at)
VALUES 
('Violão Yamaha C45', 'Violão Yamaha Acústico Natural Nylon C45', 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FI%2F51iitANvvWL._AC_SX425_.jpg&imgrefurl=https%3A%2F%2Fwww.amazon.com.br%2FViol%25C3%25A3o-Ac%25C3%25BAstico-Conthey-Queens-D137516%2Fdp%2FB081NZ1YYM&tbnid=GYF5dhzg7RWQAM&vet=12ahUKEwiIwcKMkrD4AhWNNrkGHXiQBP8QMygGegUIARClAg..i&docid=HODB7ONhHboi1M&w=404&h=994&q=viol%C3%A3o&ved=2ahUKEwiIwcKMkrD4AhWNNrkGHXiQBP8QMygGegUIARClAg', 199.89 , 1, 3, '2022-05-10 16:04:00'),
('Guitarra Tagima TG-530', 'Guitarra Tagima, serie Woodstock TG530 - Vermelha', 'https://madeinbrazil.fbitsstatic.net/img/p/guitarra-woodstock-series-tg-530-tagima-vermelho-vermelho-metalico-mr-69160/255643.jpg?w=800&h=800&v=no-change&qs=ignore', 149.99, 1, 4, '2022-05-10 16:04:00'),
('Cavaco Rozini Rc02acn', 'Cavaco Rozini Acústico Natural', 'https://x5music.vteximg.com.br/arquivos/ids/179932-1920-1920/CAVACO-ROZINI-RC02ACN-CLASSICO.jpg?v=636807602181200000', 710.99, 1, 2,'2022-05-10 16:04:00' ),
('Violão Giannini S-14', 'Violão Giannini acústco, serie Start, natural, Aço', 'https://static.mundomax.com.br/produtos/50574/550/1.webp', 430.99, 1, 6, '2022-05-10 16:04:00' ),
('Ukulele Kalani 21 SM', 'Ukulele Kalani Soprano, signature Nalu, acústico, com bag', 'https://x5music.vteximg.com.br/arquivos/ids/187748-1920-1920/UKULELE-KALANI-SOPRANO-21-SM-SIGNATURE-NALU-COM-BAG-7.jpg?v=637395829256100000', 62.99, 1, 1, '2022-05-10 16:04:00'),
('Teclado Casio CTK-3500', 'Teclado Musical Casio CTK-3500 61 teclas, 400 timbres e 48 notas de polifonia - Bivolt, Preto', 'https://m.media-amazon.com/images/I/81mr3PX6yLL._AC_SL1500_.jpg', 158.99, 2, 2, '2022-05-10 16:04:00'),
('Teclado Yamaha PSR E473', 'Teclado Profissional Yamaha com fonte, 61 teclas,', '', 400.99, 2, 1, '2022-05-10 16:04:00' ),
('Escaleta Dolphin', 'Escaleta Dolphin azul, 32 teclas, completa com case', 'https://madeinbrazil.fbitsstatic.net/img/p/escaleta-32-teclas-blue-dolphin-73807/260290.jpg?w=800&h=800&v=no-change&qs=ignore', 260.99, 2, 4, '2022-05-10 16:04:00'),
('Pandeiro Luen 10pol', 'Pandeiro Luen 10 polegadas, corpo ABS, pele Nylom, vermelho', 'https://madeinbrazil.fbitsstatic.net/img/p/pandeiro-10-abs-pele-leitosa-luen-vermelho-vm-127684/314169.jpg?w=800&h=800&v=no-change&qs=ignore', 99.99, 3, 7, '2022-05-10 16:04:00'),
('Pandeiro Luen 10pol', 'Pandeiro Luen 10 polegadas, corpo ABS, pele Nylom, preto', 'https://cf.shopee.com.br/file/acafe9197e8dc559f455eaa87605c8cc', 99.99, 3, 5, '2022-05-10 16:04:00' ),
('Pandeirola Preta', 'Pandeirola Meia Lua, preto, corpo abs, platinela inox, spring', 'https://http2.mlstatic.com/D_NQ_NP_729853-MLB28233509511_092018-O.jpg', 60.99, 3, 5, '2022-05-10 16:04:00' ),
('Surdo Conteporãnea light 169', 'Surdo Contemporãnea Light, 20x45 aluminio', 'https://cdn.awsli.com.br/600x450/149/149537/produto/17368859/5d4ec47a84.jpg', 639.99, 3, 1, '2022-05-10 16:04:00' ),
('Rebolo Contemporãnea 64C', 'Tambora Rebolo Contemporânea 12x45 Madeira Reto 64C', 'https://blog.mundomax.com.br/wp-content/uploads/2010/08/rebolo-instrumento-de-percuss%C3%A3o.jpg', 599.99, 3, 1, '2022-05-10 16:04:00'),
('Microfone Leson SM58', 'Microfone Leson Sm58 P4 Vocal Profissional + cabo P10', 'https://a-static.mlcdn.com.br/800x560/microfone-leson-sm58-p4-vocal-profissional-p10-le-son/kgmicomercial/844/54c9717a979f20d463eddb3bd50a74f4.jpg', 253.99, 4, 4,'2022-05-10 16:04:00' ),
('Microfone Shure SV-100', 'Microfone de Mão Multifuncional Com Fio SV100 Preto SHURE', 'https://static.mundomax.com.br/produtos/53238/550/1.webp', 459.99, 4, 3, '2022-05-10 16:04:00' ),
('Mesa de som  10 canais', 'Mesa de Som Behringer Xenyx1002fx Com 10 Canais', 'https://serenata.vteximg.com.br/arquivos/ids/318735-1000-1000/MESA-10C-BEHRINGER-XENYX1002FX_IMG2.jpg?v=637623159414230000', 939.99, 4, 2, '2022-05-10 16:04:00' ),
('Fone AKG K72', 'Fone de ouvido - AKG - K72', 'https://m.media-amazon.com/images/I/81M2-0JGRBL._AC_SY550_.jpg', 325.99, 4, 2, '2022-05-10 16:04:00'),
('Caixa de Som Turbox', 'Caixa de som Turbox - Leacs, ativa, 250w', 'https://x5music.vteximg.com.br/arquivos/ids/175677-1920-1920/tba-1200a_frente.jpg?v=636425485698730000', 249.99, 4, 2, '2022-05-10 16:04:00'),
('Caixa de som TB-100', 'Caixa de som Multiuso Tb-100 Leacs preta', 'https://a-static.mlcdn.com.br/800x560/caixa-de-som-multiuso-turbox-tb100-40w-bluetooth-usb-radio-fm-controle-remoto-preto-bivolt/multisomoficial/1148833-1148834/19039b3517f3b695383eb16a3042af07.jpg', 799.99, 4, 3, '2022-05-10 16:04:00' );




