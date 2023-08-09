// Importar pacote Material
import 'package:flutter/material.dart';

// Classe do tipo StatefulWidget
class Atividade01 extends StatefulWidget {
  const Atividade01({super.key});

  @override
  State<StatefulWidget> createState() {
    return EstruturaAtividade01();
  }
}

class EstruturaAtividade01 extends State {
  // Variáveis
  String? nome;
  String? texto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Atividade 01"),
      ),
      body: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 200,
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (termo) {
                          setState(() {
                            nome = termo;
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              texto = "Boa noite $nome";
                            });
                          },
                          child: const Text(
                            "Clique aqui",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                      Text(
                        texto ?? '',
                        textDirection: TextDirection.ltr,
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
