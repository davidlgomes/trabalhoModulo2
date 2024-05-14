# Sistema de Gerenciamento de Escolas

Este é um sistema de gerenciamento de estrutura de ensino desenvolvido para a Resilia, uma empresa fictícia que oferece cursos de tecnologia. O sistema permite o armazenamento de informações sobre alunos, facilitadores, turmas, módulos e cursos, bem como a realização de consultas estratégicas.

## Funcionalidades

- Registro de Alunos: Permite o cadastro de alunos, incluindo informações como nome, CPF, idade, gênero, e-mail e endereço.
- Registro de Cursos: Permite o cadastro de cursos oferecidos pela instituição, incluindo informações como nome do curso, duração, área e modalidade (presencial ou EAD).
- Registro de Instrutores: Permite o cadastro de instrutores que ministram aulas nos cursos, incluindo informações como nome, especialidade e CPF.
- Registro de Instituições: Permite o cadastro das unidades da instituição de ensino, incluindo informações como endereço e nome da unidade.
- Gerenciamento de Matrículas: Permite o registro das matrículas dos alunos nos cursos, associando cada aluno a uma turma específica de um curso.
- Registro de Turmas e Módulos: Permite o cadastro de turmas e módulos dos cursos, incluindo informações como sala, modalidade, número de módulo, quantidade de aulas e carga horária.
- Registro de Notas: Permite o registro das notas dos alunos em cada módulo do curso, facilitando o acompanhamento do desempenho acadêmico.
- Rastreamento de Atualizações: Inclui um mecanismo de rastreamento de atualizações de status das matrículas dos alunos, registrando as mudanças de status ao longo do tempo.

## Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes tabelas:
- `endereço`: Armazena informações sobre endereços, como rua, número, cidade, CEP, estado e país. Utilizada para registrar os endereços dos alunos, instrutores e instituições.
- `modalidade`: Armazena os tipos de modalidade de curso, como presencial ou EAD (Ensino a Distância). Utilizada para diferenciar o tipo de modalidade oferecida em uma turma de curso.
- `disciplina`: Armazena informações sobre as disciplinas oferecidas nos cursos. Utilizada para registrar as disciplinas ministradas em cada módulo de curso.
- `curso`: Armazena informações sobre os cursos oferecidos pela instituição, como nome do curso, duração, área e número total de dias. Utilizada para registrar os cursos disponíveis.
- `instrutor`: Armazena informações sobre os instrutores que ministram as aulas nos cursos, como nome, especialidade e CPF. Utilizada para registrar os dados dos instrutores.
- `aluno`: Armazena informações sobre os alunos matriculados nos cursos, como nome, CPF, idade, gênero, email e ID de endereço. Utilizada para registrar os dados dos alunos.
- `instituição`: Armazena informações sobre as instituições de ensino, como endereço, nome da unidade e ID de endereço. Utilizada para registrar os dados das instituições.
- `turma`: Armazena informações sobre as turmas dos cursos, como sala, modalidade, ID de instrutor e ID de curso. Utilizada para registrar as turmas disponíveis para os cursos.
- `modulo`: Armazena informações sobre os módulos dos cursos, como número do módulo, quantidade de aulas, carga horária e ID de disciplina. Utilizada para registrar os módulos de cada curso.
- `matricula`: Armazena informações sobre as matrículas dos alunos nos cursos, como ID da unidade, ID do curso, ID da turma, ID do aluno e status da matrícula. Utilizada para registrar as matrículas dos alunos nos cursos.
- `nota`: Armazena informações sobre as notas dos alunos em cada módulo do curso, como ID da matrícula e ID do módulo. Utilizada para registrar as notas dos alunos em cada módulo.
- `log_atualizacao_status_estudante`: Armazena registros de atualizações de status das matrículas dos alunos, como ID do log, ID do estudante, status novo e data de atualização. Utilizada para registrar as atualizações de status das matrículas.
## Modelo Entidade-Relacionamento
![image](https://github.com/davidlgomes/trabalhoModulo2/assets/163933962/15d57cef-476b-4407-a1ae-bfe321445d7c)


## Perguntas
### Todas as perguntas foram respondidas no próprio script
As perguntas feitas para gerar os selects foram:

#### 1 - Quantidade de alunos
#### 2 - Professores que atuam em mais de uma turma 
#### 3 - Porcentagem Evasão por turma
#### 4 - Atualização a cada update de status de matrícula
#### 5 - Quais são os alunos matriculados em uma turma específica de um curso em uma instituição específica?
#### 6 - Quais são os instrutores que ministram aulas em turmas de um curso específico?
#### 7 - Quantos alunos estão matriculados em cada turma de um curso específico?
#### 8 - Quais são os alunos que estão matriculados em um determinado curso em uma instituição específica?
#### 9 - Qual é a porcentagem de evasão em cada turma de um curso específico?

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
