import 'package:pp01_mvc/modelo/CalculadoraModelo.dart';

class CalculatorController {
  final CalculadoraModelo modelo = CalculadoraModelo();

  void setNumero1(double valor) {
    modelo.numero1 = valor;
  }

  void setNumero2(double valor) {
    modelo.numero2 = valor;
  }

  double soma() {
    return modelo.somar();
  }
}
