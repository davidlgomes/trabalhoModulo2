-- Criação Banco de Dados
CREATE DATABASE informacoesResilia;

-- Selecionando Banco de Dados
USE informacoesResilia;

-- Criar Tabelas
CREATE TABLE Aluno (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Sobrenome VARCHAR(100),
    DataNascimento DATE,
    Email VARCHAR(100),
    Telefone VARCHAR(20),
    StatusAluno VARCHAR(50) -- Adicionando a coluna StatusAluno
);


CREATE TABLE Facilitador (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Sobrenome VARCHAR(100),
    Especialidade VARCHAR(100),
    Contato VARCHAR(20)
);

CREATE TABLE Turma (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    DataInicio DATE,
    DataTermino DATE,
    Localizacao VARCHAR(100)
);

CREATE TABLE Modulo (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Descricao TEXT,
    CargaHoraria INT
);

CREATE TABLE Curso (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Descricao TEXT,
    Duracao VARCHAR(50),
    Requisitos TEXT
);

CREATE TABLE Aluno_Turma (
    AlunoID INT,
    TurmaID INT,
    PRIMARY KEY (AlunoID, TurmaID),
    FOREIGN KEY (AlunoID) REFERENCES Aluno(ID),
    FOREIGN KEY (TurmaID) REFERENCES Turma(ID)
);

CREATE TABLE Turma_Modulo (
    TurmaID INT,
    ModuloID INT,
    PRIMARY KEY (TurmaID, ModuloID),
    FOREIGN KEY (TurmaID) REFERENCES Turma(ID),
    FOREIGN KEY (ModuloID) REFERENCES Modulo(ID)
);

CREATE TABLE Curso_Modulo (
    CursoID INT,
    ModuloID INT,
    PRIMARY KEY (CursoID, ModuloID),
    FOREIGN KEY (CursoID) REFERENCES Curso(ID),
    FOREIGN KEY (ModuloID) REFERENCES Modulo(ID)
);

CREATE TABLE Turma_Facilitador (
    TurmaID INT,
    FacilitadorID INT,
    PRIMARY KEY (TurmaID, FacilitadorID),
    FOREIGN KEY (TurmaID) REFERENCES Turma(ID),
    FOREIGN KEY (FacilitadorID) REFERENCES Facilitador(ID)
);

-- Inserção de Dados
INSERT INTO Aluno (Nome, Sobrenome, DataNascimento, Email, Telefone, StatusAluno)
VALUES 
('João', 'Silva', '1990-05-15', 'joao@example.com', '1234567890', 'Ativo'),
('Maria', 'Santos', '1992-08-20', 'maria@example.com', '987654321', 'Evasao'),
('Pedro', 'Ferreira', '1988-03-10', 'pedro@example.com', '555555555', 'Ativo'),
('Ana', 'Ferreira', '1995-09-20', 'ana@example.com', '111111111', 'Ativo'),
('Carlos', 'Oliveira', '1993-04-12', 'carlos@example.com', '222222222', 'Ativo'),
('Mariana', 'Souza', '1997-11-05', 'mariana@example.com', '333333333', 'Evasao'),
('Rafael', 'Pereira', '1990-07-28', 'rafael@example.com', '444444444', 'Ativo'),
('Juliana', 'Silva', '1998-03-15', 'juliana@example.com', '555555555', 'Ativo');

INSERT INTO Facilitador (Nome, Sobrenome, Especialidade, Contato)
VALUES 
('Maria', 'Souza', 'Desenvolvimento Web', 'maria@example.com'),
('Paula', 'Gomes', 'Ciência de Dados', 'paula@example.com'),
('Rodrigo', 'Martins', 'Programação', 'rodrigo@example.com'),
('Carlos', 'Rocha', 'Ciência de Dados', 'carlos@example.com'),
('Fernanda', 'Oliveira', 'Desenvolvimento Web', 'fernanda@example.com');

INSERT INTO Turma (DataInicio, DataTermino, Localizacao)
VALUES 
('2024-05-01', '2024-07-30', 'São Paulo'),
('2024-08-01', '2024-10-30', 'Rio de Janeiro'),
('2024-09-01', '2024-12-20', 'São Paulo');

INSERT INTO Modulo (Nome, Descricao, CargaHoraria)
VALUES 
('Introdução ao Desenvolvimento Web', 'Introdução aos conceitos básicos de desenvolvimento web.', 40),
('Banco de Dados', 'Introdução aos conceitos de bancos de dados.', 30),
('Machine Learning', 'Fundamentos e aplicações de Machine Learning.', 40);

