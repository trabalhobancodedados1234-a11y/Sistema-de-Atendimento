-- v2__update_delete_validacao.sql

-- ========================
-- UPDATE
-- ========================

-- 1. Marcar atendente como indisponível (ex: saiu para almoço)
UPDATE atendente
SET disponivel = FALSE
WHERE matricula = 'MAT-001';

-- 2. Concluir um atendimento que estava em andamento
UPDATE atendimento
SET status = 'concluido',
    data_hora_fim = NOW()
WHERE status = 'em_andamento'
  AND atendente_id = 1;

-- 3. Atualizar e-mail de uma pessoa
UPDATE pessoa
SET email = 'carlos.silva.novo@email.com'
WHERE cpf = '11122233300';

-- 4. Desativar um cliente inativo
UPDATE cliente
SET ativo = FALSE
WHERE codigo = 'CLI-0005';

-- 5. Marcar atendente como desassociado de uma fila
UPDATE atendente_fila
SET desassociado_em = NOW()
WHERE atendente_id = 3 AND fila_id = 2;


-- ========================
-- DELETE
-- ========================

-- 1. Remover fila de teste (a inativa)
DELETE FROM fila
WHERE nome = 'Fila Inativa Teste';

-- 2. Remover um atendimento cancelado específico
DELETE FROM atendimento
WHERE status = 'cancelado'
  AND cliente_id = 3;
