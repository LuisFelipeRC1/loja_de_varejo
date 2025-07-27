USE loja_de_varejo;

DROP TABLE IF EXISTS vendas;
DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  cpf VARCHAR(50),
  cidade VARCHAR(50),
  idade INT
);

CREATE TABLE produtos (
  id_produto INT AUTO_INCREMENT PRIMARY KEY,
  nome_produto VARCHAR(100),
  categoria VARCHAR(50),
  preco DECIMAL(10,2)
);

CREATE TABLE vendas (
  id_venda INT AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT,
  id_produto INT,
  data_de_venda DATE,
  quantidade INT,
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
  FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

INSERT INTO clientes (nome, cpf, cidade, idade) VALUES
('Ana', '12345678900', 'São Paulo', 28),
('Bruno', '98765432100', 'Campinas', 34),
('Carlos', '45678912300', 'Recife', 41),
('Daniela', '65432198700', 'Curitiba', 25);

INSERT INTO produtos (nome_produto, categoria, preco) VALUES
('Notebook Dell', 'Informática', 3500.00),
('Smartphone Samsung', 'Telefonia', 2200.00),
('Cadeira Gamer', 'Móveis', 900.00),
('Teclado Mecânico', 'Acessórios', 300.00);

INSERT INTO vendas (id_cliente, id_produto, data_de_venda, quantidade) VALUES
(1, 1, '2024-06-01', 1),
(2, 2, '2024-06-03', 2),
(3, 3, '2024-06-05', 1),
(4, 4, '2024-06-10', 3),
(1, 2, '2024-07-01', 1),
(2, 3, '2024-07-03', 1),
(3, 1, '2024-07-05', 1),
(4, 1, '2024-07-10', 2);

SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM vendas;