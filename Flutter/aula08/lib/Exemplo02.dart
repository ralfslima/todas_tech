// Pacote Material
import 'package:flutter/material.dart';

// StatefulWidget
class Exemplo02 extends StatefulWidget {
  const Exemplo02({super.key});

  @override
  State<StatefulWidget> createState() {
    return Exemplo02Estrutura();
  }
}

class Exemplo02Estrutura extends State {
  @override
  Widget build(BuildContext context) {
    // Scaffold
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo 02'),
      ),
      body: const Text(
        "Exemplo 02",
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
