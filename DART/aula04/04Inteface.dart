// Interface
class IntefaceCalculadora1 {
  // Método
  int soma(int n1, int n2) {
    return n1 + n2;
  }
}

class InterfaceCalculadora2 {
  // Método
  int subtracao(int n1, int n2) {
    return n1 - n2;
  }
}

// Classe
class Calculadora implements IntefaceCalculadora1, InterfaceCalculadora2 {
  @override
  int soma(int n1, int n2) {
    // TODO: implement soma
    throw UnimplementedError();
  }

  @override
  int subtracao(int n1, int n2) {
    // TODO: implement subtracao
    throw UnimplementedError();
  }
}
