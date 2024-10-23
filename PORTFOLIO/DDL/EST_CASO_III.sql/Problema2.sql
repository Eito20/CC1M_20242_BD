-- Tabela Produtos
CREATE TABLE Produtos (
    Codigo_Produto INT PRIMARY KEY,
    Descricao VARCHAR(255) NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL,
    Categoria VARCHAR(100) NOT NULL
);

-- Tabela Compras
CREATE TABLE Compras (
    Numero_Compra INT PRIMARY KEY,
    Data_Compra DATE NOT NULL,
    Codigo_Produto INT NOT NULL,
    Quantidade INT NOT NULL,
    Valor_Total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (Codigo_Produto) REFERENCES Produtos(Codigo_Produto)
);