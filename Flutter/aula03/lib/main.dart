// Pacote do Material
import 'package:flutter/material.dart';

// Importar classe Atividade01
import 'Atividade01.dart';

// Inicialização
void main() {
  runApp(const MyApp());
}

// Configurações do projeto
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.light(), home: Atividade01());
  }
}
