INSERT INTO Passageiros (nome, cpf, telefone, endereco) VALUES ('Luisa Mendes', '78901234567', '(11) 98765-4321', 'Rua das Flores, 123');
INSERT INTO Passageiros (nome, cpf, telefone, endereco) VALUES ('Ricardo Alves', '89012345678', '(21) 99876-5432', 'Av. do Sol, 456');
INSERT INTO Passageiros (nome, cpf, telefone, endereco) VALUES ('Camila Santos', '90123456789', '(31) 97654-3210', 'Rua da Lua, 789');
INSERT INTO Passageiros (nome, cpf, telefone, endereco) VALUES ('Fernando Silva', '01234567890', '(41) 96543-2109', 'Av. das Estrelas, 1011');
INSERT INTO Passageiros (nome, cpf, telefone, endereco) VALUES ('Amanda Oliveira', '12345678901', '(51) 95432-1098', 'Rua do Mar, 1213');

UPDATE Passageiros SET telefone = '(11) 99999-8888' WHERE cpf = '78901234567';
UPDATE Passageiros SET endereco = 'Av. do Sol, 460' WHERE nome = 'Ricardo Alves';

DELETE FROM Passageiros WHERE cpf = '12345678901';

INSERT INTO Voos (codigo, origem, destino, horario_partida, horario_chegada) VALUES ('FL001', 'São Paulo', 'Rio de Janeiro', '2023-06-10 08:00:00', '2023-06-10 09:00:00');
INSERT INTO Voos (codigo, origem, destino, horario_partida, horario_chegada) VALUES ('FL002', 'Rio de Janeiro', 'Brasília', '2023-06-10 10:00:00', '2023-06-10 12:00:00');
INSERT INTO Voos (codigo, origem, destino, horario_partida, horario_chegada) VALUES ('FL003', 'Brasília', 'Salvador', '2023-06-10 14:00:00', '2023-06-10 16:00:00');
INSERT INTO Voos (codigo, origem, destino, horario_partida, horario_chegada) VALUES ('FL004', 'Salvador', 'Recife', '2023-06-10 18:00:00', '2023-06-10 19:30:00');
INSERT INTO Voos (codigo, origem, destino, horario_partida, horario_chegada) VALUES ('FL005', 'Recife', 'Fortaleza', '2023-06-10 21:00:00', '2023-06-10 22:30:00');

UPDATE Voos SET horario_partida = '2023-06-10 08:30:00', horario_chegada = '2023-06-10 09:30:00' WHERE codigo = 'FL001';
UPDATE Voos SET destino = 'Porto Alegre' WHERE codigo = 'FL005';

DELETE FROM Voos WHERE codigo = 'FL004';

INSERT INTO Aeroportos (codigo, nome, cidade, estado) VALUES ('GRU', 'Aeroporto Internacional de São Paulo', 'Guarulhos', 'SP');
INSERT INTO Aeroportos (codigo, nome, cidade, estado) VALUES ('GIG', 'Aeroporto Internacional do Rio de Janeiro', 'Rio de Janeiro', 'RJ');
INSERT INTO Aeroportos (codigo, nome, cidade, estado) VALUES ('BSB', 'Aeroporto Internacional de Brasília', 'Brasília', 'DF');
INSERT INTO Aeroportos (codigo, nome, cidade, estado) VALUES ('SSA', 'Aeroporto Internacional de Salvador', 'Salvador', 'BA');
INSERT INTO Aeroportos (codigo, nome, cidade, estado) VALUES ('REC', 'Aeroporto Internacional do Recife', 'Recife', 'PE');

UPDATE Aeroportos SET nome = 'Aeroporto Internacional de Guarulhos' WHERE codigo = 'GRU';
UPDATE Aeroportos SET estado = 'Distrito Federal' WHERE codigo = 'BSB';

DELETE FROM Aeroportos WHERE codigo = 'REC';

INSERT INTO Aeronaves (modelo, capacidade, fabricante) VALUES ('Boeing 737', 180, 'Boeing');
INSERT INTO Aeronaves (modelo, capacidade, fabricante) VALUES ('Airbus A320', 150, 'Airbus');
INSERT INTO Aeronaves (modelo, capacidade, fabricante) VALUES ('Embraer E175', 76, 'Embraer');
INSERT INTO Aeronaves (modelo, capacidade, fabricante) VALUES ('Boeing 787', 330, 'Boeing');
INSERT INTO Aeronaves (modelo, capacidade, fabricante) VALUES ('Airbus A330', 290, 'Airbus');

UPDATE Aeronaves SET capacidade = 185 WHERE modelo = 'Boeing 737';
UPDATE Aeronaves SET fabricante = 'Embraer S.A.' WHERE fabricante = 'Embraer';

DELETE FROM Aeronaves WHERE modelo = 'Airbus A330';

INSERT INTO Funcionarios (nome, cargo, data_admissao) VALUES ('João Silva', 'Piloto', '2020-01-15');
INSERT INTO Funcionarios (nome, cargo, data_admissao) VALUES ('Maria Santos', 'Comissária de Bordo', '2019-05-20');
INSERT INTO Funcionarios (nome, cargo, data_admissao) VALUES ('Carlos Oliveira', 'Mecânico de Aeronaves', '2018-11-10');
INSERT INTO Funcionarios (nome, cargo, data_admissao) VALUES ('Ana Rodrigues', 'Controladora de Tráfego Aéreo', '2021-03-01');
INSERT INTO Funcionarios (nome, cargo, data_admissao) VALUES ('Pedro Costa', 'Agente de Check-in', '2022-07-05');

UPDATE Funcionarios SET cargo = 'Piloto Sênior' WHERE nome = 'João Silva';
UPDATE Funcionarios SET data_admissao = '2019-06-01' WHERE nome = 'Maria Santos';

DELETE FROM Funcionarios WHERE nome = 'Pedro Costa';

INSERT INTO Reservas (passageiro_id, voo_id, assento, status) VALUES (1, 1, '12A', 'Confirmada');
INSERT INTO Reservas (passageiro_id, voo_id, assento, status) VALUES (2, 2, '15B', 'Confirmada');
INSERT INTO Reservas (passageiro_id, voo_id, assento, status) VALUES (3, 3, '8C', 'Pendente');
INSERT INTO Reservas (passageiro_id, voo_id, assento, status) VALUES (4, 4, '20D', 'Confirmada');
INSERT INTO Reservas (passageiro_id, voo_id, assento, status) VALUES (5, 5, '5A', 'Cancelada');

UPDATE Reservas SET status = 'Confirmada' WHERE passageiro_id = 3 AND voo_id = 3;
UPDATE Reservas SET assento = '10F' WHERE passageiro_id = 2 AND voo_id = 2;

DELETE FROM Reservas WHERE status = 'Cancelada';