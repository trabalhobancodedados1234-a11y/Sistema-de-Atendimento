-- v2__insert_into_atendente_fila.sql

-- Associando atendentes às filas (cada atendente em pelo menos uma fila, testando principal=TRUE/FALSE)
INSERT INTO atendente_fila (atendente_id, fila_id, principal, associado_em) VALUES
(1, 1, TRUE,  NOW()),   -- atendente 1 é principal na fila 1
(1, 3, FALSE, NOW()),   -- atendente 1 também atua na fila 3
(2, 1, FALSE, NOW()),   -- atendente 2 na fila 1 como secundário
(2, 2, TRUE,  NOW()),   -- atendente 2 é principal na fila 2
(3, 2, FALSE, NOW()),   -- atendente 3 na fila virtual
(3, 4, TRUE,  NOW()),   -- atendente 3 é principal na fila telefônica
(4, 3, TRUE,  NOW()),   -- atendente 4 é principal na fila híbrida
(4, 1, FALSE, NOW());   -- atendente 4 também na fila presencial
