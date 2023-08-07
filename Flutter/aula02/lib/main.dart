// Importar pacotes
import 'package:aula02/Exemplo02.dart';
import 'package:flutter/material.dart';

// Método de inicialização
void main() {
  runApp(AppWidget());
}

// Especificar o tipo de layout (Material DART)
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Pagina(),
    );
  }
}
