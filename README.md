# Sistema de Gerenciamento de Escolas

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

## Modelo Entidade-Relacionamento
![modelagem](https://github.com/davidlgomes/trabalhoModulo2/assets/47571290/46fdd4da-528a-4894-88ec-f0ea0286d392)

## Perguntas
### Todas as perguntas foram respondidas no próprio script
As perguntas feitas para gerar os selects foram:

  1. Qual é o número de alunos inscritos em cada curso?
  2. Qual é a média de idade dos alunos em cada curso?
  3. Qual é o número total de alunos?
  4. Quais facilitadores estão associados a mais de uma turma?
  5. Qual é a porcentagem de evasão em cada turma?


