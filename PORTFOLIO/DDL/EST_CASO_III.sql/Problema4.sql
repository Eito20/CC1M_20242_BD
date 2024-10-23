-- Tabela Clientes
CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(255) NOT NULL,
    Cidade VARCHAR(100) NOT NULL,
    CEP VARCHAR(10) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

-- Tabela Pedidos
CREATE TABLE Pedidos (
    Numero_Pedido INT PRIMARY KEY,
    ID_Cliente INT NOT NULL,
    Data_Pedido DATE NOT NULL,
    Valor_Total_Pedido DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);