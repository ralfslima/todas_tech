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
  bool exibir = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Visibility"),
      ),
      body: SizedBox(
        width: 500,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  exibir = !exibir;
                });
              },
              child: const Text("Clique aqui"),
            ),
            Visibility(
              child: Text("Hello World!"),
              visible: exibir,
            )
          ],
        ),
      ),
    );
  }
}
