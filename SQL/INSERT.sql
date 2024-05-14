-- Inserções de endereços
INSERT INTO escola.endereco (rua, numero, cidade, cep, estado, pais) 
VALUES 
('Rua dos Estudantes', 123, 'Cidade A', '12345-678', 'Estado A', 'País A'),
('Avenida das Aulas', 456, 'Cidade B', '98765-432', 'Estado B', 'País B'),
('Rua da Sabedoria', 789, 'Cidade C', '54321-876', 'Estado C', 'País C'),
('Avenida do Conhecimento', 101, 'Cidade D', '87654-321', 'Estado D', 'País D'),
('Rua das Descobertas', 222, 'Cidade E', '23456-789', 'Estado E', 'País E'),
('Avenida da Educação', 333, 'Cidade F', '67890-123', 'Estado F', 'País F'),
('Rua dos Livros', 444, 'Cidade G', '87654-321', 'Estado G', 'País G'),
('Avenida do Saber', 555, 'Cidade H', '34567-890', 'Estado H', 'País H'),
('Rua do Progresso', 666, 'Cidade I', '98765-432', 'Estado I', 'País I'),
('Avenida dos Conhecimentos', 777, 'Cidade J', '23456-789', 'Estado J', 'País J');

INSERT INTO escola.aluno (nome, cpf, idade, genero, email, id_endereco_fk) VALUES
('João Silva', '12345678900', 20, 'Masculino', 'joao.silva@email.com', 1),
('Maria Santos', '23456789011', 25, 'Feminino', 'maria.santos@email.com', 2),
('Pedro Oliveira', '34567890122', 30, 'Masculino', 'pedro.oliveira@email.com', 3),
('Ana Souza', '45678901233', 22, 'Feminino', 'ana.souza@email.com', 4),
('Lucas Pereira', '56789012344', 27, 'Masculino', 'lucas.pereira@email.com', 5),
('Juliana Costa', '67890123455', 24, 'Feminino', 'juliana.costa@email.com', 6),
('Marcos Santos', '78901234566', 29, 'Masculino', 'marcos.santos@email.com', 7),
('Carla Lima', '89012345677', 26, 'Feminino', 'carla.lima@email.com', 8),
('Fernando Oliveira', '90123456788', 23, 'Masculino', 'fernando.oliveira@email.com', 9),
('Beatriz Almeida', '11234567899', 28, 'Feminino', 'beatriz.almeida@email.com', 10),
('Rodrigo Pereira', '22345678900', 21, 'Masculino', 'rodrigo.pereira@email.com', 1),
('Patrícia Costa', '33456789011', 25, 'Feminino', 'patricia.costa@email.com', 2),
('Gustavo Santos', '44567890122', 30, 'Masculino', 'gustavo.santos@email.com', 3),
('Camila Souza', '55678901233', 22, 'Feminino', 'camila.souza@email.com', 4),
('Mariana Pereira', '66789012344', 27, 'Feminino', 'mariana.pereira@email.com', 5),
('Rafael Lima', '77890123455', 24, 'Masculino', 'rafael.lima@email.com', 6),
('Aline Costa', '88901234566', 29, 'Feminino', 'aline.costa@email.com', 7),
('Bruno Oliveira', '99012345677', 26, 'Masculino', 'bruno.oliveira@email.com', 8),
('Tatiane Almeida', '10123456788', 23, 'Feminino', 'tatiane.almeida@email.com', 9),
('Vinícius Santos', '21234567899', 28, 'Masculino', 'vinicius.santos@email.com', 10),
('Paula Rodrigues', '12334567890', 22, 'Feminino', 'paula.rodrigues@email.com', 1),
('Leandro Silva', '23445678901', 27, 'Masculino', 'leandro.silva@email.com', 2),
('Carolina Oliveira', '34556789012', 25, 'Feminino', 'carolina.oliveira@email.com', 3),
('Ricardo Santos', '45667890123', 31, 'Masculino', 'ricardo.santos@email.com', 4),
('Larissa Souza', '56778901234', 23, 'Feminino', 'larissa.souza@email.com', 5),
('Guilherme Pereira', '67890123455', 28, 'Masculino', 'guilherme.pereira@email.com', 6),
('Fernanda Costa', '78901234566', 24, 'Feminino', 'fernanda.costa@email.com', 7),
('Mateus Lima', '89012345677', 29, 'Masculino', 'mateus.lima@email.com', 8),
('Luana Almeida', '90123456788', 26, 'Feminino', 'luana.almeida@email.com', 9),
('Douglas Santos', '12345678900', 30, 'Masculino', 'douglas.santos@email.com', 10),
('Vanessa Rodrigues', '23456789011', 25, 'Feminino', 'vanessa.rodrigues@email.com', 1),
('Felipe Silva', '34567890122', 22, 'Masculino', 'felipe.silva@email.com', 2),
('Amanda Oliveira', '45678901233', 27, 'Feminino', 'amanda.oliveira@email.com', 3),
('Bruna Santos', '56789012344', 24, 'Feminino', 'bruna.santos@email.com', 4),
('Marcelo Souza', '67890123455', 29, 'Masculino', 'marcelo.souza@email.com', 5),
('Isabela Pereira', '78901234566', 26, 'Feminino', 'isabela.pereira@email.com', 6),
('Thiago Costa', '89012345677', 31, 'Masculino', 'thiago.costa@email.com', 7),
('Natália Lima', '90123456788', 23, 'Feminino', 'natalia.lima@email.com', 8),
('Roberto Almeida', '11234567899', 28, 'Masculino', 'roberto.almeida@email.com', 9),
('Sandra Santos', '22345678900', 24, 'Feminino', 'sandra.santos@email.com', 10),
('Cristiano Silva', '33456789011', 29, 'Masculino', 'cristiano.silva@email.com', 1),
('Tatiana Oliveira', '44567890122', 26, 'Feminino', 'tatiana.oliveira@email.com', 2),
('Luciana Santos', '55678901233', 31, 'Feminino', 'luciana.santos@email.com', 3),
('Robson Souza', '66789012344', 27, 'Masculino', 'robson.souza@email.com', 4),
('Vivian Pereira', '77890123455', 24, 'Feminino', 'vivian.pereira@email.com', 5),
('Rogério Lima', '99887766554', 32, 'Masculino', 'rogerio.lima@email.com', 8),
('Eduarda Almeida', '11223344556', 21, 'Feminino', 'eduarda.almeida@email.com', 9),
('Márcio Costa', '33445566778', 30, 'Masculino', 'marcio.costa@email.com', 10),
('Sônia Pereira', '55667788990', 25, 'Feminino', 'sonia.pereira@email.com', 2),
('Diego Oliveira', '77889900112', 28, 'Masculino', 'diego.oliveira@email.com', 3),
('Camila Santos', '99001122334', 23, 'Feminino', 'camila.santos@email.com', 4),
('Rafaela Souza', '11223344556', 29, 'Feminino', 'rafaela.souza@email.com', 5),
('Anderson Silva', '33445566778', 24, 'Masculino', 'anderson.silva@email.com', 6),
('Aline Costa', '55667788990', 31, 'Feminino', 'aline.costa@email.com', 7),
('Thiago Oliveira', '77889900112', 26, 'Masculino', 'thiago.oliveira@email.com', 8),
('Lucas Santos', '99001122334', 31, 'Masculino', 'lucas.santos@email.com', 9),
('Mariana Souza', '11223344556', 27, 'Feminino', 'mariana.souza@email.com', 10),
('Ronaldo Lima', '33445566778', 32, 'Masculino', 'ronaldo.lima@email.com', 1),
('Priscila Almeida', '55667788990', 22, 'Feminino', 'priscila.almeida@email.com', 2),
('Felipe Costa', '77889900112', 27, 'Masculino', 'felipe.costa@email.com', 3),
('Luiza Oliveira', '99001122334', 24, 'Feminino', 'luiza.oliveira@email.com', 4),
('Matheus Santos', '11223344556', 29, 'Masculino', 'matheus.santos@email.com', 5);

