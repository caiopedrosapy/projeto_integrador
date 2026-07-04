// Fila de prioridade
let fila = [];

// Adiciona um paciente à fila
function adicionarPaciente(nome, prioridade) {

    fila.push({
        nome: nome,
        prioridade: prioridade
    });

    // Ordena da maior prioridade para a menor
    fila.sort((a, b) => b.prioridade - a.prioridade);

    atualizarFila();
}

// Atualiza a lista exibida na tela
function atualizarFila() {

    const lista = document.getElementById("fila");
    lista.innerHTML = "";

    fila.forEach(paciente => {
        lista.innerHTML += `
            <li>
                ${paciente.nome} - Prioridade ${paciente.prioridade}
            </li>
        `;
    });

}

// Remove o paciente de maior prioridade
function atenderPaciente() {

    if (fila.length === 0) {
        alert("Fila vazia!");
        return;
    }

    const paciente = fila.shift();

    alert("Paciente atendido: " + paciente.nome);

    atualizarFila();

}

// Lê os dados da tela e adiciona na fila
function adicionar() {

    const nome = document.getElementById("nome").value.trim();
    const prioridade = Number(document.getElementById("prioridade").value);

    if (nome === "") {
        alert("Digite o nome do paciente.");
        return;
    }

    adicionarPaciente(nome, prioridade);

    document.getElementById("nome").value = "";
}
