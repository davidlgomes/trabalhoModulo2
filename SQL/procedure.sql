CREATE OR REPLACE PROCEDURE matricular_aluno_com_verificacao(
    _id_aluno INT,
    _id_turma INT
)
LANGUAGE plpgsql
AS $$
DECLARE
    turma_capacidade INT;
    vagas_ocupadas INT;
    qtde_alunos_atual INT;
BEGIN
    -- Assume que existe uma coluna 'capacidade' na tabela 'turma'
    SELECT capacidade INTO turma_capacidade FROM escola.turma WHERE id_turma_pk = _id_turma;

    -- Verifica se o aluno já está matriculado na turma
    IF EXISTS (SELECT 1 FROM escola.matricula WHERE id_turma_fk = _id_turma AND id_aluno_fk = _id_aluno) THEN
        RAISE EXCEPTION 'O aluno já está matriculado nesta turma.';
    ELSE
        -- Conta quantas matrículas já existem para essa turma
        SELECT COUNT(*) INTO vagas_ocupadas FROM escola.matricula WHERE id_turma_fk = _id_turma;

        -- Verifica se ainda há vagas
        IF vagas_ocupadas < turma_capacidade THEN
            -- Insere a matrícula se houver vaga
            INSERT INTO escola.matricula (id_turma_fk, id_aluno_fk, status) 
            VALUES (_id_turma, _id_aluno, 'Ativo');

            -- Obtém a quantidade atual de alunos na turma
            SELECT qtde_alunos INTO qtde_alunos_atual FROM escola.turma WHERE id_turma_pk = _id_turma;

            -- Incrementa a quantidade de alunos na turma
            UPDATE escola.turma
            SET qtde_alunos = qtde_alunos_atual + 1
            WHERE id_turma_pk = _id_turma;
        ELSE
            -- Lança um erro se a turma estiver cheia
            RAISE EXCEPTION 'Não há vagas disponíveis nesta turma.';
        END IF;
    END IF;
END;
$$;