-- Inserções de instrutores
INSERT INTO escola.instrutor (nome_instrutor, especialidade, cpf, id_endereco_fk) 
VALUES 
('José Silva', 'Saúde', '12345678900', 10),
('Mariana Oliveira', 'Saúde', '23456789011', 4),
('Carlos Santos', 'Saúde', '34567890122', 5),
('Amanda Costa', 'Saúde', '45678901233', 3),
('Rafael Pereira', 'Saúde', '56789012344', 5),
('Lucas Souza', 'Administração', '67890123455', 6),
('Fernanda Almeida', 'Administração', '78901234566', 3),
('Rodrigo Lima', 'Administração', '89012345677', 6),
('Patrícia Santos', 'Administração', '90123456788', 1),
('Gabriel Oliveira', 'Administração', '11234567899', 3),
('Ana Silva', 'Tecnologia da Informação', '22345678900', 1),
('Thiago Costa', 'Tecnologia da Informação', '33456789011', 2),
('Juliana Souza', 'Tecnologia da Informação', '44567890122', 3),
('Marcos Santos', 'Tecnologia da Informação', '55678901233', 4),
('Carla Oliveira', 'Tecnologia da Informação', '66789012344', 5);

-- Inserções de cursos
INSERT INTO escola.curso (nome_curso, duracao, total_dias, area) 
VALUES 
('Técnico de Administração', '2 anos', 730, 'Administração'),
('Técnico de Informática', '2 anos', 730, 'Informática'),
('Técnico de Enfermagem', '2 anos', 730, 'Saúde');

