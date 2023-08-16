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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("5ª aula de Flutter"),
      ),
      body: const Text("Hello World!"),
    );
  }
}
