INSERT INTO Fornecedores (codigo, nome, endereco, pais, pessoa_contato, telefone) 
VALUES (1, 'TechSupply Co.', 'Rua da Inovação, 123', 'Brasil', 'João Silva', '+55 11 1234-5678');
INSERT INTO Fornecedores (codigo, nome, endereco, pais, pessoa_contato, telefone) 
VALUES (2, 'Global Parts Inc.', '789 Innovation Ave', 'EUA', 'John Doe', '+1 555-123-4567');
INSERT INTO Fornecedores (codigo, nome, endereco, pais, pessoa_contato, telefone) 
VALUES (3, 'Eletrônicos Ltda', 'Avenida dos Componentes, 456', 'Brasil', 'Maria Santos', '+55 21 9876-5432');
INSERT INTO Fornecedores (codigo, nome, endereco, pais, pessoa_contato, telefone) 
VALUES (4, 'Asian Tech Supplies', '123 Tech Street', 'China', 'Li Wei', '+86 10 8765 4321');
INSERT INTO Fornecedores (codigo, nome, endereco, pais, pessoa_contato, telefone) 
VALUES (5, 'European Electronics GmbH', 'Technologiestraße 78', 'Alemanha', 'Hans Mueller', '+49 30 1234567');

UPDATE Fornecedores SET telefone = '+55 11 98765-4321' WHERE codigo = 1;
UPDATE Fornecedores SET pessoa_contato = 'Jane Smith', telefone = '+1 555-987-6543' WHERE codigo = 2;

DELETE FROM Fornecedores WHERE codigo = 5;

INSERT INTO Produtos (codigo, nome, descricao, unidade_medida, preco_unitario, quantidade_estoque, localizacao_armazem, ponto_ressuprimento)
VALUES (101, 'Processador X1', 'Processador de alta performance', 'unidade', 299.99, 100, 'A1', 20);
INSERT INTO Produtos (codigo, nome, descricao, unidade_medida, preco_unitario, quantidade_estoque, localizacao_armazem, ponto_ressuprimento)
VALUES (102, 'Memória RAM 8GB', 'Memória RAM DDR4', 'unidade', 49.99, 200, 'B2', 50);
INSERT INTO Produtos (codigo, nome, descricao, unidade_medida, preco_unitario, quantidade_estoque, localizacao_armazem, ponto_ressuprimento)
VALUES (103, 'SSD 500GB', 'Disco de estado sólido', 'unidade', 79.99, 150, 'C3', 30);
INSERT INTO Produtos (codigo, nome, descricao, unidade_medida, preco_unitario, quantidade_estoque, localizacao_armazem, ponto_ressuprimento)
VALUES (104, 'Placa-mãe ATX', 'Placa-mãe para desktop', 'unidade', 129.99, 75, 'D4', 15);
INSERT INTO Produtos (codigo, nome, descricao, unidade_medida, preco_unitario, quantidade_estoque, localizacao_armazem, ponto_ressuprimento)
VALUES (105, 'Fonte 600W', 'Fonte de alimentação', 'unidade', 69.99, 100, 'E5', 25);

UPDATE Produtos SET preco_unitario = 289.99, quantidade_estoque = 120 WHERE codigo = 101;
UPDATE Produtos SET ponto_ressuprimento = 40, localizacao_armazem = 'B3' WHERE codigo = 102;

DELETE FROM Produtos WHERE codigo = 105;

INSERT INTO Pedidos_Compra (numero, data_pedido, data_entrega_esperada, id_fornecedor, status)
VALUES (1001, '2023-06-01', '2023-06-15', 1, 'Em processamento');
INSERT INTO Pedidos_Compra (numero, data_pedido, data_entrega_esperada, id_fornecedor, status)
VALUES (1002, '2023-06-02', '2023-06-20', 2, 'Enviado');
INSERT INTO Pedidos_Compra (numero, data_pedido, data_entrega_esperada, id_fornecedor, status)
VALUES (1003, '2023-06-03', '2023-06-18', 3, 'Em processamento');
INSERT INTO Pedidos_Compra (numero, data_pedido, data_entrega_esperada, id_fornecedor, status)
VALUES (1004, '2023-06-04', '2023-06-25', 4, 'Enviado');
INSERT INTO Pedidos_Compra (numero, data_pedido, data_entrega_esperada, id_fornecedor, status)
VALUES (1005, '2023-06-05', '2023-06-30', 1, 'Em processamento');

UPDATE Pedidos_Compra SET status = 'Enviado' WHERE numero = 1001;
UPDATE Pedidos_Compra SET data_entrega_esperada = '2023-06-22' WHERE numero = 1002;

