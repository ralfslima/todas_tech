// Pacote Material
import 'package:flutter/material.dart';

// Importar classe PaginaInicial
import 'package:aula01/PaginaInicial.dart';

// Inicialização
void main() {
  runApp(const MyApp());
}

// StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PaginaInicial(),
    );
  }
}
