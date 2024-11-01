INSERT INTO Clientes (codigo, cnpj, razao_social, ramo_atividade, data_cadastramento, pessoa_contato)
VALUES (1, '12345678000190', 'Tech Solutions Ltda', 'Desenvolvimento de Software', '2023-01-15', 'João Silva');
INSERT INTO Clientes (codigo, cnpj, razao_social, ramo_atividade, data_cadastramento, pessoa_contato)
VALUES (2, '23456789000191', 'Inovação Digital S.A.', 'Consultoria em TI', '2023-02-20', 'Maria Santos');
INSERT INTO Clientes (codigo, cnpj, razao_social, ramo_atividade, data_cadastramento, pessoa_contato)
VALUES (3, '34567890000192', 'Cyber Segurança Ltda', 'Segurança da Informação', '2023-03-10', 'Pedro Oliveira');
INSERT INTO Clientes (codigo, cnpj, razao_social, ramo_atividade, data_cadastramento, pessoa_contato)
VALUES (4, '45678901000193', 'Data Analytics Corp', 'Análise de Dados', '2023-04-05', 'Ana Rodrigues');
INSERT INTO Clientes (codigo, cnpj, razao_social, ramo_atividade, data_cadastramento, pessoa_contato)
VALUES (5, '56789012000194', 'Cloud Services Ltda', 'Serviços em Nuvem', '2023-05-01', 'Carlos Ferreira');

UPDATE Clientes SET pessoa_contato = 'João Silva Jr.' WHERE codigo = 1;
UPDATE Clientes SET ramo_atividade = 'Consultoria em TI e Desenvolvimento' WHERE cnpj = '23456789000191';

DELETE FROM Clientes WHERE codigo = 5;

INSERT INTO Empregados (matricula, nome, telefones, cargo, salario, data_admissao, qualificacoes, endereco)
VALUES ('E001', 'Mariana Alves', '{"11987654321", "11998765432"}', 'Analista de Sistemas', 5000.00, '2022-01-10', 'Java, Python, SQL', 'Rua A, 123');
INSERT INTO Empregados (matricula, nome, telefones, cargo, salario, data_admissao, qualificacoes, endereco)
VALUES ('E002', 'Ricardo Santos', '{"21976543210"}', 'Desenvolvedor Full Stack', 6000.00, '2021-05-15', 'JavaScript, React, Node.js', 'Av. B, 456');
INSERT INTO Empregados (matricula, nome, telefones, cargo, salario, data_admissao, qualificacoes, endereco)
VALUES ('E003', 'Camila Ferreira', '{"31965432109", "31954321098"}', 'Gerente de Projetos', 8000.00, '2020-11-20', 'PMP, Scrum Master', 'Rua C, 789');
INSERT INTO Empregados (matricula, nome, telefones, cargo, salario, data_admissao, qualificacoes, endereco)
VALUES ('E004', 'Fernando Lima', '{"41954321987"}', 'Designer UX/UI', 4500.00, '2022-03-01', 'Adobe XD, Figma, Sketch', 'Av. D, 1011');
INSERT INTO Empregados (matricula, nome, telefones, cargo, salario, data_admissao, qualificacoes, endereco)
VALUES ('E005', 'Juliana Costa', '{"51943219876"}', 'Analista de Qualidade', 4800.00, '2021-09-10', 'Selenium, JUnit, TestNG', 'Rua E, 1213');

UPDATE Empregados SET salario = 5500.00 WHERE matricula = 'E001';
UPDATE Empregados SET qualificacoes = 'JavaScript, React, Node.js, TypeScript' WHERE matricula = 'E002';

DELETE FROM Empregados WHERE matricula = 'E005';