-- Inserções de instituições
INSERT INTO escola.instituicao (endereco, nome_unidade, id_endereco_fk) 
VALUES 
('Endereço da Unidade Sul', 'Unidade Sul', 1),
('Endereço da Unidade Norte', 'Unidade Norte', 2),
('Endereço da Unidade Oeste', 'Unidade Oeste', 3);

-- Inserções de disciplinas
INSERT INTO escola.disciplina (nome) 
VALUES 
('Hard Skill'),
('Soft Skill');

-- Inserções de módulos para os cursos
INSERT INTO escola.modulo (curso_fk, numero_modulo, qt_aula, carga_horaria, id_disciplina_fk) 
VALUES 
-- Módulos do curso 1 (Técnico de Administração)
(1, 1, 20, 60, 1),
(1, 2, 20, 60, 1),
(1, 3, 20, 60, 1),
(1, 4, 20, 60, 1),
(1, 5, 20, 60, 1),
-- Módulos do curso 2 (Técnico de Informática)
(2, 1, 20, 60, 1),
(2, 2, 20, 60, 1),
(2, 3, 20, 60, 1),
(2, 4, 20, 60, 1),
(2, 5, 20, 60, 1),
-- Módulos do curso 3 (Técnico de Enfermagem)
(3, 1, 20, 60, 1),
(3, 2, 20, 60, 1),
(3, 3, 20, 60, 1),
(3, 4, 20, 60, 1),
(3, 5, 20, 60, 1);

-- Inserções de modalidades de curso
INSERT INTO escola.modalidade (tipo_modalidade) 
VALUES 
('Presencial'),
('EAD');

-- Inserções de turmas para os turmas
INSERT INTO escola.turma (curso_fk, sala, modalidade_fk, id_instrutor_fk, qtde_alunos, capacidade) 
VALUES 
-- Turmas do curso 1 (Técnico de Administração)
(1, 101, 1, 7, 10, 50),
(1, 102, 2, 7, 10, 50),
-- Turmas do curso 2 (Técnico de Informática)
(2, 201, 1, 14, 10, 50),
(2, 202, 2, 15, 10, 50),
-- Turmas do curso 3 (Técnico de Enfermagem)
(3, 301, 1, 3, 10, 50),
(3, 302, 2, 3, 10, 50);

