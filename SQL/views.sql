-- 1 -Quais são os alunos matriculados em uma turma específica de um curso em uma instituição específica?


SELECT a.nome
FROM escola.matricula m
JOIN escola.aluno a ON m.id_aluno_fk = a.id_aluno
JOIN escola.turma t ON m.id_turma_fk = t.id_turma_pk
JOIN escola.curso c ON m.id_curso_fk = c.id_curso
JOIN escola.instituicao i ON m.unidade_fk = i.id_instituicao
WHERE t.id_turma_pk = 1
  AND c.id_curso = 1
  AND i.id_instituicao = 1;

-- 2 - Quais são os instrutores que ministram aulas em turmas de um curso específico?

SELECT DISTINCT i.nome_instrutor
FROM escola.instrutor i
JOIN escola.turma t ON i.id_instrutor = t.id_instrutor_fk
JOIN escola.curso c ON t.curso_fk = c.id_curso
WHERE c.id_curso = 3;

-- 3 - Quantos alunos estão matriculados em cada turma de um curso específico?

SELECT t.id_turma_pk, COUNT(m.id_aluno_fk) AS total_alunos
FROM escola.turma t
JOIN escola.matricula m ON t.id_turma_pk = m.id_turma_fk
JOIN escola.curso c ON t.curso_fk = c.id_curso
WHERE c.id_curso = 3
GROUP BY t.id_turma_pk;

-- 4 - Quais são os alunos que estão matriculados em um determinado curso em uma instituição específica?

SELECT a.nome
FROM escola.matricula m
JOIN escola.aluno a ON m.id_aluno_fk = a.id_aluno
JOIN escola.curso c ON m.id_curso_fk = c.id_curso
JOIN escola.instituicao i ON m.unidade_fk = i.id_instituicao
WHERE c.id_curso = 1
  AND i.id_instituicao = 1;

-- 5 - Qual é a porcentagem de evasão em cada turma de um curso específico?

SELECT t.id_turma_pk, porcentagem_evasao
FROM escola.turma t
JOIN porcentagem_evasao_por_turma p ON t.id_turma_pk = p.id_turma_pk
JOIN escola.curso c ON t.curso_fk = c.id_curso
WHERE c.id_curso = 3;

