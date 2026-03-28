-- v1__create_table_atendente.sql

CREATE TABLE IF NOT EXISTS atendente (
    id         SERIAL PRIMARY KEY,
    pessoa_id  INT NOT NULL,
    matricula  VARCHAR(50) UNIQUE NOT NULL,
    turno      VARCHAR(10) NOT NULL CHECK (turno IN ('manha', 'tarde', 'noite', 'integral')),
    disponivel BOOLEAN NOT NULL DEFAULT TRUE,
    ativo      BOOLEAN NOT NULL DEFAULT TRUE,
    criado_em  TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT fk_atendente_pessoa FOREIGN KEY (pessoa_id) REFERENCES pessoa (id)
);
