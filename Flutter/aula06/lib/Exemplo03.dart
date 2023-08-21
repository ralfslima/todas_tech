// Importar dependência do Material
import 'package:flutter/material.dart';

// Classe - StatefulWidget
class Exemplo03 extends StatefulWidget {
  const Exemplo03({super.key});

  @override
  State<StatefulWidget> createState() {
    return EstruturaExemplo03();
  }
}

// Classe - State
class EstruturaExemplo03 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AlertDialog"),
      ),
      body: const Text(
        "Exemplo 03",
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
