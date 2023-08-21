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
      body: SizedBox(
        width: 600,
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          children: [
            Image.network("https://picsum.photos/200/200?random=1"),
            Image.network("https://picsum.photos/200/200?random=2"),
            Image.network("https://picsum.photos/200/200?random=3"),
            Image.network("https://picsum.photos/200/200?random=4"),
            Image.network("https://picsum.photos/200/200?random=5"),
            Image.network("https://picsum.photos/200/200?random=6"),
          ],
        ),
      ),
    );
  }
}
