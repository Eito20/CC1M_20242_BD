
INSERT INTO Modalidades (nome, descricao) VALUES ('Musculação', 'Treinamento com pesos');
INSERT INTO Modalidades (nome, descricao) VALUES ('Natação', 'Aulas de natação para todos os níveis');
INSERT INTO Modalidades (nome, descricao) VALUES ('Pilates', 'Exercícios de fortalecimento e flexibilidade');
INSERT INTO Modalidades (nome, descricao) VALUES ('Yoga', 'Prática de posturas e meditação');
INSERT INTO Modalidades (nome, descricao) VALUES ('Spinning', 'Aulas de ciclismo indoor');

UPDATE Modalidades SET descricao = 'Treinamento com pesos e máquinas' WHERE nome = 'Musculação';
UPDATE Modalidades SET nome = 'Natação Avançada' WHERE nome = 'Natação' AND descricao LIKE '%todos os níveis%';

DELETE FROM Modalidades WHERE nome = 'Spinning';

INSERT INTO Instrutores (nome, cpf, data_nascimento, especialidade) VALUES ('João Silva', '12345678901', '1985-03-15', 'Musculação');
INSERT INTO Instrutores (nome, cpf, data_nascimento, especialidade) VALUES ('Maria Santos', '23456789012', '1990-07-22', 'Natação');
INSERT INTO Instrutores (nome, cpf, data_nascimento, especialidade) VALUES ('Pedro Oliveira', '34567890123', '1988-11-30', 'Pilates');
INSERT INTO Instrutores (nome, cpf, data_nascimento, especialidade) VALUES ('Ana Rodrigues', '45678901234', '1992-05-10', 'Yoga');
INSERT INTO Instrutores (nome, cpf, data_nascimento, especialidade) VALUES ('Carlos Ferreira', '56789012345', '1987-09-18', 'Spinning');

UPDATE Instrutores SET especialidade = 'Musculação,Spinning' WHERE nome = 'João Silva';
UPDATE Instrutores SET data_nascimento = '1991-07-22' WHERE cpf = '23456789012';

DELETE FROM Instrutores WHERE especialidade = 'Spinning' AND nome = 'Carlos Ferreira';

INSERT INTO Alunos (nome, cpf, data_nascimento, endereco) VALUES ('Mariana Costa', '67890123456', '1995-02-28', 'Rua A, 123');
INSERT INTO Alunos (nome, cpf, data_nascimento, endereco) VALUES ('Rafael Souza', '78901234567', '1993-08-14', 'Av. B, 456');
INSERT INTO Alunos (nome, cpf, data_nascimento, endereco) VALUES ('Juliana Lima', '89012345678', '1997-11-05', 'Rua C, 789');
INSERT INTO Alunos (nome, cpf, data_nascimento, endereco) VALUES ('Fernando Gomes', '90123456789', '1991-04-20', 'Av. D, 1011');
INSERT INTO Alunos (nome, cpf, data_nascimento, endereco) VALUES ('Camila Rocha', '01234567890', '1996-09-30', 'Rua E, 1213');

UPDATE Alunos SET endereco = 'Rua A, 125' WHERE cpf = '67890123456';
UPDATE Alunos SET data_nascimento = '1994-08-14' WHERE nome = 'Rafael Souza';

DELETE FROM Alunos WHERE cpf = '01234567890';

INSERT INTO PlanosTreinamento (id_aluno, id_instrutor, descricao, data_inicio, data_fim) VALUES (1, 1, 'Plano de musculação iniciante', '2023-01-01', '2023-03-31');
INSERT INTO PlanosTreinamento (id_aluno, id_instrutor, descricao, data_inicio, data_fim) VALUES (2, 2, 'Plano de natação intermediário', '2023-02-01', '2023-04-30');
INSERT INTO PlanosTreinamento (id_aluno, id_instrutor, descricao, data_inicio, data_fim) VALUES (3, 3, 'Plano de pilates avançado', '2023-03-01', '2023-05-31');
INSERT INTO PlanosTreinamento (id_aluno, id_instrutor, descricao, data_inicio, data_fim) VALUES (4, 4, 'Plano de yoga para iniciantes', '2023-04-01', '2023-06-30');
INSERT INTO PlanosTreinamento (id_aluno, id_instrutor, descricao, data_inicio, data_fim) VALUES (5, 1, 'Plano de musculação avançado', '2023-05-01', '2023-07-31');

UPDATE PlanosTreinamento SET data_fim = '2023-04-30' WHERE id_aluno = 1 AND id_instrutor = 1;
UPDATE PlanosTreinamento SET descricao = 'Plano de natação avançado' WHERE id_aluno = 2 AND id_instrutor = 2;

DELETE FROM PlanosTreinamento WHERE id_aluno = 5 AND id_instrutor = 1;

INSERT INTO Aulas (id_modalidade, id_instrutor, horario, capacidade_maxima) VALUES (1, 1, '2023-06-01 08:00:00', 20);
INSERT INTO Aulas (id_modalidade, id_instrutor, horario, capacidade_maxima) VALUES (2, 2, '2023-06-01 10:00:00', 15);
INSERT INTO Aulas (id_modalidade, id_instrutor, horario, capacidade_maxima) VALUES (3, 3, '2023-06-01 14:00:00', 10);
INSERT INTO Aulas (id_modalidade, id_instrutor, horario, capacidade_maxima) VALUES (4, 4, '2023-06-01 16:00:00', 12);
INSERT INTO Aulas (id_modalidade, id_instrutor, horario, capacidade_maxima) VALUES (1, 1, '2023-06-01 18:00:00', 20);

UPDATE Aulas SET capacidade_maxima = 25 WHERE id_modalidade = 1 AND horario = '2023-06-01 08:00:00';
UPDATE Aulas SET id_instrutor = 2 WHERE id_modalidade = 2 AND horario = '2023-06-01 10:00:00';

DELETE FROM Aulas WHERE id_modalidade = 4 AND horario = '2023-06-01 16:00:00';

INSERT INTO Pagamentos (id_aluno, valor, data_pagamento, status) VALUES (1, 100.00, '2023-06-01', 'Pago');
INSERT INTO Pagamentos (id_aluno, valor, data_pagamento, status) VALUES (2, 150.00, '2023-06-02', 'Pago');
INSERT INTO Pagamentos (id_aluno, valor, data_pagamento, status) VALUES (3, 120.00, '2023-06-03', 'Pendente');
INSERT INTO Pagamentos (id_aluno, valor, data_pagamento, status) VALUES (4, 200.00, '2023-06-04', 'Pago');
INSERT INTO Pagamentos (id_aluno, valor, data_pagamento, status) VALUES (5, 180.00, '2023-06-05', 'Pendente');

UPDATE Pagamentos SET status = 'Pago' WHERE id_aluno = 3 AND data_pagamento = '2023-06-03';
UPDATE Pagamentos SET valor = 190.00 WHERE id_aluno = 5 AND data_pagamento = '2023-06-05';

DELETE FROM Pagamentos WHERE id_aluno = 2 AND data_pagamento = '2023-06-02';