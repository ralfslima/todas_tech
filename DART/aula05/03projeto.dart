// Importar módulo para ler via terminal
import "dart:io";

// Modelo
class Pessoa {
  // Atributos
  String? _nome;
  int? _idade;

  // GET
  String? get nome => this._nome;
  get idade => this._idade;

  // Construtor
  Pessoa(String nome, int idade) {
    this._nome = nome;
    this._idade = idade;
  }
}

// Ações
class Acoes {
  // List
  static List<Pessoa> vetor = [];

  // Método para realizar perguntas
  static void executar() {
    // Variável para verificar o loop
    bool loop = true;

    // Laço
    do {
      // Limpar o terminal
      print(Process.runSync("cls", [], runInShell: true)
          .stdout); // Para funcionar no Windows
      print(Process.runSync("clear", [], runInShell: true)
          .stdout); // Para funcionar no MacOS ou Linux

      // Menu
      menu();

      // Perguntar se deseja continuar
      print("Deseja continuar? SIM/NÃO");
      String? continuar = stdin.readLineSync();

      // Condicional
      if (continuar == "NÃO") {
        loop = false;
      }
    } while (loop);
  }

  // Método para criar um menu
  static void menu() {
    // Perguntas
    print("1) Cadastrar uma nova pessoa");
    print("2) Selecionar todas as pessoas");
    int? opcao = int.parse(stdin.readLineSync()!);

    // Switch
    switch (opcao) {
      case 1:
        cadastrar();
        break;

      case 2:
        listar();
        break;
    }
  }

  // Método de cadastro
  static void cadastrar() {
    print("Informe seu nome");
    String nome = stdin.readLineSync()!;

    print("Informe sua idade");
    int? idade = int.parse(stdin.readLineSync()!);

    Pessoa p = new Pessoa(nome, idade);

    vetor.add(p);
  }

  // Método para listar
  static void listar() {
    vetor.forEach((p) {
      print("Nome: ${p.nome}");
      print("Idade: ${p.idade}");
    });
  }
}

// Principal
void main() {
  Acoes.executar();
}
