class Pessoa extends Endereco {
  String? nome;
  int? idade;

  Pessoa(String nome, int idade, String bairro, String logradouro, int numero)
      : super(bairro, logradouro, numero) {
    this.nome = nome;
    this.idade = idade;
  }
}

class Endereco {
  String? bairro;
  String? logradouro;
  int? numero;

  Endereco(String bairro, String logradouro, int numero) {
    this.bairro = bairro;
    this.logradouro = logradouro;
    this.numero = numero;
  }
}

void main() {
  // ignore: unused_local_variable
  Pessoa p = new Pessoa('Ralf', 33, 'Centro', 'Rua XV', 55);
}
