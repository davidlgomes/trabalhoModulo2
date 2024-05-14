CREATE OR REPLACE PROCEDURE matricular_aluno_com_verificacao(
    _id_aluno INT,
    _id_turma INT
)
LANGUAGE plpgsql
AS $$
DECLARE
    turma_capacidade INT;
    vagas_ocupadas INT;
    unidade_id INT;
    curso_id INT;
BEGIN
    -- Assume que existe uma coluna 'capacidade' na tabela 'turma'
    SELECT capacidade INTO turma_capacidade FROM escola.turma WHERE id_turma_pk = _id_turma;

    -- Verifica se o aluno já está matriculado na turma
    IF EXISTS (SELECT 1 FROM escola.matricula WHERE id_turma_fk = _id_turma AND id_aluno_fk = _id_aluno) THEN
        RAISE EXCEPTION 'O aluno já está matriculado nesta turma.';
    ELSE
        -- Obtém o ID da unidade
        SELECT id_instituicao INTO unidade_id FROM escola.instituicao LIMIT 1;

        -- Obtém o ID do curso associado à turma
        SELECT curso_fk INTO curso_id FROM escola.turma WHERE id_turma_pk = _id_turma;

        -- Conta quantas matrículas já existem para essa turma
        SELECT COUNT(*) INTO vagas_ocupadas FROM escola.matricula WHERE id_turma_fk = _id_turma;

        -- Verifica se ainda há vagas
        IF vagas_ocupadas < turma_capacidade THEN
            -- Insere a matrícula se houver vaga
            INSERT INTO escola.matricula (unidade_fk, id_curso_fk, id_turma_fk, id_aluno_fk, status) 
            VALUES (unidade_id, curso_id, _id_turma, _id_aluno, 'Ativo');

            -- Incrementa a quantidade de alunos na turma (assumindo que 'capacidade' representa o número máximo de alunos)
            UPDATE escola.turma
            SET capacidade = capacidade + 1
            WHERE id_turma_pk = _id_turma;
        ELSE
            -- Lança um erro se a turma estiver cheia
            RAISE EXCEPTION 'Não há vagas disponíveis nesta turma.';
        END IF;
    END IF;
END;
$$;
