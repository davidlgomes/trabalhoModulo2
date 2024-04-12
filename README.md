# Sistema de Gerenciamento de Estrutura de Ensino - Resilia

Este é um sistema de gerenciamento de estrutura de ensino desenvolvido para a Resilia, uma empresa fictícia que oferece cursos de tecnologia. O sistema permite o armazenamento de informações sobre alunos, facilitadores, turmas, módulos e cursos, bem como a realização de consultas estratégicas.

## Funcionalidades

- Armazenamento de dados sobre alunos, facilitadores, turmas, módulos e cursos em um banco de dados MySQL.
- Consultas estratégicas para análise de dados:
  - Quantidade total de estudantes cadastrados no sistema.
  - Pessoas facilitadoras que atuam em mais de uma turma.
  - Porcentagem de estudantes com status de evasão por turma.
  - Trigger para registrar alterações no status dos alunos em uma tabela de log.
  - Consulta personalizada que combina informações de pelo menos três tabelas.

## Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes tabelas:

- `Aluno`: Armazena informações sobre os alunos.
- `Facilitador`: Armazena informações sobre os facilitadores.
- `Turma`: Armazena informações sobre as turmas.
- `Modulo`: Armazena informações sobre os módulos dos cursos.
- `Curso`: Armazena informações sobre os cursos.
- `Aluno_Turma`: Relaciona alunos às turmas.
- `Turma_Modulo`: Relaciona turmas aos módulos.
- `Curso_Modulo`: Relaciona cursos aos módulos.
- `Turma_Facilitador`: Relaciona turmas aos facilitadores.
- `LogStatusUpdate`: Registra alterações no status dos alunos.

## Como Usar

1. Execute o script `create_database.sql` para criar o banco de dados e as tabelas no MySQL.
2. Execute o script `insert_data.sql` para inserir dados de teste nas tabelas.
3. Utilize as consultas SQL fornecidas no arquivo `queries.sql` para realizar análises estratégicas.
4. Para mais detalhes sobre a estrutura do banco de dados e as consultas disponíveis, consulte a documentação no arquivo `schema.md`.
