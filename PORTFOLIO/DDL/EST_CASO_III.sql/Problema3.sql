-- Tabela Livros
CREATE TABLE Livros (
    ISBN VARCHAR(13) PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL,
    Autor VARCHAR(100) NOT NULL,
    Ano_Publicacao INT NOT NULL
);

-- Tabela Emprestimos
CREATE TABLE Emprestimos (
    Numero_Emprestimo INT PRIMARY KEY,
    ISBN_Livro VARCHAR(13) NOT NULL,
    Matricula_Aluno INT NOT NULL,
    Data_Emprestimo DATE NOT NULL,
    Data_Devolucao DATE,
    FOREIGN KEY (ISBN_Livro) REFERENCES Livros(ISBN)
);