INSERT INTO Empresas (cnpj, razao_social, telefones, pessoa_contato, endereco)
VALUES ('67890123000195', 'Parceira Tech Ltda', '{"1133334444", "11999998888"}', 'Luisa Mendes', 'Rua X, 100');
INSERT INTO Empresas (cnpj, razao_social, telefones, pessoa_contato, endereco)
VALUES ('78901234000196', 'Inovação Digital S.A.', '{"2122223333"}', 'Roberto Alves', 'Av. Y, 200');
INSERT INTO Empresas (cnpj, razao_social, telefones, pessoa_contato, endereco)
VALUES ('89012345000197', 'Soluções Criativas Ltda', '{"3144445555", "31988887777"}', 'Carla Santos', 'Rua Z, 300');
INSERT INTO Empresas (cnpj, razao_social, telefones, pessoa_contato, endereco)
VALUES ('90123456000198', 'Tecnologia Avançada S.A.', '{"4155556666"}', 'Marcelo Silva', 'Av. W, 400');
INSERT INTO Empresas (cnpj, razao_social, telefones, pessoa_contato, endereco)
VALUES ('01234567000199', 'Sistemas Inteligentes Ltda', '{"5166667777", "51977776666"}', 'Patricia Oliveira', 'Rua V, 500');

UPDATE Empresas SET pessoa_contato = 'Luisa Mendes Silva' WHERE cnpj = '67890123000195';
UPDATE Empresas SET razao_social = 'Inovação Digital e Tecnologia S.A.' WHERE cnpj = '78901234000196';

DELETE FROM Empresas WHERE cnpj = '01234567000199';

INSERT INTO Fornecedores (cnpj, razao_social, endereco, telefones, pessoa_contato)
VALUES ('12345678000101', 'Componentes Eletrônicos Ltda', 'Rua dos Circuitos, 123', '{"1144443333", "11977776666"}', 'Rafael Souza');
INSERT INTO Fornecedores (cnpj, razao_social, endereco, telefones, pessoa_contato)
VALUES ('23456789000102', 'Peças de Informática S.A.', 'Av. dos Processadores, 456', '{"2155554444"}', 'Amanda Lima');
INSERT INTO Fornecedores (cnpj, razao_social, endereco, telefones, pessoa_contato)
VALUES ('34567890000103', 'Suprimentos Tecnológicos Ltda', 'Rua das Placas, 789', '{"3166665555", "31988889999"}', 'Gustavo Santos');
INSERT INTO Fornecedores (cnpj, razao_social, endereco, telefones, pessoa_contato)
VALUES ('45678901000104', 'Conectividade Total S.A.', 'Av. dos Cabos, 1011', '{"4177776666"}', 'Fernanda Oliveira');
INSERT INTO Fornecedores (cnpj, razao_social, endereco, telefones, pessoa_contato)
VALUES ('56789012000105', 'Inovação em Hardware Ltda', 'Rua dos Chips, 1213', '{"5188887777", "51999998888"}', 'Ricardo Almeida');

UPDATE Fornecedores SET pessoa_contato = 'Rafael Souza Jr.' WHERE cnpj = '12345678000101';
UPDATE Fornecedores SET endereco = 'Av. dos Processadores, 460' WHERE cnpj = '23456789000102';

DELETE FROM Fornecedores WHERE cnpj = '56789012000105';

INSERT INTO Tipo_Endereco (codigo, nome) VALUES (1, 'Comercial');
INSERT INTO Tipo_Endereco (codigo, nome) VALUES (2, 'Residencial');
INSERT INTO Tipo_Endereco (codigo, nome) VALUES (3, 'Entrega');
INSERT INTO Tipo_Endereco (codigo, nome) VALUES (4, 'Faturamento');
INSERT INTO Tipo_Endereco (codigo, nome) VALUES (5, 'Matriz');

UPDATE Tipo_Endereco SET nome = 'Comercial Principal' WHERE codigo = 1;
UPDATE Tipo_Endereco SET nome = 'Residencial Principal' WHERE codigo = 2;

DELETE FROM Tipo_Endereco WHERE codigo = 5;

