# Modelagem do TaskFlow

## 1. Domínio do sistema

O TaskFlow é um sistema de gerenciamento de tarefas que permite aos
usuários organizar projetos e acompanhar as tarefas relacionadas a cada
projeto. Cada usuário pode possuir vários projetos, e cada projeto pode
conter várias tarefas.

## 2. Entidades

### Usuario
Representa uma pessoa que utiliza o sistema.

- id: identificador único
- nome: nome do usuário
- email: endereço de e-mail

### Projeto
Representa um projeto criado por um usuário.

- id: identificador único
- nome: nome do projeto
- descricao: descrição do projeto
- usuarioId: identificador do usuário responsável

### Tarefa
Representa uma atividade que deve ser realizada dentro de um projeto.

- id: identificador único
- titulo: título da tarefa
- descricao: descrição da tarefa
- status: situação atual da tarefa
- projetoId: identificador do projeto relacionado

## 3. Relacionamentos

- Um Usuario pode possuir vários Projetos.
- Cada Projeto pertence a um Usuario.
- Um Projeto pode possuir várias Tarefas.
- Cada Tarefa pertence a um Projeto.

## 4. Diagrama de entidades

```mermaid
erDiagram
    USUARIO ||--o{ PROJETO : possui
    PROJETO ||--o{ TAREFA : contem

    USUARIO {
        int id PK
        string nome
        string email
    }

    PROJETO {
        int id PK
        string nome
        string descricao
        int usuarioId FK
    }

    TAREFA {
        int id PK
        string titulo
        string descricao
        string status
        int projetoId FK
    }