-- Matrículas dos cursos para as turmas
INSERT INTO escola.matricula (unidade_fk, id_curso_fk, id_turma_fk, id_aluno_fk, status) 
VALUES 
-- Matrículas do Técnico de Administração - Presencial
(1, 1, 1, 1, 'Evasão'),
(1, 1, 1, 2, 'Ativo'),
(1, 1, 1, 3, 'Ativo'),
(1, 1, 1, 4, 'Ativo'),
(1, 1, 1, 5, 'Evasão'),
(1, 1, 1, 6, 'Ativo'),
(1, 1, 1, 7, 'Ativo'),
(1, 1, 1, 8, 'Evasão'),
(1, 1, 1, 9, 'Ativo'),
(1, 1, 1, 10, 'Ativo'),
-- Matrículas do Técnico de Administração - EAD
(1, 1, 2, 11, 'Ativo'),
(1, 1, 2, 12, 'Evasão'),
(1, 1, 2, 13, 'Ativo'),
(1, 1, 2, 14, 'Evasão'),
(1, 1, 2, 15, 'Ativo'),
(1, 1, 2, 16, 'Ativo'),
(1, 1, 2, 17, 'Ativo'),
(1, 1, 2, 18, 'Ativo'),
(1, 1, 2, 19, 'Ativo'),
(1, 1, 2, 20, 'Ativo'),
-- Matrículas do Técnico de Informática - Presencial
(2, 2, 3, 21, 'Evasão'),
(2, 2, 3, 22, 'Ativo'),
(2, 2, 3, 23, 'Evasão'),
(2, 2, 3, 24, 'Evasão'),
(2, 2, 3, 25, 'Evasão'),
(2, 2, 3, 26, 'Evasão'),
(2, 2, 3, 27, 'Evasão'),
(2, 2, 3, 28, 'Ativo'),
(2, 2, 3, 29, 'Ativo'),
(2, 2, 3, 30, 'Ativo'),
-- Matrículas do Técnico de Informática - EAD
(2, 2, 4, 31, 'Evasão'),
(2, 2, 4, 32, 'Ativo'),
(2, 2, 4, 33, 'Evasão'),
(2, 2, 4, 34, 'Ativo'),
(2, 2, 4, 35, 'Ativo'),
(2, 2, 4, 36, 'Ativo'),
(2, 2, 4, 37, 'Ativo'),
(2, 2, 4, 38, 'Ativo'),
(2, 2, 4, 39, 'Ativo'),
(2, 2, 4, 40, 'Ativo'),
-- Matrículas do Técnico de Enfermagem - Presencial
(3, 3, 5, 41, 'Ativo'),
(3, 3, 5, 42, 'Evasão'),
(3, 3, 5, 43, 'Ativo'),
(3, 3, 5, 44, 'Ativo'),
(3, 3, 5, 45, 'Ativo'),
(3, 3, 5, 46, 'Evasão'),
(3, 3, 5, 47, 'Ativo'),
(3, 3, 5, 48, 'Ativo'),
(3, 3, 5, 49, 'Ativo'),
(3, 3, 5, 50, 'Ativo'),
-- Matrículas do Técnico de Enfermagem - EAD
(3, 3, 6, 51, 'Ativo'),
(3, 3, 6, 52, 'Ativo'),
(3, 3, 6, 53, 'Evasão'),
(3, 3, 6, 54, 'Ativo'),
(3, 3, 6, 55, 'Ativo'),
(3, 3, 6, 56, 'Evasão'),
(3, 3, 6, 57, 'Ativo'),
(3, 3, 6, 58, 'Evasão'),
(3, 3, 6, 59, 'Ativo'),
(3, 3, 6, 60, 'Ativo');
