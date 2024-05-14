-- Criação do trigger
CREATE TRIGGER atualizacao_status_estudante_trigger
AFTER UPDATE OF status ON escola.matricula
FOR EACH ROW
EXECUTE FUNCTION log_atualizacao_status_estudante();

UPDATE escola.matricula
SET status = 'Evasão'
WHERE id_matricula = 9;

-- 4 - Atualização a cada update de status de matrícula	
SELECT * FROM escola.log_atualizacao_status_estudante;

