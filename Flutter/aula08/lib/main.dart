// Comentário para não acusar erro por importar um pacote e não utilizar.
// ignore_for_file: unused_import

// Pacote Material
import 'package:flutter/material.dart';

// Exemplos
import 'package:aula08/Exemplo01.dart';
import 'package:aula08/Exemplo02.dart';

// Inicialização
void main() {
  runApp(const MyApp());
}

// StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.indigo),
      home: const Exemplo02(),
    );
  }
}
