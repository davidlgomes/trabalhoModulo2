-- Removendo as tabelas se elas existirem
DROP TABLE IF EXISTS escola.nota;
DROP TABLE IF EXISTS escola.matricula;
DROP TABLE IF EXISTS escola.turma;
DROP TABLE IF EXISTS escola.modulo;
DROP TABLE IF EXISTS escola.curso;
DROP TABLE IF EXISTS escola.disciplina;
DROP TABLE IF EXISTS escola.modalidade;
DROP TABLE IF EXISTS escola.instrutor;
DROP TABLE IF EXISTS escola.aluno;
DROP TABLE IF EXISTS escola.endereco;

-- Criando as tabelas na ordem correta
CREATE TABLE escola.endereco (
    id_endereco SERIAL PRIMARY KEY,
    rua VARCHAR(255) NOT NULL,
    numero INTEGER NOT NULL,
    cidade VARCHAR(255) NOT NULL,
    cep VARCHAR(9) NOT NULL,
    estado VARCHAR(100) NOT NULL,
    pais VARCHAR(100) NOT NULL
);

CREATE TABLE escola.modalidade (
    id_modalidade SERIAL PRIMARY KEY,
    tipo_modalidade VARCHAR(200)
);

CREATE TABLE escola.disciplina (
    id_disciplina SERIAL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL
);

CREATE TABLE escola.curso (
    id_curso SERIAL PRIMARY KEY,
    nome_curso VARCHAR(200) NOT NULL,
    duracao VARCHAR(100) NOT NULL,
    total_dias INTEGER NOT NULL,
    area VARCHAR(240)
);

CREATE TABLE escola.instrutor (
    id_instrutor SERIAL PRIMARY KEY,
    nome_instrutor VARCHAR(255) NOT NULL,
    especialidade VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    id_endereco_fk INT NOT NULL,
    FOREIGN KEY (id_endereco_fk) REFERENCES escola.endereco(id_endereco)
);

CREATE TABLE escola.aluno (
    id_aluno SERIAL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    cpf BIGINT NOT NULL,
    idade INTEGER NOT NULL,
    genero VARCHAR(100) NOT NULL,
    email VARCHAR(250) NOT NULL,
    id_endereco_fk INT NOT NULL,
    FOREIGN KEY (id_endereco_fk) REFERENCES escola.endereco(id_endereco)
);

CREATE TABLE escola.instituicao (
    id_instituicao SERIAL PRIMARY KEY,
    endereco VARCHAR(250) NOT NULL,
    nome_unidade VARCHAR(200) NOT NULL,
    id_endereco_fk INTEGER NOT NULL,
    FOREIGN KEY (id_endereco_fk) REFERENCES escola.endereco(id_endereco)
);

CREATE TABLE escola.turma (
    id_turma_pk SERIAL PRIMARY KEY,
    curso_fk INTEGER NOT NULL,
    sala INTEGER NOT NULL,
    modalidade_fk INTEGER,
    id_instrutor_fk INT,
    FOREIGN KEY (curso_fk) REFERENCES escola.curso(id_curso),
    FOREIGN KEY (modalidade_fk) REFERENCES escola.modalidade(id_modalidade),
    FOREIGN KEY (id_instrutor_fk) REFERENCES escola.instrutor(id_instrutor)
);

CREATE TABLE escola.modulo (
    id_modulo SERIAL PRIMARY KEY,
    curso_fk INTEGER NOT NULL,
    numero_modulo INTEGER NOT NULL,
    qt_aula INTEGER NOT NULL,
    carga_horaria INTEGER NOT NULL,
    id_disciplina_fk INTEGER NOT NULL,
    FOREIGN KEY (curso_fk) REFERENCES escola.curso(id_curso),
    FOREIGN KEY (id_disciplina_fk) REFERENCES escola.disciplina(id_disciplina)
);

CREATE TABLE escola.matricula (
    id_matricula SERIAL PRIMARY KEY,

    unidade_fk INTEGER NOT NULL,
    id_curso_fk INTEGER NOT NULL,
    id_turma_fk INTEGER NOT NULL,
    id_aluno_fk INTEGER NOT NULL,
    status VARCHAR(100) NOT NULL,
    FOREIGN KEY (unidade_fk) REFERENCES escola.instituicao(id_instituicao),
    FOREIGN KEY (id_curso_fk) REFERENCES escola.curso(id_curso),
    FOREIGN KEY (id_turma_fk) REFERENCES escola.turma(id_turma_pk),
    FOREIGN KEY (id_aluno_fk) REFERENCES escola.aluno(id_aluno)
);

CREATE TABLE escola.nota (
    id_nota SERIAL PRIMARY KEY,
    nota_aluno FLOAT,
    id_matricula_fk INTEGER,
    id_modulo_fk INTEGER,
    FOREIGN KEY (id_matricula_fk) REFERENCES escola.matricula(id_matricula),
    FOREIGN KEY (id_modulo_fk) REFERENCES escola.modulo(id_modulo)
);
