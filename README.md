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



![Screenshot 2024-05-13 at 21-19-45 SE SENAC - CNseg M2 Projeto em grupo - 1711051470881_BD0D__ SE SENAC - CNseg M2 Projeto em grupo pdf](https://github.com/davidlgomes/trabalhoModulo2/assets/47571290/53f02dc8-7330-4018-9a71-df7d26169121)
![Screenshot 2024-05-13 at 21-19-58 SE SENAC - CNseg M2 Projeto em grupo - 1711051470881_BD0D__ SE SENAC - CNseg M2 Projeto em grupo pdf](https://github.com/davidlgomes/trabalhoModulo2/assets/47571290/edfeb2b5-2999-41d7-97fc-eb3899477c9f)
![Screenshot 2024-05-13 at 21-20-06 SE SENAC - CNseg M2 Projeto em grupo - 1711051470881_BD0D__ SE SENAC - CNseg M2 Projeto em grupo pdf](https://github.com/davidlgomes/trabalhoModulo2/assets/47571290/58a14b92-84b8-4623-8f96-dfd231a63b1e)
![Screenshot 2024-05-13 at 21-20-11 SE SENAC - CNseg M2 Projeto em grupo - 1711051470881_BD0D__ SE SENAC - CNseg M2 Projeto em grupo pdf](https://github.com/davidlgomes/trabalhoModulo2/assets/47571290/872cd4d4-05c1-441d-bb97-135d590f0127)
![Screenshot 2024-05-13 at 21-20-17 SE SENAC - CNseg M2 Projeto em grupo - 1711051470881_BD0D__ SE SENAC - CNseg M2 Projeto em grupo pdf](https://github.com/davidlgomes/trabalhoModulo2/assets/47571290/4c1bf242-2fca-45b0-9dd5-5c0eb5a524b8)
![Screenshot 2024-05-13 at 21-20-22 SE SENAC - CNseg M2 Projeto em grupo - 1711051470881_BD0D__ SE SENAC - CNseg M2 Projeto em grupo pdf](https://github.com/davidlgomes/trabalhoModulo2/assets/47571290/b7fd6099-6f1b-4fca-9681-799c7f75f028)
![Screenshot 2024-05-13 at 21-20-31 SE SENAC - CNseg M2 Projeto em grupo - 1711051470881_BD0D__ SE SENAC - CNseg M2 Projeto em grupo pdf](https://github.com/davidlgomes/trabalhoModulo2/assets/47571290/f93eef08-0b90-497e-a4f4-197498412976)
![Screenshot 2024-05-13 at 21-20-37 SE SENAC - CNseg M2 Projeto em grupo - 1711051470881_BD0D__ SE SENAC - CNseg M2 Projeto em grupo pdf](https://github.com/davidlgomes/trabalhoModulo2/assets/47571290/082c2781-0207-4a2f-8f8a-78a1858e21ab)
![Screenshot 2024-05-13 at 21-20-41 SE SENAC - CNseg M2 Projeto em grupo - 1711051470881_BD0D__ SE SENAC - CNseg M2 Projeto em grupo pdf](https://github.com/davidlgomes/trabalhoModulo2/assets/47571290/e552d8ee-6830-4a77-832d-20ea709ec8de)
![Screenshot 2024-05-13 at 21-20-49 SE SENAC - CNseg M2 Projeto em grupo - 1711051470881_BD0D__ SE SENAC - CNseg M2 Projeto em grupo pdf](https://github.com/davidlgomes/trabalhoModulo2/assets/47571290/6bb3161e-0505-490b-b391-a82cc87389be)
![Screenshot 2024-05-13 at 21-20-54 SE SENAC - CNseg M2 Projeto em grupo - 1711051470881_BD0D__ SE SENAC - CNseg M2 Projeto em grupo pdf](https://github.com/davidlgomes/trabalhoModulo2/assets/47571290/0a1e962e-ef7d-40a9-bae4-51b94e08a22e)
![Screenshot 2024-05-13 at 21-20-58 SE SENAC - CNseg M2 Projeto em grupo - 1711051470881_BD0D__ SE SENAC - CNseg M2 Projeto em grupo pdf](https://github.com/davidlgomes/trabalhoModulo2/assets/47571290/3095c723-3a4e-4523-956b-0b7c9763949f)
