class Calculadora {
  static void soma(int n1, int n2) {
    print("A soma é ${n1 + n2}");
  }
}

class Cliente {
  static int contador = 0;

  Cliente() {
    contador++;
    print(contador);
  }
}

void main() {
  Calculadora.soma(8, 10);

  // ignore: unused_local_variable
  Cliente c1 = new Cliente();

  // ignore: unused_local_variable
  Cliente c2 = new Cliente();

  // ignore: unused_local_variable
  Cliente c3 = new Cliente();
}
