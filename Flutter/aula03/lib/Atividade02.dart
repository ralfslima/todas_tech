// Importar pacote Material
import 'package:flutter/material.dart';

// Classe do tipo StatefulWidget
class Atividade02 extends StatefulWidget {
  const Atividade02({super.key});

  @override
  State<StatefulWidget> createState() {
    return EstruturaAtividade02();
  }
}

class EstruturaAtividade02 extends State {
  // Variáveis
  double? nota1, nota2;
  String? texto;
  Color? cor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Atividade 02"),
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
                            nota1 = double.parse(termo);
                          });
                        },
                        // O decoration equivale ao placeholder do HTML, dispondo um rótulo na parte interna do elemento TextField
                        decoration: const InputDecoration(
                          hintText: "1ª nota",
                        ),
                      ),
                      TextField(
                        onChanged: (termo) {
                          setState(() {
                            nota2 = double.parse(termo);
                          });
                        },
                        decoration: const InputDecoration(
                          hintText: "2ª nota",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              // O uso das exclamações fará com que sejam aceitas variáveis sem valores predefinidos
                              double media = (nota1! + nota2!) / 2;

                              if (media >= 7) {
                                texto = "Aluno(a) aprovado(a) com média $media";
                                cor = Colors.green;
                              } else if (media >= 5) {
                                texto = "Aluno(a) em exame com média $media";
                                cor = Colors.yellow;
                              } else {
                                texto =
                                    "Aluno(a) reprovado(a) com média $media";
                                cor = Colors.red;
                              }
                            });
                          },
                          child: const Text(
                            "Verificar situação",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                      Text(
                        texto ?? '',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(color: cor),
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
