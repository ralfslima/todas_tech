// Poli    -> Vários
// Morphus -> Formas
class DescontoPadrao {
  // Vale Transporte
  void valeTransporte(double salario) {
    print("Desconto do VT Padrão: ${salario * 0.06}");
  }

  // Imposto de renda
  void impostoRenda(double salario) {
    print("Desconto IR Padrão: ${salario * 0.05}");
  }
}

class Analista extends DescontoPadrao {
  @override
  void impostoRenda(double salario) {
    print("Desconto IR Analista: ${salario * 0.08}");
  }
}

void main() {
  // Primeiro objeto
  DescontoPadrao obj1 = new DescontoPadrao();
  obj1.valeTransporte(1000);
  obj1.impostoRenda(1000);

  // Segundo objeto
  Analista obj2 = new Analista();
  obj2.valeTransporte(1000);
  obj2.impostoRenda(1000);
}
