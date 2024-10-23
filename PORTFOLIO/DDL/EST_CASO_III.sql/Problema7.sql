-- Tabela Voos
CREATE TABLE Voos (
    Numero_Voo INT PRIMARY KEY,
    Origem VARCHAR(100) NOT NULL,
    Destino VARCHAR(100) NOT NULL,
    Data DATE NOT NULL,
    Hora_Partida TIME NOT NULL,
    Hora_Chegada TIME NOT NULL
);

-- Tabela Reservas
CREATE TABLE Reservas (
    Numero_Reserva INT PRIMARY KEY,
    Numero_Voo INT NOT NULL,
    Nome_Passageiro VARCHAR(100) NOT NULL,
    Data_Reserva DATE NOT NULL,
    FOREIGN KEY (Numero_Voo) REFERENCES Voos(Numero_Voo)
);