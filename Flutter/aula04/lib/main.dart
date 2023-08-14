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
  // Lista contendo nomes
  List<String> nomes = ["Selecione um nome", "Ralf", "Isabella", "Rebeca"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Componentes de formulário"),
        ),
        body: DropdownButton<String>(
          value: nomes.first,
          items: nomes.map(
            (n) {
              return DropdownMenuItem<String>(value: n, child: Text(n));
            },
          ).toList(),
          onChanged: (nome) {
            print("A opção escolhida é: $nome");
          },
        ));
  }
}
