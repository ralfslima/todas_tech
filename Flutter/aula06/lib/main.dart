// O comentário abaixo irá remover o alerta das classes não importadas (linhas 8, 9 e 10).
// ignore_for_file: unused_import

// Importar dependência do Material
import 'package:flutter/material.dart';

// Importar classes
import 'Exemplo01.dart';
import 'Exemplo02.dart';
import 'Exemplo03.dart';

// Inicialização
void main() {
  runApp(const MyApp());
}

// StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const Exemplo03(),
    );
  }
}
