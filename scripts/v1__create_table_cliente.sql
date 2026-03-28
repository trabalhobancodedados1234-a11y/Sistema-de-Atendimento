-- v1__create_table_cliente.sql

CREATE TABLE IF NOT EXISTS cliente (
    id        SERIAL PRIMARY KEY,
    pessoa_id INT NOT NULL,
    codigo    VARCHAR(50) UNIQUE NOT NULL,
    tipo      VARCHAR(20) NOT NULL CHECK (tipo IN ('pessoa_fisica', 'pessoa_juridica')),
    cnpj      VARCHAR(14) UNIQUE,
    ativo     BOOLEAN NOT NULL DEFAULT TRUE,
    criado_em TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT fk_cliente_pessoa FOREIGN KEY (pessoa_id) REFERENCES pessoa (id)
);
