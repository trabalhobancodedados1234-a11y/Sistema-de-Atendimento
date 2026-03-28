-- v1__create_table_atendente_fila.sql

CREATE TABLE IF NOT EXISTS atendente_fila (
    id             SERIAL PRIMARY KEY,
    atendente_id   INT NOT NULL,
    fila_id        INT NOT NULL,
    principal      BOOLEAN NOT NULL DEFAULT FALSE,
    associado_em   TIMESTAMP NOT NULL DEFAULT NOW(),
    desassociado_em TIMESTAMP,

    CONSTRAINT fk_atendente_fila_atendente FOREIGN KEY (atendente_id) REFERENCES atendente (id),
    CONSTRAINT fk_atendente_fila_fila      FOREIGN KEY (fila_id)      REFERENCES fila (id)
);
