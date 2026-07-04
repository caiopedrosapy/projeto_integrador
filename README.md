# projeto_integrador
Este é um repositório para a entrega da avaliação de projeto integrador 3,





---
Lógica da Fila de Prioridade

A fila de prioridade foi implementada em JavaScript utilizando um vetor de objetos. Cada paciente possui um nome e um nível de prioridade, onde valores maiores representam maior urgência de atendimento.

Quando um paciente é adicionado, ele é inserido na fila e o vetor é ordenado em ordem decrescente de prioridade utilizando o método sort(). Dessa forma, o paciente mais urgente permanece sempre na primeira posição da fila.

No momento do atendimento, o método shift() remove o primeiro elemento do vetor, garantindo que o paciente com maior prioridade seja atendido antes dos demais. Após cada inserção ou remoção, a lista exibida na interface é atualizada automaticamente.