-- Inserir dados na tabela Curso
INSERT INTO Curso (Nome, Descricao, Duracao, Requisitos)
VALUES 
('Ciência de Dados', 'Curso completo de Ciência de Dados.', '6 meses', 'Conhecimentos básicos de programação'),
('Desenvolvimento Web', 'Curso completo de desenvolvimento web.', '4 meses', 'Nenhum');

-- Relacionar os módulos com os cursos
INSERT INTO Curso_Modulo (CursoID, ModuloID) VALUES
(1, 1),
(1, 2),
(2, 2);

-- Relacionar as turmas com os módulos
INSERT INTO Turma_Modulo (TurmaID, ModuloID) VALUES
(1, 1),
(2, 2);

-- Relacionar os facilitadores com as turmas
INSERT INTO Turma_Facilitador (TurmaID, FacilitadorID) VALUES
(1, 2),
(2, 2),
(2, 3);


-- Relacionar os alunos com as turmas
INSERT INTO Aluno_Turma (AlunoID, TurmaID) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 1);



SELECT c.Nome AS Curso, COUNT(at.AlunoID) AS NumAlunos
FROM Curso c
LEFT JOIN Curso_Modulo cm ON c.ID = cm.CursoID
LEFT JOIN Modulo m ON cm.ModuloID = m.ID
LEFT JOIN Turma_Modulo tm ON m.ID = tm.ModuloID
LEFT JOIN Turma t ON tm.TurmaID = t.ID
LEFT JOIN Aluno_Turma at ON t.ID = at.TurmaID
GROUP BY c.Nome;


SELECT c.Nome AS Curso, AVG(YEAR(CURDATE()) - YEAR(a.DataNascimento)) AS MediaIdade
FROM Curso c
LEFT JOIN Curso_Modulo cm ON c.ID = cm.CursoID
LEFT JOIN Modulo m ON cm.ModuloID = m.ID
LEFT JOIN Turma_Modulo tm ON m.ID = tm.ModuloID
LEFT JOIN Turma t ON tm.TurmaID = t.ID
LEFT JOIN Aluno_Turma at ON t.ID = at.TurmaID
LEFT JOIN Aluno a ON at.AlunoID = a.ID
GROUP BY c.Nome;


SELECT COUNT(*) AS TotalEstudantes FROM Aluno;


SELECT f.Nome, f.Sobrenome, COUNT(tf.TurmaID) AS NumTurmas
FROM Facilitador f
JOIN Turma_Facilitador tf ON f.ID = tf.FacilitadorID
GROUP BY f.ID
HAVING COUNT(tf.TurmaID) > 1;


CREATE VIEW PorcentagemEvasao AS 
SELECT t.ID AS TurmaID,
       SUM(CASE WHEN a.StatusAluno = 'Evasao' THEN 1 ELSE 0 END) / COUNT(at.AlunoID) * 100 AS PercentEvasao 
FROM Turma t 
JOIN Aluno_Turma at ON t.ID = at.TurmaID 
JOIN Aluno a ON at.AlunoID = a.ID 
GROUP BY t.ID;


CREATE TABLE LogStatusUpdate (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    AlunoID INT,
    StatusAntigo VARCHAR(50),
    NovoStatus VARCHAR(50),
    DataHora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (AlunoID) REFERENCES Aluno(ID)
);

DELIMITER //
CREATE TRIGGER After_Update_Status
AFTER UPDATE ON Aluno
FOR EACH ROW
BEGIN
    IF OLD.StatusAluno <> NEW.StatusAluno THEN
        INSERT INTO LogStatusUpdate (AlunoID, StatusAntigo, NovoStatus) VALUES (NEW.ID, OLD.StatusAluno, NEW.StatusAluno);
    END IF;
END;
//
DELIMITER ;

SELECT c.Nome AS Curso, COUNT(at.AlunoID) AS NumAlunos
FROM Curso c
LEFT JOIN Curso_Modulo cm ON c.ID = cm.CursoID
LEFT JOIN Modulo m ON cm.ModuloID = m.ID
LEFT JOIN Turma_Modulo tm ON m.ID = tm.ModuloID
LEFT JOIN Turma t ON tm.TurmaID = t.ID
LEFT JOIN Aluno_Turma at ON t.ID = at.TurmaID
GROUP BY c.Nome;

SELECT * FROM PorcentagemEvasao;

-- DROP DATABASE informacoesResilia;
