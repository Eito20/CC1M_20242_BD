-- Tabela Funcionarios
CREATE TABLE Funcionarios (
    ID_Funcionario INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(100) NOT NULL,
    Departamento VARCHAR(100) NOT NULL
);

-- Tabela Salarios
CREATE TABLE Salarios (
    ID_Funcionario INT,
    Mes INT,
    Ano INT,
    Salario DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (ID_Funcionario, Mes, Ano),
    FOREIGN KEY (ID_Funcionario) REFERENCES Funcionarios(ID_Funcionario)
);