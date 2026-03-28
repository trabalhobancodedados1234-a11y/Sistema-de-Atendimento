# Sistema-de-Atendimento
### 📌 Tema

Sistema de Atendimento

### 🎯 Objetivo Geral

Desenvolver um sistema capaz de gerenciar o fluxo de atendimentos de uma empresa, permitindo o controle eficiente de filas, cadastro de clientes e atendentes, além do registro detalhado de cada atendimento realizado (data, hora, responsável e cliente atendido). O sistema busca otimizar o tempo de espera, melhorar a organização e aumentar a qualidade do atendimento.

### 👥 Público-Alvo

O sistema é voltado para empresas e organizações que realizam atendimentos ao público, como bancos, clínicas, repartições públicas, lojas e centrais de suporte. Também atende gestores e atendentes que precisam organizar e acompanhar o fluxo de clientes de forma prática e eficiente.

Alunos:
Carlos Eduardo Passos Silva
Eduardo Micael Saraiva Maia
Joaquim
Lucas
Renato 

erDiagram

  PESSOA {
    int id PK
    string nome
    string email
    string telefone
    string cpf
    date data_nasc
    boolean ativo
    timestamp criado_em
  }

  ATENDENTE {
    int id PK
    int pessoa_id FK
    string matricula
    enum turno "manha tarde noite integral"
    boolean disponivel
    boolean ativo
    timestamp criado_em
  }

  CLIENTE {
    int id PK
    int pessoa_id FK
    string codigo
    enum tipo "pessoa_fisica pessoa_juridica"
    string cnpj
    boolean ativo
    timestamp criado_em
  }

  FILA {
    int id PK
    string nome
    string descricao
    enum tipo "presencial virtual hibrida"
    int capacidade_maxima
    int tempo_espera_max_min
    boolean ativa
    timestamp criado_em
  }

  ATENDENTE_FILA {
    int id PK
    int atendente_id FK
    int fila_id FK
    boolean principal
    timestamp associado_em
    timestamp desassociado_em
  }

  ATENDIMENTO {
    int id PK
    int fila_id FK
    int atendente_id FK
    int cliente_id FK
    timestamp data_hora_inicio
    timestamp data_hora_fim
    enum status "aguardando em_andamento concluido cancelado"
    enum canal "presencial telefone chat whatsapp"
    text observacao
    timestamp criado_em
  }

  PESSOA        ||--o| ATENDENTE      : "pode ser atendente"
  PESSOA        ||--o| CLIENTE        : "pode ser cliente"
  ATENDENTE     ||--o{ ATENDENTE_FILA : "associado a"
  FILA          ||--o{ ATENDENTE_FILA : "possui"
  FILA          ||--o{ ATENDIMENTO    : "recebe"
  ATENDENTE     ||--o{ ATENDIMENTO    : "realiza"
  CLIENTE       ||--o{ ATENDIMENTO    : "e atendido em"
