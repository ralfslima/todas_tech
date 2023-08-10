// Importar pacote Material
import 'package:flutter/material.dart';

// Classe do tipo StatefulWidget
class Atividade03 extends StatefulWidget {
  const Atividade03({super.key});

  @override
  State<StatefulWidget> createState() {
    return EstruturaAtividade03();
  }
}

class EstruturaAtividade03 extends State {
  // Variáveis
  double? valor;
  String? texto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Atividade 03"),
      ),
      body: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 500,
                  child: Column(
                    children: [
                      TextField(
                          onChanged: (termo) {
                            setState(() {
                              valor = double.parse(termo);
                            });
                          },
                          decoration: const InputDecoration(
                              hintText: "Informe um valor em reais")),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Botão de Dólar
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  texto = "Dólar: ${valor! / 5}";
                                });
                              },
                              child: const Text(
                                "Converter para dólar",
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                            // Botão de Euro
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  texto = "Euro: ${valor! / 6}";
                                });
                              },
                              child: const Text(
                                "Converter para Euro",
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                            // Botão de Libra
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  texto = "Libra: ${valor! / 7}";
                                });
                              },
                              child: const Text(
                                "Converter para Libra",
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                          ],
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
