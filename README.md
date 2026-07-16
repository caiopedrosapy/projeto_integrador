# Sistema de Pré-Triagem Inteligente

##  Descrição

Este projeto foi desenvolvido com o objetivo de simular um sistema de pré-triagem para a Atenção Primária à Saúde.

O sistema utiliza um banco de dados relacional para armazenar informações de pacientes, profissionais, unidades de saúde (UBS) e exames, além de implementar uma fila de prioridade para organizar o atendimento conforme o nível de urgência de cada paciente.

---

#  Objetivos

- Modelar um banco de dados para o sistema de saúde.
- Armazenar pacientes, profissionais, UBS e exames.
- Implementar uma fila de prioridade utilizando JavaScript.
- Permitir a inserção e remoção de pacientes conforme a prioridade.
- Demonstrar a utilização de estruturas de dados na organização do atendimento.

---

#  Tecnologias Utilizadas

- HTML5
- JavaScript
- MySQL
- Git
- GitHub
- GitHub Pages

---

#  Estrutura do Projeto

```


├── README.md
├── banco.sql
├── index.html
└── script.js
```

---

#  Banco de Dados

O banco de dados foi desenvolvido em MySQL e possui as seguintes tabelas:

- Pacientes
- Profissionais
- Níveis de Acesso
- UBS
- Exames

Além disso, foram implementadas consultas para:

- Listar exames juntamente com paciente, profissional e UBS;
- Contar a quantidade de exames por paciente;
- Calcular a média do score da IA por tipo de exame.

---

#  Funcionamento da Fila de Prioridade

A fila de prioridade foi implementada utilizando um vetor (Array) em JavaScript.

Cada paciente possui:

- Nome
- Prioridade (1 a 5)

Onde:

| Prioridade | Significado |
|------------|-------------|
| 1 | Baixa |
| 2 | Média |
| 3 | Alta |
| 4 | Muito Alta |
| 5 | Emergência |

Quando um paciente é adicionado:

1. Ele é inserido no vetor.
2. O vetor é ordenado automaticamente em ordem decrescente de prioridade.
3. O paciente com maior prioridade permanece no início da fila.

Durante o atendimento:

- O primeiro paciente da fila é removido utilizando o método `shift()`.
- A lista é atualizada automaticamente na interface.

---


# 💻 Funcionalidades

- Inserção de pacientes.
- Definição do nível de prioridade.
- Organização automática da fila.
- Atendimento do paciente mais urgente.
- Atualização dinâmica da lista.

---

#  Estrutura de Dados Utilizada

Foi utilizada uma Fila de Prioridade (Priority Queue).

Para simplificar a implementação, foi utilizado um vetor JavaScript juntamente com o método `sort()`, que reorganiza automaticamente os pacientes conforme o nível de prioridade.

Após a ordenação, o método `shift()` remove sempre o paciente localizado na primeira posição da fila, garantindo que o atendimento seja realizado do maior para o menor nível de prioridade.

---

#  Demonstração

Fluxo de utilização:

1. Inserir um paciente.
2. Selecionar sua prioridade.
3. Adicionar à fila.
4. Visualizar a reorganização automática.
5. Atender o paciente mais prioritário.
6. Visualizar a nova organização da fila.

Exemplo:

Entrada:

- João (2)
- Maria (5)
- Carlos (1)
- Ana (4)

Fila organizada:

1. Maria (5)
2. Ana (4)
3. João (2)
4. Carlos (1)

Após atender:

1. Ana (4)
2. João (2)
3. Carlos (1)

---

#  Decisões Técnicas

- Utilização do MySQL para armazenamento das informações.
- Separação entre banco de dados e lógica da aplicação.
- Implementação da fila utilizando JavaScript para facilitar a visualização.
- Organização automática dos pacientes utilizando ordenação por prioridade.
- Interface simples para facilitar os testes e demonstração.

---

#  Limitações

- A fila é armazenada apenas em memória durante a execução.
- Não existe integração direta entre a fila e o banco de dados.
- Não possui autenticação de usuários.
- Não há persistência da fila após atualizar a página.
- A implementação utiliza um vetor ordenado em vez de uma Heap, sendo adequada para fins didáticos.

---

#  Auno

**Caio Fernando Pedrosa da Silva**

Projeto desenvolvido para a disciplina de Projeto Integrador 3.




---
Lógica da Fila de Prioridade

A fila de prioridade foi implementada em JavaScript utilizando um vetor de objetos. Cada paciente possui um nome e um nível de prioridade, onde valores maiores representam maior urgência de atendimento.

Quando um paciente é adicionado, ele é inserido na fila e o vetor é ordenado em ordem decrescente de prioridade utilizando o método sort(). Dessa forma, o paciente mais urgente permanece sempre na primeira posição da fila.

No momento do atendimento, o método shift() remove o primeiro elemento do vetor, garantindo que o paciente com maior prioridade seja atendido antes dos demais. Após cada inserção ou remoção, a lista exibida na interface é atualizada automaticamente.

---

# Aplicação Online
https://caiopedrosapy.github.io/projeto_integrador/
