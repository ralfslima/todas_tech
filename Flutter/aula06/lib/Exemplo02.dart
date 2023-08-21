// Importar dependência do Material
import 'package:flutter/material.dart';

// Classe - StatefulWidget
class Exemplo02 extends StatefulWidget {
  const Exemplo02({super.key});

  @override
  State<StatefulWidget> createState() {
    return EstruturaExemplo02();
  }
}

// Classe - State
class EstruturaExemplo02 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Visibility"),
      ),
      body: const Text(
        "Exemplo 02",
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
