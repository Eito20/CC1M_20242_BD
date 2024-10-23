-- Tabela Cursos
CREATE TABLE Cursos (
    Curso VARCHAR(100) PRIMARY KEY,
    Professor VARCHAR(100) NOT NULL
);

-- Tabela Alunos
CREATE TABLE Alunos (
    Matricula INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Curso VARCHAR(100) NOT NULL,
    FOREIGN KEY (Curso) REFERENCES Cursos(Curso)
);