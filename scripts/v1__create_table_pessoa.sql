-- v1__create_table_pessoa.sql

CREATE TABLE IF NOT EXISTS pessoa (
    id        SERIAL PRIMARY KEY,
    nome      VARCHAR(100) NOT NULL,
    email     VARCHAR(100) UNIQUE NOT NULL,
    telefone  VARCHAR(20),
    cpf       VARCHAR(11) UNIQUE NOT NULL,
    data_nasc DATE,
    ativo     BOOLEAN NOT NULL DEFAULT TRUE,
    criado_em TIMESTAMP NOT NULL DEFAULT NOW()
);