INSERT INTO Enderecos (numero, logradouro, complemento, cep, bairro, cidade, estado, id_tipo_endereco)
VALUES (123, 'Rua A', 'Sala 101', '01234-567', 'Centro', 'São Paulo', 'SP', 1);
INSERT INTO Enderecos (numero, logradouro, complemento, cep, bairro, cidade, estado, id_tipo_endereco)
VALUES (456, 'Av. B', 'Apto 202', '12345-678', 'Copacabana', 'Rio de Janeiro', 'RJ', 2);
INSERT INTO Enderecos (numero, logradouro, complemento, cep, bairro, cidade, estado, id_tipo_endereco)
VALUES (789, 'Rua C', NULL, '23456-789', 'Savassi', 'Belo Horizonte', 'MG', 3);
INSERT INTO Enderecos (numero, logradouro, complemento, cep, bairro, cidade, estado, id_tipo_endereco)
VALUES (1011, 'Av. D', 'Conj. 303', '34567-890', 'Boa Viagem', 'Recife', 'PE', 4);
INSERT INTO Enderecos (numero, logradouro, complemento, cep, bairro, cidade, estado, id_tipo_endereco)
VALUES (1213, 'Rua E', 'Loja 1', '45678-901', 'Moinhos de Vento', 'Porto Alegre', 'RS', 1);

UPDATE Enderecos SET complemento = 'Sala 102' WHERE logradouro = 'Rua A' AND numero = 123;
UPDATE Enderecos SET bairro = 'Boa Vista' WHERE logradouro = 'Av. D' AND numero = 1011;

DELETE FROM Enderecos WHERE logradouro = 'Rua E' AND numero = 1213;

INSERT INTO Encomendas (numero, data_inclusao, valor_total, valor_desconto, valor_liquido, id_forma_pagamento, quantidade_parcelas)
VALUES (1001, '2023-06-01', 1000.00, 50.00, 950.00, 1, 2);
INSERT INTO Encomendas (numero, data_inclusao, valor_total, valor_desconto, valor_liquido, id_forma_pagamento, quantidade_parcelas)
VALUES (1002, '2023-06-02', 2500.00, 100.00, 2400.00, 2, 3);
INSERT INTO Encomendas (numero, data_inclusao, valor_total, valor_desconto, valor_liquido, id_forma_pagamento, quantidade_parcelas)
VALUES (1003, '2023-06-03', 750.00, 0.00, 750.00, 3, 1);
INSERT INTO Encomendas (numero, data_inclusao, valor_total, valor_desconto, valor_liquido, id_forma_pagamento, quantidade_parcelas)
VALUES (1004, '2023-06-04', 3000.00, 150.00, 2850.00, 1, 4);
INSERT INTO Encomendas (numero, data_inclusao, valor_total, valor_desconto, valor_liquido, id_forma_pagamento, quantidade_parcelas)
VALUES (1005, '2023-06-05', 1200.00, 60.00, 1140.00, 2, 2);

UPDATE Encomendas SET valor_desconto = 75.00, valor_liquido = 925.00 WHERE numero = 1001;
UPDATE Encomendas SET id_forma_pagamento = 3, quantidade_parcelas = 1 WHERE numero = 1002;

DELETE FROM Encomendas WHERE numero = 1005;

INSERT INTO Produtos (codigo, nome, cor, dimensoes, peso, preco, tempo_fabricacao, desenho_produto, horas_mao_obra)
VALUES (101, 'Smartphone X', 'Preto', '15x7x0.8cm', 180, 999.99, 48, 'smartphone_x.png', 2.5);
INSERT INTO Produtos (codigo, nome, cor, dimensoes, peso, preco, tempo_fabricacao, desenho_produto, horas_mao_obra)
VALUES (102, 'Notebook Y', 'Prata', '35x24x2cm', 1500, 3999.99, 72, 'notebook_y.png', 5.0);
INSERT INTO Produtos (codigo, nome, cor, dimensoes, peso, preco, tempo_fabricacao, desenho_produto, horas_mao_obra)
VALUES (103, 'Smartwatch Z', 'Branco', '4x4x1cm', 50, 599.99, 24, 'smartwatch_z.png', 1.5);
INSERT INTO Produtos (codigo, nome, cor, dimensoes, peso, preco, tempo_fabricacao, desenho_produto, horas_mao_obra)
VALUES (104, 'Tablet W', 'Dourado', '25x17x0.7cm', 450, 1499.99, 60, 'tablet_w.png', 3.0);
INSERT  INTO Produtos (codigo, nome, cor, dimensoes, peso, preco, tempo_fabricacao, desenho_produto, horas_mao_obra)
VALUES (105, 'Fone de Ouvido V', 'Preto', '18x16x8cm', 200, 299.99, 36, 'fone_v.png', 1.0);

