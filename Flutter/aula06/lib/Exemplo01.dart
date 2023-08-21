// Importar dependência do Material
import 'package:flutter/material.dart';

// Classe - StatefulWidget
class Exemplo01 extends StatefulWidget {
  const Exemplo01({super.key});

  @override
  State<StatefulWidget> createState() {
    return EstruturaExemplo01();
  }
}

// Classe - State
class EstruturaExemplo01 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
      ),
      body: const Text(
        "Exemplo 01",
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
