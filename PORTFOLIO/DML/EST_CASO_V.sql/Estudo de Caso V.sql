INSERT INTO Clientes (nome, cpf, data_nascimento, endereco, status_fidelidade) VALUES ('Ana Silva', '12345678901', '1990-05-15', 'Rua A, 123', 'Ouro');
INSERT INTO Clientes (nome, cpf, data_nascimento, endereco, status_fidelidade) VALUES ('Carlos Santos', '23456789012', '1985-08-22', 'Av. B, 456', 'Prata');
INSERT INTO Clientes (nome, cpf, data_nascimento, endereco, status_fidelidade) VALUES ('Mariana Oliveira', '34567890123', '1992-03-10', 'Rua C, 789', 'Bronze');
INSERT INTO Clientes (nome, cpf, data_nascimento, endereco, status_fidelidade) VALUES ('Pedro Souza', '45678901234', '1988-11-30', 'Av. D, 1011', 'Ouro');
INSERT INTO Clientes (nome, cpf, data_nascimento, endereco, status_fidelidade) VALUES ('Juliana Lima', '56789012345', '1995-07-18', 'Rua E, 1213', 'Prata');

UPDATE Clientes SET status_fidelidade = 'Ouro' WHERE cpf = '34567890123';
UPDATE Clientes SET endereco = 'Av. B, 460' WHERE nome = 'Carlos Santos';

DELETE FROM Clientes WHERE cpf = '56789012345';

INSERT INTO Produtos (nome, categoria, preco, estoque, fornecedor_id) VALUES ('Smartphone X', 'Celulares', 1999.99, 50, 1);
INSERT INTO Produtos (nome, categoria, preco, estoque, fornecedor_id) VALUES ('Notebook Y', 'Computadores', 3999.99, 30, 2);
INSERT INTO Produtos (nome, categoria, preco, estoque, fornecedor_id) VALUES ('Fone de Ouvido Z', 'Acessórios', 299.99, 100, 3);
INSERT INTO Produtos (nome, categoria, preco, estoque, fornecedor_id) VALUES ('Smart TV 4K', 'Eletrônicos', 2499.99, 20, 4);
INSERT INTO Produtos (nome, categoria, preco, estoque, fornecedor_id) VALUES ('Mouse Gamer', 'Acessórios', 199.99, 80, 5);

UPDATE Produtos SET preco = 1899.99 WHERE nome = 'Smartphone X';
UPDATE Produtos SET estoque = 25 WHERE nome = 'Notebook Y';

DELETE FROM Produtos WHERE nome = 'Mouse Gamer';

INSERT INTO Fornecedores (nome, cnpj, endereco, contato) VALUES ('TechSupply Inc.', '12345678000190', 'Rua X, 100', 'contato@techsupply.com');
INSERT INTO Fornecedores (nome, cnpj, endereco, contato) VALUES ('Eletronic Distributors', '23456789000191', 'Av. Y, 200', 'vendas@eletronicdist.com');
INSERT INTO Fornecedores (nome, cnpj, endereco, contato) VALUES ('Global Gadgets', '34567890000192', 'Rua Z, 300', 'info@globalgadgets.com');
INSERT INTO Fornecedores (nome, cnpj, endereco, contato) VALUES ('Smart Solutions', '45678901000193', 'Av. W, 400', 'contato@smartsolutions.com');
INSERT INTO Fornecedores (nome, cnpj, endereco, contato) VALUES ('Tech Innovations', '56789012000194', 'Rua V, 500', 'sales@techinnovations.com');

UPDATE Fornecedores SET endereco = 'Rua X, 110' WHERE cnpj = '12345678000190';
UPDATE Fornecedores SET contato = 'newcontact@globalgadgets.com' WHERE nome = 'Global Gadgets';

DELETE FROM Fornecedores WHERE cnpj = '56789012000194';

INSERT INTO Vendas (cliente_id, data_venda, valor_total, status) VALUES (1, '2023-06-01', 2299.98, 'Concluída');
INSERT INTO Vendas (cliente_id, data_venda, valor_total, status) VALUES (2, '2023-06-02', 3999.99, 'Concluída');
INSERT INTO Vendas (cliente_id, data_venda, valor_total, status) VALUES (3, '2023-06-03', 599.98, 'Pendente');
INSERT INTO Vendas (cliente_id, data_venda, valor_total, status) VALUES (4, '2023-06-04', 2499.99, 'Concluída');
INSERT INTO Vendas (cliente_id, data_venda, valor_total, status) VALUES (5, '2023-06-05', 199.99, 'Cancelada');

UPDATE Vendas SET status = 'Concluída' WHERE cliente_id = 3 AND data_venda = '2023-06-03';
UPDATE Vendas SET valor_total = 2399.98 WHERE cliente_id = 1 AND data_venda = '2023-06-01';

DELETE FROM Vendas WHERE cliente_id = 5 AND status = 'Cancelada';

INSERT INTO Pagamentos  (venda_id, valor, data_pagamento, metodo) VALUES (1, 2299.98, '2023-06-01', 'Cartão de Crédito');
INSERT INTO Pagamentos (venda_id, valor, data_pagamento, metodo) VALUES (2, 3999.99, '2023-06-02', 'Boleto');
INSERT INTO Pagamentos (venda_id, valor, data_pagamento, metodo) VALUES (3, 599.98, '2023-06-03', 'Pix');
INSERT INTO Pagamentos (venda_id, valor, data_pagamento, metodo) VALUES (4, 2499.99, '2023-06-04', 'Cartão de Débito');
INSERT INTO Pagamentos (venda_id, valor, data_pagamento, metodo) VALUES (5, 199.99, '2023-06-05', 'Dinheiro');

UPDATE Pagamentos SET metodo = 'Cartão de Crédito' WHERE venda_id = 2;
UPDATE Pagamentos SET valor = 2399.98 WHERE venda_id = 1;

DELETE FROM Pagamentos WHERE venda_id = 5;