// Importar pacote Material
import 'package:flutter/material.dart';

// Inicialização
void main() {
  runApp(const MyApp());
}

// StatelessWidget
class MyApp extends StatelessWidget {
  // Construtor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
      ),
      home: const Pagina(),
    );
  }
}

// StatefulWidget
class Pagina extends StatefulWidget {
  // Construtor
  const Pagina({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

// State
class ConteudoPagina extends State {
  // Lista de nomes
  List<String> nomes = ["Ralf", "Carla", "Bianca", "Larissa", "Pâmela"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("5ª aula de Flutter"),
      ),
      body: SizedBox(
        child: Column(
          children: [
            // Botão
            ElevatedButton(
              onPressed: () {
                setState(() {
                  nomes.add("Leonardo");
                });
              },
              child: const Text("Cadastrar"),
            ),

            // ListView
            ListView.builder(
              shrinkWrap: true,
              itemCount: nomes.length,
              itemBuilder: (BuildContext obj, int indice) {
                return Card(
                  color: Colors.green,
                  child: Text(nomes[indice]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


/*
Segundo Exemplo:

ListView(
        children: const [
          Card(
            color: Colors.green,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text("Linha 01"),
            ),
          ),
        ],
      )
*/







/*
Primeiro Exemplo: 

ListView(
  children: const [
    ListTile(
      title: Text("Linha 01"),
    ),
    ListTile(
      title: Text("Linha 02"),
    ),
  ],
)
*/