-- v2__insert_into_atendimento.sql

INSERT INTO atendimento (fila_id, atendente_id, cliente_id, data_hora_inicio, data_hora_fim, status, canal, observacao) VALUES

-- Atendimentos concluídos
(1, 1, 1, NOW() - INTERVAL '3 days', NOW() - INTERVAL '3 days' + INTERVAL '30 minutes', 'concluido',    'presencial', 'Cliente atendido sem intercorrências.'),
(2, 2, 2, NOW() - INTERVAL '2 days', NOW() - INTERVAL '2 days' + INTERVAL '15 minutes', 'concluido',    'chat',       'Dúvida resolvida sobre contrato.'),
(4, 3, 3, NOW() - INTERVAL '1 day',  NOW() - INTERVAL '1 day'  + INTERVAL '20 minutes', 'concluido',    'telefone',   'Reclamação registrada e encaminhada.'),
(3, 4, 4, NOW() - INTERVAL '5 days', NOW() - INTERVAL '5 days' + INTERVAL '10 minutes', 'concluido',    'whatsapp',   NULL),

-- Atendimento em andamento
(1, 1, 5, NOW() - INTERVAL '10 minutes', NULL, 'em_andamento', 'presencial', 'Cliente aguardando documentação.'),
(2, 2, 6, NOW() - INTERVAL '5 minutes',  NULL, 'em_andamento', 'chat',       NULL),

-- Atendimentos aguardando
(3, 4, 7, NOW(), NULL, 'aguardando', 'presencial', NULL),
(4, 3, 8, NOW(), NULL, 'aguardando', 'telefone',   'Cliente ligou e está na espera.'),

-- Atendimento cancelado
(1, 1, 3, NOW() - INTERVAL '4 days', NOW() - INTERVAL '4 days' + INTERVAL '2 minutes', 'cancelado', 'presencial', 'Cliente desistiu da fila.');
