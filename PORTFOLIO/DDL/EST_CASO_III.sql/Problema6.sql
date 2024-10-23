-- Tabela Autores
CREATE TABLE Autores (
    ID_Autor INT PRIMARY KEY,
    Nome_Autor VARCHAR(100) NOT NULL
);

-- Tabela Posts
CREATE TABLE Posts (
    ID_Post INT PRIMARY KEY,
    Titulo_Post VARCHAR(255) NOT NULL,
    Conteudo_Post TEXT NOT NULL,
    ID_Autor INT NOT NULL,
    FOREIGN KEY (ID_Autor) REFERENCES Autores(ID_Autor)
);

-- Tabela Comentarios
CREATE TABLE Comentarios (
    ID_Comentario INT PRIMARY KEY,
    Texto_Comentario TEXT NOT NULL,
    ID_Post INT NOT NULL,
    ID_Autor INT NOT NULL,
    FOREIGN KEY (ID_Post) REFERENCES Posts(ID_Post),
    FOREIGN KEY (ID_Autor) REFERENCES Autores(ID_Autor)
);