UPDATE Produtos SET preco = 949.99 WHERE codigo = 101;
UPDATE Produtos SET tempo_fabricacao = 66, horas_mao_obra = 4.5 WHERE codigo = 102;

DELETE FROM Produtos WHERE codigo = 105;

INSERT INTO Tipos_Componente (codigo, nome) VALUES (1, 'Processador');
INSERT INTO Tipos_Componente (codigo, nome) VALUES (2, 'Memória RAM');
INSERT INTO Tipos_Componente (codigo, nome) VALUES (3, 'Placa de Vídeo');
INSERT INTO Tipos_Componente (codigo, nome) VALUES (4, 'Bateria');
INSERT INTO Tipos_Componente (codigo, nome) VALUES (5, 'Tela');

UPDATE Tipos_Componente SET nome = 'Processador de Alto Desempenho' WHERE codigo = 1;
UPDATE Tipos_Componente SET nome = 'Memória RAM DDR4' WHERE codigo = 2;

DELETE FROM Tipos_Componente WHERE codigo = 5;

INSERT INTO Componentes (codigo, nome, quantidade_estoque, preco_unitario, unidade, id_tipo_componente)
VALUES (1001, 'Processador Intel i7', 100, 799.99, 'unidade', 1);
INSERT INTO Componentes (codigo, nome, quantidade_estoque, preco_unitario, unidade, id_tipo_componente)
VALUES (1002, 'Memória RAM 8GB', 200, 199.99, 'unidade', 2);
INSERT INTO Componentes (codigo, nome, quantidade_estoque, preco_unitario, unidade, id_tipo_componente)
VALUES (1003, 'Placa de Vídeo NVIDIA GTX 1660', 50, 1299.99, 'unidade', 3);
INSERT INTO Componentes (codigo, nome, quantidade_estoque, preco_unitario, unidade, id_tipo_componente)
VALUES (1004, 'Bateria de Lítio 5000mAh', 150, 149.99, 'unidade', 4);
INSERT INTO Componentes (codigo, nome, quantidade_estoque, preco_unitario, unidade, id_tipo_componente)
VALUES (1005, 'Tela LCD 15.6"', 75, 399.99, 'unidade', 5);

UPDATE Componentes SET quantidade_estoque = 90, preco_unitario = 779.99 WHERE codigo = 1001;
UPDATE Componentes SET nome = 'Memória RAM 16GB', preco_unitario = 349.99 WHERE codigo = 1002;

DELETE FROM Componentes WHERE codigo = 1005;

INSERT INTO Maquinas (codigo, nome, tempo_vida, data_compra, data_fim_garantia)
VALUES (1, 'Máquina de Montagem A', 60, '2022-01-15', '2025-01-15');
INSERT INTO Maquinas (codigo, nome, tempo_vida, data_compra, data_fim_garantia)
VALUES (2, 'Máquina de Teste B', 48, '2022-03-20', '2024-03-20');
INSERT INTO Maquinas (codigo, nome, tempo_vida, data_compra, data_fim_garantia)
VALUES (3, 'Máquina de Embalagem C', 36, '2022-05-10', '2025-05-10');
INSERT INTO Maquinas (codigo, nome, tempo_vida, data_compra, data_fim_garantia)
VALUES (4, 'Máquina de Solda D', 72, '2021-11-30', '2026-11-30');
INSERT INTO Maquinas (codigo, nome, tempo_vida, data_compra, data_fim_garantia)
VALUES (5, 'Máquina de Inspeção E', 54, '2022-07-05', '2025-07-05');

