// Importar pacote material
import 'package:aula01/Texto.dart';

// Importar a classe Texto
import 'package:flutter/material.dart';

// Método de inicialização
void main() {
  // runApp(Texto.obterNome(nome: "Larissa"));
  // runApp(Texto.obterNomeCor(nome: "Ralf", cor: Colors.blue));
  runApp(Texto.obterNomeCorTamanhoFonte(
      nome: "Ralf", cor: Colors.blue, tamanhoFonte: 70));
}






// Método de inicialização
// 1º Exemplo
// void main() {
//   runApp(const Text(
//     "Hello World!",
//     textDirection: TextDirection.ltr,
//     style: TextStyle(fontSize: 36, color: Colors.green),
//   ));
// }
