class Produto {
  // Atributos
  String? nome;
  double? valor;
  String? segmento;

  // Construtor
  Produto() {
    print("Construtor iniciado!");
  }

  // Construtor do segmento eletrônico
  Produto.eletronico(String nome, double valor) {
    this.nome = nome;
    this.valor = valor;
    this.segmento = "Eletrônico";
  }

  // Construtor do segmento alimentício
  Produto.alimenticio(String nome, double valor) {
    this.nome = nome;
    this.valor = valor;
    this.segmento = "Alimentício";
  }
}

void main() {
  // ignore: unused_local_variable
  Produto p1 = new Produto();

  // ignore: unused_local_variable
  Produto p2 = new Produto.eletronico("Smartphone Samsung", 4500);
}
