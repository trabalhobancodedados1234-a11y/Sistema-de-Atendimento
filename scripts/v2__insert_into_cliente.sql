-- v2__insert_into_cliente.sql

-- Clientes pessoa física (pessoas 1 a 6)
INSERT INTO cliente (pessoa_id, codigo, tipo, cnpj, ativo) VALUES
(1, 'CLI-0001', 'pessoa_fisica',   NULL,               TRUE),
(2, 'CLI-0002', 'pessoa_fisica',   NULL,               TRUE),
(3, 'CLI-0003', 'pessoa_fisica',   NULL,               TRUE),
(4, 'CLI-0004', 'pessoa_fisica',   NULL,               TRUE),
(5, 'CLI-0005', 'pessoa_fisica',   NULL,               TRUE),

-- Clientes pessoa jurídica (pessoas 6 a 8, com CNPJ)
(6, 'CLI-0006', 'pessoa_juridica', '12345678000190',   TRUE),
(7, 'CLI-0007', 'pessoa_juridica', '98765432000110',   TRUE),
(8, 'CLI-0008', 'pessoa_juridica', '11223344000155',   FALSE);
