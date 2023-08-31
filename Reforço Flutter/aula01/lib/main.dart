// Pacote Material
import 'package:flutter/material.dart';

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
      home: PaginaInicial(),
    );
  }
}
