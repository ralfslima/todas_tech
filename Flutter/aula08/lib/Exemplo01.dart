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
    // Obter a largura da tela
    double larguraTela = MediaQuery.of(context).size.width;

    // Tipo de tamanho
    bool smartphone = false;
    bool tablet = false;
    bool desktop = false;

    // Breakpoints
    if (larguraTela >= 1000) {
      smartphone = false;
      tablet = false;
      desktop = true;
    } else if (larguraTela >= 600 && larguraTela <= 999) {
      smartphone = false;
      tablet = true;
      desktop = false;
    } else {
      smartphone = true;
      tablet = false;
      desktop = false;
    }

    // Scaffold
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo 01'),
      ),
      body: Center(
        child: Column(
          children: [
            Visibility(
              visible: smartphone,
              child: Container(
                color: Colors.yellow,
                child: const Text(
                  "Telas pequenas - Smartphone",
                  textDirection: TextDirection.ltr,
                ),
              ),
            ),
            Visibility(
              visible: tablet,
              child: Container(
                color: Colors.green,
                child: const Text(
                  "Telas médias - Tablet",
                  textDirection: TextDirection.ltr,
                ),
              ),
            ),
            Visibility(
              visible: desktop,
              child: Container(
                color: Colors.blue,
                child: const Text(
                  "Telas grandes - Desktop",
                  textDirection: TextDirection.ltr,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
