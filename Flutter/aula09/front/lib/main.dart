// Importação do material
import 'package:flutter/material.dart';

// Importação do http
import 'package:http/http.dart' as http;

// Importação do convert
import 'dart:convert';

// Inicialização
void main() {
  runApp(const MyApp());
}

// Stateless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
        ),
      ),
      home: const Pagina(),
    );
  }
}

// StatefulWidget
class Pagina extends StatefulWidget {
  const Pagina({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

// State
class ConteudoPagina extends State {
  // Variáveis
  String? nome;
  String? cidade;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("9ª aula de Flutter"),
      ),
      body: Center(
        child: Column(
          children: [
            // FORMULÁRIO DE CADASTRO
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  // Campo de nome
                  TextField(
                    onChanged: (valor) {
                      setState(() {
                        nome = valor;
                      });
                    },
                  ),
                  // Cidade
                  TextField(
                    onChanged: (valor) {
                      setState(() {
                        cidade = valor;
                      });
                    },
                  ),
                  // Botão
                  ElevatedButton(
                    onPressed: () {
                      print("$nome - $cidade");
                    },
                    child: const Text("Cadastrar"),
                  ),
                ],
              ),
            ),

            // LISTAGEM DE PESSOAS
          ],
        ),
      ),
    );
  }
}
