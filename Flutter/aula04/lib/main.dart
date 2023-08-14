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
      home: Pagina(),
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
        body: const ElementoStatefulWidget());
  }
}

class ElementoStatefulWidget extends StatefulWidget {
  const ElementoStatefulWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return RadioButtonState();
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
