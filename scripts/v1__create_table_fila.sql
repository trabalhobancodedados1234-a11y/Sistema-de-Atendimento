-- v1__create_table_fila.sql

CREATE TABLE IF NOT EXISTS fila (
    id                 SERIAL PRIMARY KEY,
    nome               VARCHAR(100) NOT NULL,
    descricao          VARCHAR(255),
    tipo               VARCHAR(10) NOT NULL CHECK (tipo IN ('presencial', 'virtual', 'hibrida')),
    capacidade_maxima  INT NOT NULL,
    tempo_espera_max_min INT NOT NULL,
    ativa              BOOLEAN NOT NULL DEFAULT TRUE,
    criado_em          TIMESTAMP NOT NULL DEFAULT NOW()
);
