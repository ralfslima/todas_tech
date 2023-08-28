// Pacote Material
import 'package:flutter/material.dart';

// StatefulWidget
class Exemplo01 extends StatefulWidget {
  const Exemplo01({super.key});

  @override
  State<StatefulWidget> createState() {
    return Exemplo01Estrutura();
  }
}

class Exemplo01Estrutura extends State {
  @override
  Widget build(BuildContext context) {
    // Scaffold
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo 01'),
      ),
      body: const Text(
        "Exemplo 01",
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
