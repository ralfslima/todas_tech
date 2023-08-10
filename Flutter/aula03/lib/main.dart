// Pacote do Material
import 'package:flutter/material.dart';

// Importar classe Atividade01
import 'Atividade01.dart';

// Importar classe Atividade02
import 'Atividade02.dart';

// Importar classe Atividade03
import 'Atividade03.dart';

// Importar classe Atividade04
import 'Atividade04.dart';

// Inicialização
void main() {
  runApp(const MyApp());
}

// Configurações do projeto
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.light(), home: const Atividade04());
  }
}
