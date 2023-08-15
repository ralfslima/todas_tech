// Pacote Material
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Pagina(),
    );
  }
}

class Pagina extends StatefulWidget {
  const Pagina({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

class ConteudoPagina extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Componentes de formulário"),
        ),
        //body: const ElementoStatefulWidget());
        // body: const Column(
        //   children: [
        //     ElementoStatefulWidget1(),
        //     ElementoStatefulWidget2(),
        //     ElementoStatefulWidget3(),
        //     ElementoStatefulWidget4()
        //   ],
        body: const ElementoStatefulWidget5());
  }
}

class ElementoStatefulWidget1 extends StatefulWidget {
  const ElementoStatefulWidget1({super.key});

  @override
  State<StatefulWidget> createState() {
    return RadioButtonState();
  }
}

class ElementoStatefulWidget2 extends StatefulWidget {
  const ElementoStatefulWidget2({super.key});

  @override
  State<StatefulWidget> createState() {
    return CheckboxState();
  }
}

class ElementoStatefulWidget3 extends StatefulWidget {
  const ElementoStatefulWidget3({super.key});

  @override
  State<StatefulWidget> createState() {
    return SwitchState();
  }
}

class ElementoStatefulWidget4 extends StatefulWidget {
  const ElementoStatefulWidget4({super.key});

  @override
  State<StatefulWidget> createState() {
    return DropdownButtonState();
  }
}

class ElementoStatefulWidget5 extends StatefulWidget {
  const ElementoStatefulWidget5({super.key});

  @override
  State<StatefulWidget> createState() {
    return ExercicioState();
  }
}

class DropdownButtonState extends State {
  // Lista contendo nomes
  List<String> nomes = ["Selecione um nome", "Ralf", "Isabella", "Rebeca"];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: nomes.map(
        (n) {
          return DropdownMenuItem<String>(value: n, child: Text(n));
        },
      ).toList(),
      onChanged: (nome) {
        // ignore: avoid_print
        print("A opção escolhida é: $nome");
      },
    );
  }
}

class SwitchState extends State {
  bool ativo = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: ativo,
      activeColor: Colors.green,
      onChanged: (valor) {
        setState(() {
          ativo = valor;
        });
      },
    );
  }
}

class CheckboxState extends State {
  bool aceito = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: aceito,
      onChanged: (valor) {
        setState(() {
          aceito = valor!;
        });
      },
    );
  }
}

class RadioButtonState extends State {
  String? turno;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: const Text("Matutino"),
          value: "matutino",
          groupValue: turno,
          onChanged: (valor) {
            setState(() {
              turno = valor;
            });
          },
        ),
        RadioListTile(
          title: const Text("Vespertino"),
          value: "vespertino",
          groupValue: turno,
          onChanged: (valor) {
            setState(() {
              turno = valor;
            });
          },
        ),
        RadioListTile(
          title: const Text("Noturno"),
          value: "noturno",
          groupValue: turno,
          onChanged: (valor) {
            setState(() {
              turno = valor;
            });
          },
        )
      ],
    );
  }
}

class ExercicioState extends State {
  String? nome;
  List<String> cidades = [
    "Selecione uma cidade",
    "Goiânia",
    "São Paulo",
    "Curitiba"
  ];
  bool estuda = false;
  String? cidadeSelecionada;
  String? mensagem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: const InputDecoration(hintText: 'Nome'),
                  onChanged: (valor) {
                    setState(() {
                      nome = valor;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 200,
                  child: DropdownButton<String>(
                    value: cidades.first,
                    items: cidades.map(
                      (n) {
                        return DropdownMenuItem<String>(
                            value: n, child: Text(n));
                      },
                    ).toList(),
                    onChanged: (cidade) {
                      // ignore: avoid_print
                      cidadeSelecionada = cidade;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 200,
                  child: Row(
                    children: [
                      const Text(
                        "Você estuda?",
                        textDirection: TextDirection.ltr,
                      ),
                      Checkbox(
                        value: estuda,
                        onChanged: (valor) {
                          setState(() {
                            estuda = valor!;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  child: const Text("Continuar"),
                  onPressed: () {
                    setState(() {
                      mensagem =
                          "$nome mora em $cidadeSelecionada e ${estuda == true ? 'está estudando' : 'não está estudando.'}";
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text("${mensagem ?? ''} "),
              )
            ],
          )
        ],
      ),
    );
  }
}
