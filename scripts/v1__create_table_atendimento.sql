-- v1__create_table_atendimento.sql

CREATE TABLE IF NOT EXISTS atendimento (
    id             SERIAL PRIMARY KEY,
    fila_id        INT NOT NULL,
    atendente_id   INT NOT NULL,
    cliente_id     INT NOT NULL,
    data_hora_inicio TIMESTAMP NOT NULL DEFAULT NOW(),
    data_hora_fim  TIMESTAMP,
    status         VARCHAR(20) NOT NULL CHECK (status IN ('aguardando', 'em_andamento', 'concluido', 'cancelado')),
    canal          VARCHAR(20) NOT NULL CHECK (canal IN ('presencial', 'telefone', 'chat', 'whatsapp')),
    observacao     TEXT,
    criado_em      TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT fk_atendimento_fila      FOREIGN KEY (fila_id)      REFERENCES fila (id),
    CONSTRAINT fk_atendimento_atendente FOREIGN KEY (atendente_id) REFERENCES atendente (id),
    CONSTRAINT fk_atendimento_cliente   FOREIGN KEY (cliente_id)   REFERENCES cliente (id)
);
