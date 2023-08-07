// Importar pacote material
import 'package:flutter/material.dart';

// StatefulWidget - Página dinâmica
class Pagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

// Classe contendo toda a interface gráfica
class ConteudoPagina extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Utilizando Scaffold")),
      body: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.green)),
              child: const Center(
                child: Text("Quadrado 01", textDirection: TextDirection.ltr),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              child: Image.network(
                  "https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/flutter-256.png"),
            ),
            Container(
                width: 100,
                height: 100,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blue))),
            Container(
                width: 100,
                height: 100,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.purple))),
          ],
        ),
      ),
    );
  }
}