DELETE FROM Pedidos_Compra WHERE numero = 1005;

INSERT INTO Itens_Pedido (id_pedido, id_produto, quantidade)
VALUES (1001, 101, 50);
INSERT INTO Itens_Pedido (id_pedido, id_produto, quantidade)
VALUES (1001, 102, 100);
INSERT INTO Itens_Pedido (id_pedido, id_produto, quantidade)
VALUES (1002, 103, 75);
INSERT INTO Itens_Pedido (id_pedido, id_produto, quantidade)
VALUES (1003, 104, 30);
INSERT INTO Itens_Pedido (id_pedido, id_produto, quantidade)
VALUES (1004, 101, 25);

UPDATE Itens_Pedido SET quantidade = 60 WHERE id_pedido = 1001 AND id_produto = 101;
UPDATE Itens_Pedido SET quantidade = 80 WHERE id_pedido = 1002 AND id_produto = 103;

DELETE FROM Itens_Pedido WHERE id_pedido = 1004 AND id_produto = 101;

INSERT INTO Recebimentos (id_pedido, data_recebimento, quantidade_recebida, condicao)
VALUES (1001, '2023-06-14', 50, 'Aceito');
INSERT INTO Recebimentos (id_pedido, data_recebimento, quantidade_recebida, condicao)
VALUES (1002, '2023-06-19', 75, 'Aceito');
INSERT INTO Recebimentos (id_pedido, data_recebimento, quantidade_recebida, condicao)
VALUES (1003, '2023-06-17', 30, 'Aceito');
INSERT INTO Recebimentos (id_pedido, data_recebimento, quantidade_recebida, condicao)
VALUES (1004, '2023-06-24', 20, 'Rejeitado');
INSERT INTO Recebimentos (id_pedido, data_recebimento, quantidade_recebida, condicao)
VALUES (1001, '2023-06-15', 100, 'Aceito');

UPDATE Recebimentos SET quantidade_recebida = 55 WHERE id_pedido = 1001 AND data_recebimento = '2023-06-14';
UPDATE Recebimentos SET condicao = 'Aceito parcialmente' WHERE id_pedido = 1004 AND data_recebimento = '2023-06-24';

DELETE FROM Recebimentos WHERE id_pedido = 1003 AND data_recebimento = '2023-06-17';

INSERT INTO Filiais (codigo, nome, endereco, capacidade_armazenamento)
VALUES (1, 'Filial São Paulo', 'Av. Paulista, 1000', 10000);
INSERT INTO Filiais (codigo, nome, endereco, capacidade_armazenamento)
VALUES (2, 'Filial Rio de Janeiro', 'Av. Atlântica, 500', 8000);
INSERT INTO Filiais (codigo, nome, endereco, capacidade_armazenamento)
VALUES (3, 'Filial Belo Horizonte', 'Rua da Bahia, 200', 6000);
INSERT INTO Filiais (codigo, nome, endereco, capacidade_armazenamento)
VALUES (4, 'Filial Porto Alegre', 'Av. Ipiranga, 1500', 7000);
INSERT INTO Filiais (codigo, nome, endereco, capacidade_armazenamento)
VALUES (5, 'Filial Recife', 'Av. Boa Viagem, 300', 5000);

UPDATE Filiais SET capacidade_armazenamento = 11000 WHERE codigo = 1;
UPDATE Filiais SET endereco = 'Av. Atlântica, 600' WHERE codigo = 2;

DELETE FROM Filiais WHERE codigo = 5;

INSERT INTO Transferencias (id_produto, quantidade, data_transferencia, origem, destino)
VALUES (101, 20, '2023-06-20', 'Armazém Central', 1);
INSERT INTO Transferencias (id_produto, quantidade, data_transferencia, origem, destino)
VALUES (102, 50, '2023-06-21', 'Armazém Central', 2);
INSERT INTO Transferencias (id_produto, quantidade, data_transferencia, origem, destino)
VALUES (103, 30, '2023-06-22', 'Armazém Central', 3);
INSERT INTO Transferencias (id_produto, quantidade, data_transferencia, origem, destino)
VALUES (104, 15, '2023-06-23', 'Armazém Central', 4);
INSERT INTO Transferencias (id_produto, quantidade, data_transferencia, origem, destino)
VALUES (101, 10, '2023-06-24', 1, 2);

UPDATE Transferencias SET quantidade = 25 WHERE id_produto = 101 AND data_transferencia = '2023-06-20';
UPDATE Transferencias SET destino = 3 WHERE id_produto = 102 AND data_transferencia = '2023-06-21';

DELETE FROM Transferencias WHERE id_produto = 101 AND data_transferencia = '2023-06-24';