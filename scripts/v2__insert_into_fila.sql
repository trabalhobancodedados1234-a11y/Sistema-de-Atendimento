-- v2__insert_into_fila.sql

INSERT INTO fila (nome, descricao, tipo, capacidade_maxima, tempo_espera_max_min, ativa) VALUES
('Fila Presencial Geral',  'Atendimento presencial no balcão',         'presencial', 30, 60,  TRUE),
('Fila Virtual Suporte',   'Suporte remoto via chat e whatsapp',       'virtual',    50, 30,  TRUE),
('Fila Híbrida Premium',   'Atendimento prioritário presencial/chat',  'hibrida',    20, 15,  TRUE),
('Fila Telefônica',        'Atendimento exclusivo por telefone',       'virtual',    40, 45,  TRUE),
('Fila Inativa Teste',     'Fila desativada para testes',              'presencial', 10, 120, FALSE);
