// Importar pacote Material
import 'package:flutter/material.dart';

// Classe do tipo StatefulWidget
class Atividade04 extends StatefulWidget {
  const Atividade04({super.key});

  @override
  State<StatefulWidget> createState() {
    return EstruturaAtividade04();
  }
}

class EstruturaAtividade04 extends State {
  // Variáveis
  int? numero1, numero2, numero3;
  String? texto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Atividade 04"),
      ),
      body: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 400,
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (termo) {
                          setState(() {
                            numero1 = int.parse(termo);
                          });
                        },
                        // O decoration equivale ao placeholder do HTML, dispondo um rótulo na parte interna do elemento TextField
                        decoration: const InputDecoration(
                          hintText: "1º número",
                        ),
                      ),
                      TextField(
                        onChanged: (termo) {
                          setState(() {
                            numero2 = int.parse(termo);
                          });
                        },
                        decoration: const InputDecoration(
                          hintText: "2º número",
                        ),
                      ),
                      TextField(
                        onChanged: (termo) {
                          setState(() {
                            numero3 = int.parse(termo);
                          });
                        },
                        decoration: const InputDecoration(
                          hintText: "3º número",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              // Condicional
                              if (numero1! < numero2! && numero1! < numero3!) {
                                texto = "O menor número é $numero1";
                              } else if (numero2! < numero1! &&
                                  numero2! < numero3!) {
                                texto = "O menor número é $numero2";
                              } else {
                                texto = "O menor número é $numero3";
                              }
                            });
                          },
                          child: const Text(
                            "Verificar menor número",
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
