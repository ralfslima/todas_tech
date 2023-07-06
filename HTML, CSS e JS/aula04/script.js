// Vetor
let vetor = [];

// Cadastrar
function cadastrar(){
    
    // Obter o nome e a idade
    var nome = document.getElementById("nome");
    var idade = document.getElementById("idade");

    // Criar JSON (objeto)
    var pessoa = {
        "nome":nome.value,
        "idade":parseInt(idade.value)
    }

    // Cadastrar o objeto JSON no vetor
    vetor.push(pessoa);

    // Limpar os inputs
    nome.value = "";
    idade.value = "";

    // Adicionar o cursor no campo nome
    nome.focus();

    // Atualizar tabela
    listar();

}

// Listar pessoas
function listar(){

    // Obter o tbody
    var tabela = document.getElementById("tabela");

    // Limpar todas as linhas e colunas
    tabela.innerHTML = "";

    // Laço de repetição
    for(var indice=0; indice<vetor.length; indice++){

        // Criar uma linha de tabela (<tr>)
        var linha = tabela.insertRow(-1);

        // Colunas
        var colunaNome  = linha.insertCell(0);
        var colunaIdade = linha.insertCell(1);

        // Informações das colunas
        colunaNome.innerHTML  = vetor[indice].nome;
        colunaIdade.innerHTML = vetor[indice].idade;

    }


}


