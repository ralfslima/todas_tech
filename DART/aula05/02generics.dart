class Segmento<T> {
  T? produto;

  Segmento(T produto) {
    this.produto = produto;
  }

  void exibir() {
    if (this.produto is Vestuario) {
      print("Objeto do tipo Vestuário");
    }

    if (this.produto is Smartphones) {
      print("Objeto do tipo Smartphone");
    }
  }
}

class Vestuario {
  String? produto;
  String? tamanho;

  Vestuario(String produto, String tamanho) {
    this.produto = produto;
    this.tamanho = tamanho;
  }
}

class Smartphones {
  String? produto;
  String? processador;
  String? sistema;

  Smartphones(String produto, String processador, String sistema) {
    this.produto = produto;
    this.processador = processador;
    this.sistema = sistema;
  }
}

void main() {
  Vestuario v = new Vestuario("Camisa Azul", "M");
  Smartphones s = new Smartphones("iPhone 14", "M1", "iOS");

  Segmento<Vestuario> obj1 = new Segmento<Vestuario>(v);
  obj1.exibir();

  Segmento<Smartphones> obj2 = new Segmento<Smartphones>(s);
  obj2.exibir();
}
