-- v2__insert_into_atendente.sql

-- Atendentes (pessoas 7 a 10, que não são clientes)
INSERT INTO atendente (pessoa_id, matricula, turno, disponivel, ativo) VALUES
(7,  'MAT-001', 'manha',    TRUE,  TRUE),
(8,  'MAT-002', 'tarde',    TRUE,  TRUE),
(9,  'MAT-003', 'noite',    FALSE, TRUE),
(10, 'MAT-004', 'integral', TRUE,  TRUE);