UPDATE Maquinas SET tempo_vida = 72 WHERE codigo = 1;
UPDATE Maquinas SET data_fim_garantia = '2026-03-20' WHERE codigo = 2;

DELETE FROM Maquinas WHERE codigo = 5;

INSERT INTO RE (id_produto, id_componente, quantidade_necessaria, unidade, tempo_uso, horas_mao_obra)
VALUES (101, 1001, 1, 'unidade', 2.0, 1.5);
INSERT INTO RE (id_produto, id_componente, quantidade_necessaria, unidade, tempo_uso, horas_mao_obra)
VALUES (101, 1002, 2, 'unidade', 0.5, 0.5);
INSERT INTO RE (id_produto, id_componente, quantidade_necessaria, unidade, tempo_uso, horas_mao_obra)
VALUES (102, 1001, 1, 'unidade', 3.0, 2.0);
INSERT INTO RE (id_produto, id_componente, quantidade_necessaria, unidade, tempo_uso, horas_mao_obra)
VALUES (102, 1003, 1, 'unidade', 1.0, 1.0);
INSERT INTO RE (id_produto, id_componente, quantidade_necessaria, unidade, tempo_uso, horas_mao_obra)
VALUES (103, 1004, 1, 'unidade', 1.5, 1.0);

UPDATE RE SET quantidade_necessaria = 3, tempo_uso = 0.75 WHERE id_produto = 101 AND id_componente = 1002;
UPDATE RE SET horas_mao_obra = 2.5 WHERE id_produto = 102 AND id_componente = 1001;

DELETE FROM RE WHERE id_produto = 103 AND id_componente = 1004;

INSERT INTO RM (id_maquina, data, descricao)
VALUES (1, '2023-06-01', 'Manutenção preventiva realizada');
INSERT INTO RM (id_maquina, data, descricao)
VALUES (2, '2023-06-05', 'Troca de peças desgastadas');
INSERT INTO RM (id_maquina, data, descricao)
VALUES (3, '2023-06-10', 'Calibração dos sensores');
INSERT INTO RM (id_maquina, data, descricao)
VALUES (4, '2023-06-15', 'Limpeza geral e lubrificação');
INSERT INTO RM (id_maquina, data, descricao)
VALUES (1, '2023-06-20', 'Atualização do software de controle');

UPDATE RM SET descricao = 'Manutenção preventiva e corretiva realizada' WHERE id_maquina = 1 AND data = '2023-06-01';
UPDATE RM SET data = '2023-06-06' WHERE id_maquina = 2 AND descricao LIKE '%Troca de peças%';

DELETE FROM RM WHERE id_maquina = 1 AND data = '2023-06-20';

INSERT INTO RS (id_componente, quantidade, data_necessidade)
VALUES (1001, 50, '2023-07-01');
INSERT INTO RS (id_componente, quantidade, data_necessidade)
VALUES (1002, 100, '2023-07-05');
INSERT INTO RS (id_componente, quantidade, data_necessidade)
VALUES (1003, 25, '2023-07-10');
INSERT INTO RS (id_componente, quantidade, data_necessidade)
VALUES (1004, 75, '2023-07-15');
INSERT INTO RS (id_componente, quantidade, data_necessidade)
VALUES (1001, 30, '2023-07-20');

UPDATE RS SET quantidade = 60 WHERE id_componente = 1001 AND data_necessidade = '2023-07-01';
UPDATE RS SET data_necessidade = '2023-07-07' WHERE id_componente = 1002;

DELETE FROM RS WHERE id_componente = 1001 AND data_necessidade = '2023-07-20';